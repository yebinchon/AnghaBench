
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {size_t init_data_len; int part; int has_qlog; int log_name; int route_name; int lock; int * init_data; } ;
typedef TYPE_1__ LoggerState ;


 int assert (int *) ;
 int localtime_r (int *,struct tm*) ;
 scalar_t__ malloc (size_t) ;
 int memcpy (int *,int const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;
 int pthread_mutex_init (int *,int *) ;
 int snprintf (int ,int,char*,char const*) ;
 int strftime (int ,int,char*,struct tm*) ;
 int time (int *) ;
 int umask (int ) ;

void logger_init(LoggerState *s, const char* log_name, const uint8_t* init_data, size_t init_data_len, bool has_qlog) {
  memset(s, 0, sizeof(*s));
  if (init_data) {
    s->init_data = (uint8_t*)malloc(init_data_len);
    assert(s->init_data);
    memcpy(s->init_data, init_data, init_data_len);
    s->init_data_len = init_data_len;
  }

  umask(0);

  pthread_mutex_init(&s->lock, ((void*)0));

  s->part = -1;
  s->has_qlog = has_qlog;

  time_t rawtime = time(((void*)0));
  struct tm timeinfo;
  localtime_r(&rawtime, &timeinfo);

  strftime(s->route_name, sizeof(s->route_name),
           "%Y-%m-%d--%H-%M-%S", &timeinfo);
  snprintf(s->log_name, sizeof(s->log_name), "%s", log_name);
}
