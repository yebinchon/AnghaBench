
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;
 int mg_mk_str (char*) ;
 int mg_mqtt_vmatch_topic_expression (char*,int ) ;

__attribute__((used)) static const char *test_mqtt_match_topic_expression(void) {
  ASSERT(mg_mqtt_vmatch_topic_expression("foo", mg_mk_str("foo")));
  ASSERT(mg_mqtt_vmatch_topic_expression("/foo", mg_mk_str("/foo")));
  ASSERT(mg_mqtt_vmatch_topic_expression("+/foo", mg_mk_str("/foo")));
  ASSERT(!mg_mqtt_vmatch_topic_expression("foo", mg_mk_str("foobar")));
  ASSERT(mg_mqtt_vmatch_topic_expression("foo", mg_mk_str("foo/")));
  ASSERT(mg_mqtt_vmatch_topic_expression("foo", mg_mk_str("foo//")));
  ASSERT(!mg_mqtt_vmatch_topic_expression("foo", mg_mk_str("foo/bar")));
  ASSERT(!mg_mqtt_vmatch_topic_expression("foo", mg_mk_str("foo/+")));
  ASSERT(mg_mqtt_vmatch_topic_expression("foo/bar", mg_mk_str("foo/bar")));
  ASSERT(mg_mqtt_vmatch_topic_expression("foo/+", mg_mk_str("foo/bar")));
  ASSERT(mg_mqtt_vmatch_topic_expression("+/bar", mg_mk_str("foo/bar")));
  ASSERT(mg_mqtt_vmatch_topic_expression("+/+", mg_mk_str("foo/bar")));
  ASSERT(mg_mqtt_vmatch_topic_expression("foo/+/bar", mg_mk_str("foo//bar")));
  ASSERT(!mg_mqtt_vmatch_topic_expression("foo/+/+", mg_mk_str("foo/bar")));
  ASSERT(mg_mqtt_vmatch_topic_expression("foo/+/#", mg_mk_str("foo/bar")));
  ASSERT(mg_mqtt_vmatch_topic_expression("+/foo/bar", mg_mk_str("/foo/bar")));

  ASSERT(!mg_mqtt_vmatch_topic_expression("", mg_mk_str("")));
  ASSERT(mg_mqtt_vmatch_topic_expression("/", mg_mk_str("")));
  ASSERT(mg_mqtt_vmatch_topic_expression("/", mg_mk_str("/")));

  ASSERT(mg_mqtt_vmatch_topic_expression("#", mg_mk_str("")));
  ASSERT(mg_mqtt_vmatch_topic_expression("#", mg_mk_str("foo")));
  ASSERT(mg_mqtt_vmatch_topic_expression("#", mg_mk_str("foo/bar")));
  ASSERT(mg_mqtt_vmatch_topic_expression("foo/#", mg_mk_str("foo")));
  ASSERT(mg_mqtt_vmatch_topic_expression("foo/#", mg_mk_str("foo/")));
  ASSERT(mg_mqtt_vmatch_topic_expression("foo/#", mg_mk_str("foo/bar")));
  ASSERT(mg_mqtt_vmatch_topic_expression("foo/#", mg_mk_str("foo/bar/baz")));
  ASSERT(!mg_mqtt_vmatch_topic_expression("#/foo", mg_mk_str("foo")));
  ASSERT(!mg_mqtt_vmatch_topic_expression("#/foo", mg_mk_str("bar/foo")));

  return ((void*)0);
}
