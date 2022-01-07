
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nr_hugepages ;
typedef int initial_nr_hugepages ;


 int O_NONBLOCK ;
 int O_RDWR ;
 int SEEK_SET ;
 int atoi (char*) ;
 int close (int) ;
 int fprintf (int ,char*,int) ;
 int lseek (int,int ,int ) ;
 int open (char*,int) ;
 int perror (char*) ;
 int printf (char*,...) ;
 scalar_t__ read (int,char*,int) ;
 int stderr ;
 int strlen (char*) ;
 int write (int,char*,int) ;

int check_compaction(unsigned long mem_free, unsigned int hugepage_size)
{
 int fd;
 int compaction_index = 0;
 char initial_nr_hugepages[10] = {0};
 char nr_hugepages[10] = {0};



 mem_free = mem_free * 0.8;

 fd = open("/proc/sys/vm/nr_hugepages", O_RDWR | O_NONBLOCK);
 if (fd < 0) {
  perror("Failed to open /proc/sys/vm/nr_hugepages");
  return -1;
 }

 if (read(fd, initial_nr_hugepages, sizeof(initial_nr_hugepages)) <= 0) {
  perror("Failed to read from /proc/sys/vm/nr_hugepages");
  goto close_fd;
 }


 if (write(fd, "0", sizeof(char)) != sizeof(char)) {
  perror("Failed to write 0 to /proc/sys/vm/nr_hugepages\n");
  goto close_fd;
 }

 lseek(fd, 0, SEEK_SET);



 if (write(fd, "100000", (6*sizeof(char))) != (6*sizeof(char))) {
  perror("Failed to write 100000 to /proc/sys/vm/nr_hugepages\n");
  goto close_fd;
 }

 lseek(fd, 0, SEEK_SET);

 if (read(fd, nr_hugepages, sizeof(nr_hugepages)) <= 0) {
  perror("Failed to re-read from /proc/sys/vm/nr_hugepages\n");
  goto close_fd;
 }



 compaction_index = mem_free/(atoi(nr_hugepages) * hugepage_size);

 if (compaction_index > 3) {
  printf("No of huge pages allocated = %d\n",
         (atoi(nr_hugepages)));
  fprintf(stderr, "ERROR: Less that 1/%d of memory is available\n"
   "as huge pages\n", compaction_index);
  goto close_fd;
 }

 printf("No of huge pages allocated = %d\n",
        (atoi(nr_hugepages)));

 lseek(fd, 0, SEEK_SET);

 if (write(fd, initial_nr_hugepages, strlen(initial_nr_hugepages))
     != strlen(initial_nr_hugepages)) {
  perror("Failed to write value to /proc/sys/vm/nr_hugepages\n");
  goto close_fd;
 }

 close(fd);
 return 0;

 close_fd:
 close(fd);
 printf("Not OK. Compaction test failed.");
 return -1;
}
