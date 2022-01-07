
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ar934x_nfc_platform_data {int dummy; } ;
struct ar934x_nfc {TYPE_1__* parent; } ;
struct TYPE_2__ {struct ar934x_nfc_platform_data* platform_data; } ;



__attribute__((used)) static inline struct ar934x_nfc_platform_data *
ar934x_nfc_get_platform_data(struct ar934x_nfc *nfc)
{
 return nfc->parent->platform_data;
}
