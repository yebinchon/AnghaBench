
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct found_device {char* host_device; char* guest_device; struct found_device* next; } ;


 struct found_device* detected_devices ;
 int printf (char*,char*,char*) ;

int send_devices(void) {
    int found = 0;

    struct found_device *f;
    for(f = detected_devices; f ; f = f->next) {
        found++;
        printf("%s %s\n", f->host_device, (f->guest_device)?f->guest_device:f->host_device);
    }

    return found;
}
