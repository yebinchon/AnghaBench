
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int zend_object_handlers ;
struct TYPE_19__ {void* create_object; } ;
typedef TYPE_1__ zend_class_entry ;
struct TYPE_22__ {int write_property; int read_property; void* get_gc; int get_property_ptr_ptr; int get_properties; void* clone_obj; int free_obj; void* offset; void* compare; int has_property; int get_debug_info; void* get_properties_for; } ;
struct TYPE_21__ {int get_iterator; } ;
struct TYPE_20__ {int interface_gets_implemented; } ;


 int DATE_FORMAT_COOKIE ;
 int DATE_FORMAT_ISO8601 ;
 int DATE_FORMAT_RFC1036 ;
 int DATE_FORMAT_RFC1123 ;
 int DATE_FORMAT_RFC2822 ;
 int DATE_FORMAT_RFC3339 ;
 int DATE_FORMAT_RFC3339_EXTENDED ;
 int DATE_FORMAT_RFC7231 ;
 int DATE_FORMAT_RFC822 ;
 int DATE_FORMAT_RFC850 ;
 int INIT_CLASS_ENTRY (TYPE_1__,char*,int ) ;
 int PHP_DATE_PERIOD_EXCLUDE_START_DATE ;
 int PHP_DATE_TIMEZONE_GROUP_AFRICA ;
 int PHP_DATE_TIMEZONE_GROUP_ALL ;
 int PHP_DATE_TIMEZONE_GROUP_ALL_W_BC ;
 int PHP_DATE_TIMEZONE_GROUP_AMERICA ;
 int PHP_DATE_TIMEZONE_GROUP_ANTARCTICA ;
 int PHP_DATE_TIMEZONE_GROUP_ARCTIC ;
 int PHP_DATE_TIMEZONE_GROUP_ASIA ;
 int PHP_DATE_TIMEZONE_GROUP_ATLANTIC ;
 int PHP_DATE_TIMEZONE_GROUP_AUSTRALIA ;
 int PHP_DATE_TIMEZONE_GROUP_EUROPE ;
 int PHP_DATE_TIMEZONE_GROUP_INDIAN ;
 int PHP_DATE_TIMEZONE_GROUP_PACIFIC ;
 int PHP_DATE_TIMEZONE_GROUP_UTC ;
 int PHP_DATE_TIMEZONE_PER_COUNTRY ;
 int REGISTER_DATE_INTERFACE_CONST_STRING (char*,int ) ;
 int REGISTER_PERIOD_CLASS_CONST_STRING (char*,int ) ;
 int REGISTER_TIMEZONE_CLASS_CONST_STRING (char*,int ) ;
 void* XtOffsetOf (int ,int ) ;
 TYPE_5__* date_ce_date ;
 TYPE_5__* date_ce_immutable ;
 TYPE_2__* date_ce_interface ;
 void* date_ce_interval ;
 TYPE_5__* date_ce_period ;
 void* date_ce_timezone ;
 int date_funcs_date ;
 int date_funcs_immutable ;
 int date_funcs_interface ;
 int date_funcs_interval ;
 int date_funcs_period ;
 int date_funcs_timezone ;
 void* date_interval_compare_objects ;
 int date_interval_get_property_ptr_ptr ;
 int date_interval_has_property ;
 int date_interval_read_property ;
 int date_interval_write_property ;
 void* date_object_clone_date ;
 void* date_object_clone_interval ;
 void* date_object_clone_period ;
 void* date_object_clone_timezone ;
 void* date_object_compare_date ;
 int date_object_free_storage_date ;
 int date_object_free_storage_interval ;
 int date_object_free_storage_period ;
 int date_object_free_storage_timezone ;
 int date_object_get_debug_info_timezone ;
 void* date_object_get_gc ;
 void* date_object_get_gc_interval ;
 void* date_object_get_gc_period ;
 void* date_object_get_gc_timezone ;
 void* date_object_get_properties_for ;
 void* date_object_get_properties_for_timezone ;
 int date_object_get_properties_interval ;
 int date_object_get_properties_period ;
 TYPE_8__ date_object_handlers_date ;
 TYPE_8__ date_object_handlers_immutable ;
 TYPE_8__ date_object_handlers_interval ;
 TYPE_8__ date_object_handlers_period ;
 TYPE_8__ date_object_handlers_timezone ;
 void* date_object_new_date ;
 void* date_object_new_interval ;
 void* date_object_new_period ;
 void* date_object_new_timezone ;
 int date_object_period_get_iterator ;
 int date_period_get_property_ptr_ptr ;
 int date_period_read_property ;
 int date_period_write_property ;
 int implement_date_interface_handler ;
 int memcpy (TYPE_8__*,int *,int) ;
 int php_date_obj ;
 int php_interval_obj ;
 int php_period_obj ;
 int php_timezone_obj ;
 int std ;
 int std_object_handlers ;
 TYPE_2__* zend_ce_traversable ;
 int zend_class_implements (TYPE_5__*,int,TYPE_2__*) ;
 void* zend_register_internal_class_ex (TYPE_1__*,int *) ;
 TYPE_2__* zend_register_internal_interface (TYPE_1__*) ;

__attribute__((used)) static void date_register_classes(void)
{
 zend_class_entry ce_date, ce_immutable, ce_timezone, ce_interval, ce_period, ce_interface;

 INIT_CLASS_ENTRY(ce_interface, "DateTimeInterface", date_funcs_interface);
 date_ce_interface = zend_register_internal_interface(&ce_interface);
 date_ce_interface->interface_gets_implemented = implement_date_interface_handler;




 zend_declare_class_constant_stringl(date_ce_interface, "ATOM", sizeof("ATOM")-1, DATE_FORMAT_RFC3339, sizeof(DATE_FORMAT_RFC3339)-1);;
 zend_declare_class_constant_stringl(date_ce_interface, "COOKIE", sizeof("COOKIE")-1, DATE_FORMAT_COOKIE, sizeof(DATE_FORMAT_COOKIE)-1);;
 zend_declare_class_constant_stringl(date_ce_interface, "ISO8601", sizeof("ISO8601")-1, DATE_FORMAT_ISO8601, sizeof(DATE_FORMAT_ISO8601)-1);;
 zend_declare_class_constant_stringl(date_ce_interface, "RFC822", sizeof("RFC822")-1, DATE_FORMAT_RFC822, sizeof(DATE_FORMAT_RFC822)-1);;
 zend_declare_class_constant_stringl(date_ce_interface, "RFC850", sizeof("RFC850")-1, DATE_FORMAT_RFC850, sizeof(DATE_FORMAT_RFC850)-1);;
 zend_declare_class_constant_stringl(date_ce_interface, "RFC1036", sizeof("RFC1036")-1, DATE_FORMAT_RFC1036, sizeof(DATE_FORMAT_RFC1036)-1);;
 zend_declare_class_constant_stringl(date_ce_interface, "RFC1123", sizeof("RFC1123")-1, DATE_FORMAT_RFC1123, sizeof(DATE_FORMAT_RFC1123)-1);;
 zend_declare_class_constant_stringl(date_ce_interface, "RFC7231", sizeof("RFC7231")-1, DATE_FORMAT_RFC7231, sizeof(DATE_FORMAT_RFC7231)-1);;
 zend_declare_class_constant_stringl(date_ce_interface, "RFC2822", sizeof("RFC2822")-1, DATE_FORMAT_RFC2822, sizeof(DATE_FORMAT_RFC2822)-1);;
 zend_declare_class_constant_stringl(date_ce_interface, "RFC3339", sizeof("RFC3339")-1, DATE_FORMAT_RFC3339, sizeof(DATE_FORMAT_RFC3339)-1);;
 zend_declare_class_constant_stringl(date_ce_interface, "RFC3339_EXTENDED", sizeof("RFC3339_EXTENDED")-1, DATE_FORMAT_RFC3339_EXTENDED, sizeof(DATE_FORMAT_RFC3339_EXTENDED)-1);;
 zend_declare_class_constant_stringl(date_ce_interface, "RSS", sizeof("RSS")-1, DATE_FORMAT_RFC1123, sizeof(DATE_FORMAT_RFC1123)-1);;
 zend_declare_class_constant_stringl(date_ce_interface, "W3C", sizeof("W3C")-1, DATE_FORMAT_RFC3339, sizeof(DATE_FORMAT_RFC3339)-1);;

 INIT_CLASS_ENTRY(ce_date, "DateTime", date_funcs_date);
 ce_date.create_object = date_object_new_date;
 date_ce_date = zend_register_internal_class_ex(&ce_date, ((void*)0));
 memcpy(&date_object_handlers_date, &std_object_handlers, sizeof(zend_object_handlers));
 date_object_handlers_date.offset = XtOffsetOf(php_date_obj, std);
 date_object_handlers_date.free_obj = date_object_free_storage_date;
 date_object_handlers_date.clone_obj = date_object_clone_date;
 date_object_handlers_date.compare = date_object_compare_date;
 date_object_handlers_date.get_properties_for = date_object_get_properties_for;
 date_object_handlers_date.get_gc = date_object_get_gc;
 zend_class_implements(date_ce_date, 1, date_ce_interface);

 INIT_CLASS_ENTRY(ce_immutable, "DateTimeImmutable", date_funcs_immutable);
 ce_immutable.create_object = date_object_new_date;
 date_ce_immutable = zend_register_internal_class_ex(&ce_immutable, ((void*)0));
 memcpy(&date_object_handlers_immutable, &std_object_handlers, sizeof(zend_object_handlers));
 date_object_handlers_immutable.clone_obj = date_object_clone_date;
 date_object_handlers_immutable.compare = date_object_compare_date;
 date_object_handlers_immutable.get_properties_for = date_object_get_properties_for;
 date_object_handlers_immutable.get_gc = date_object_get_gc;
 zend_class_implements(date_ce_immutable, 1, date_ce_interface);

 INIT_CLASS_ENTRY(ce_timezone, "DateTimeZone", date_funcs_timezone);
 ce_timezone.create_object = date_object_new_timezone;
 date_ce_timezone = zend_register_internal_class_ex(&ce_timezone, ((void*)0));
 memcpy(&date_object_handlers_timezone, &std_object_handlers, sizeof(zend_object_handlers));
 date_object_handlers_timezone.offset = XtOffsetOf(php_timezone_obj, std);
 date_object_handlers_timezone.free_obj = date_object_free_storage_timezone;
 date_object_handlers_timezone.clone_obj = date_object_clone_timezone;
 date_object_handlers_timezone.get_properties_for = date_object_get_properties_for_timezone;
 date_object_handlers_timezone.get_gc = date_object_get_gc_timezone;
 date_object_handlers_timezone.get_debug_info = date_object_get_debug_info_timezone;




 zend_declare_class_constant_long(date_ce_timezone, "AFRICA", sizeof("AFRICA")-1, PHP_DATE_TIMEZONE_GROUP_AFRICA);;
 zend_declare_class_constant_long(date_ce_timezone, "AMERICA", sizeof("AMERICA")-1, PHP_DATE_TIMEZONE_GROUP_AMERICA);;
 zend_declare_class_constant_long(date_ce_timezone, "ANTARCTICA", sizeof("ANTARCTICA")-1, PHP_DATE_TIMEZONE_GROUP_ANTARCTICA);;
 zend_declare_class_constant_long(date_ce_timezone, "ARCTIC", sizeof("ARCTIC")-1, PHP_DATE_TIMEZONE_GROUP_ARCTIC);;
 zend_declare_class_constant_long(date_ce_timezone, "ASIA", sizeof("ASIA")-1, PHP_DATE_TIMEZONE_GROUP_ASIA);;
 zend_declare_class_constant_long(date_ce_timezone, "ATLANTIC", sizeof("ATLANTIC")-1, PHP_DATE_TIMEZONE_GROUP_ATLANTIC);;
 zend_declare_class_constant_long(date_ce_timezone, "AUSTRALIA", sizeof("AUSTRALIA")-1, PHP_DATE_TIMEZONE_GROUP_AUSTRALIA);;
 zend_declare_class_constant_long(date_ce_timezone, "EUROPE", sizeof("EUROPE")-1, PHP_DATE_TIMEZONE_GROUP_EUROPE);;
 zend_declare_class_constant_long(date_ce_timezone, "INDIAN", sizeof("INDIAN")-1, PHP_DATE_TIMEZONE_GROUP_INDIAN);;
 zend_declare_class_constant_long(date_ce_timezone, "PACIFIC", sizeof("PACIFIC")-1, PHP_DATE_TIMEZONE_GROUP_PACIFIC);;
 zend_declare_class_constant_long(date_ce_timezone, "UTC", sizeof("UTC")-1, PHP_DATE_TIMEZONE_GROUP_UTC);;
 zend_declare_class_constant_long(date_ce_timezone, "ALL", sizeof("ALL")-1, PHP_DATE_TIMEZONE_GROUP_ALL);;
 zend_declare_class_constant_long(date_ce_timezone, "ALL_WITH_BC", sizeof("ALL_WITH_BC")-1, PHP_DATE_TIMEZONE_GROUP_ALL_W_BC);;
 zend_declare_class_constant_long(date_ce_timezone, "PER_COUNTRY", sizeof("PER_COUNTRY")-1, PHP_DATE_TIMEZONE_PER_COUNTRY);;

 INIT_CLASS_ENTRY(ce_interval, "DateInterval", date_funcs_interval);
 ce_interval.create_object = date_object_new_interval;
 date_ce_interval = zend_register_internal_class_ex(&ce_interval, ((void*)0));
 memcpy(&date_object_handlers_interval, &std_object_handlers, sizeof(zend_object_handlers));
 date_object_handlers_interval.offset = XtOffsetOf(php_interval_obj, std);
 date_object_handlers_interval.free_obj = date_object_free_storage_interval;
 date_object_handlers_interval.clone_obj = date_object_clone_interval;
 date_object_handlers_interval.has_property = date_interval_has_property;
 date_object_handlers_interval.read_property = date_interval_read_property;
 date_object_handlers_interval.write_property = date_interval_write_property;
 date_object_handlers_interval.get_properties = date_object_get_properties_interval;
 date_object_handlers_interval.get_property_ptr_ptr = date_interval_get_property_ptr_ptr;
 date_object_handlers_interval.get_gc = date_object_get_gc_interval;
 date_object_handlers_interval.compare = date_interval_compare_objects;

 INIT_CLASS_ENTRY(ce_period, "DatePeriod", date_funcs_period);
 ce_period.create_object = date_object_new_period;
 date_ce_period = zend_register_internal_class_ex(&ce_period, ((void*)0));
 date_ce_period->get_iterator = date_object_period_get_iterator;
 zend_class_implements(date_ce_period, 1, zend_ce_traversable);
 memcpy(&date_object_handlers_period, &std_object_handlers, sizeof(zend_object_handlers));
 date_object_handlers_period.offset = XtOffsetOf(php_period_obj, std);
 date_object_handlers_period.free_obj = date_object_free_storage_period;
 date_object_handlers_period.clone_obj = date_object_clone_period;
 date_object_handlers_period.get_properties = date_object_get_properties_period;
 date_object_handlers_period.get_property_ptr_ptr = date_period_get_property_ptr_ptr;
 date_object_handlers_period.get_gc = date_object_get_gc_period;
 date_object_handlers_period.read_property = date_period_read_property;
 date_object_handlers_period.write_property = date_period_write_property;




 zend_declare_class_constant_long(date_ce_period, "EXCLUDE_START_DATE", sizeof("EXCLUDE_START_DATE")-1, PHP_DATE_PERIOD_EXCLUDE_START_DATE);;
}
