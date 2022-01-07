
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _test_data_tls {int fd; int cfd; } ;
struct __test_metadata {int dummy; } ;
typedef int rb ;
typedef scalar_t__ pid_t ;


 int ASSERT_EQ (int,size_t const) ;
 int ASSERT_GE (int,int ) ;
 int ASSERT_NE (scalar_t__,int) ;
 int EXPECT_EQ (int,int ) ;
 int EXPECT_GE (int,int ) ;
 int O_RDWR ;
 int O_TMPFILE ;
 int SEEK_SET ;
 scalar_t__ fork () ;
 int lseek (int,int ,int ) ;
 int memset (char*,int,size_t const) ;
 int open (char*,int,int) ;
 int recv (int ,char*,int,int ) ;
 int send (int ,char*,size_t const,int ) ;
 int sendfile (int ,int,int *,size_t const) ;
 int wait (int*) ;
 int write (int,char*,size_t const) ;

__attribute__((used)) static void
test_mutliproc(struct __test_metadata *_metadata, struct _test_data_tls *self,
        bool sendpg, unsigned int n_readers, unsigned int n_writers)
{
 const unsigned int n_children = n_readers + n_writers;
 const size_t data = 6 * 1000 * 1000;
 const size_t file_sz = data / 100;
 size_t read_bias, write_bias;
 int i, fd, child_id;
 char buf[file_sz];
 pid_t pid;


 ASSERT_EQ(!(n_readers % n_writers) || !(n_writers % n_readers), 1);
 read_bias = n_writers / n_readers ?: 1;
 write_bias = n_readers / n_writers ?: 1;


 fd = open("/tmp/", O_TMPFILE | O_RDWR, 0600);
 ASSERT_GE(fd, 0);

 memset(buf, 0xac, file_sz);
 ASSERT_EQ(write(fd, buf, file_sz), file_sz);


 for (child_id = 0; child_id < n_children; child_id++) {
  pid = fork();
  ASSERT_NE(pid, -1);
  if (!pid)
   break;
 }


 if (pid) {
  for (i = 0; i < n_children; i++) {
   int status;

   wait(&status);
   EXPECT_EQ(status, 0);
  }

  return;
 }


 if (child_id < n_readers) {
  size_t left = data * read_bias;
  char rb[8001];

  while (left) {
   int res;

   res = recv(self->cfd, rb,
       left > sizeof(rb) ? sizeof(rb) : left, 0);

   EXPECT_GE(res, 0);
   left -= res;
  }
 } else {
  size_t left = data * write_bias;

  while (left) {
   int res;

   ASSERT_EQ(lseek(fd, 0, SEEK_SET), 0);
   if (sendpg)
    res = sendfile(self->fd, fd, ((void*)0),
            left > file_sz ? file_sz : left);
   else
    res = send(self->fd, buf,
        left > file_sz ? file_sz : left, 0);

   EXPECT_GE(res, 0);
   left -= res;
  }
 }
}
