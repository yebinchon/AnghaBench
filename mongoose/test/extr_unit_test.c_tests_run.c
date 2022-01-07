
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RUN_TEST (int ) ;
 int test_alloc_vprintf ;
 int test_assemble_uri ;
 int test_base64 ;
 int test_basic_auth_helpers ;
 int test_buffer_limit ;
 int test_cgi ;
 int test_check_ip_acl ;
 int test_coap ;
 int test_connect_fail ;
 int test_connect_opts ;
 int test_connect_opts_error_string ;
 int test_connect_ws ;
 int test_connection_errors ;
 int test_dns_decode ;
 int test_dns_decode_truncated ;
 int test_dns_encode ;
 int test_dns_reply_encode ;
 int test_dns_resolve ;
 int test_dns_resolve_hosts ;
 int test_dns_resolve_timeout ;
 int test_dns_server ;
 int test_dns_uncompress ;
 int test_get_http_var ;
 int test_hexdump ;
 int test_hexdump_file ;
 int test_http ;
 int test_http_auth ;
 int test_http_chunk ;
 int test_http_chunk2 ;
 int test_http_dav ;
 int test_http_digest_auth ;
 int test_http_endpoints ;
 int test_http_errors ;
 int test_http_extra_headers ;
 int test_http_index ;
 int test_http_multipart ;
 int test_http_multipart2 ;
 int test_http_multipart_pipeline ;
 int test_http_multipart_upload ;
 int test_http_not_modified ;
 int test_http_parse_header ;
 int test_http_pipeline ;
 int test_http_range ;
 int test_http_rewrites ;
 int test_http_send_redirect ;
 int test_http_serve_file ;
 int test_http_serve_file_streaming ;
 int test_mbuf ;
 int test_mg_normalize_uri_path ;
 int test_mg_uri_to_local_path ;
 int test_mg_url_encode ;
 int test_mgr ;
 int test_modern_crypto ;
 int test_mqtt_broker ;
 int test_mqtt_client_keep_alive ;
 int test_mqtt_connack ;
 int test_mqtt_handshake ;
 int test_mqtt_match_topic_expression ;
 int test_mqtt_nullary ;
 int test_mqtt_parse_mqtt ;
 int test_mqtt_parse_mqtt_qos1 ;
 int test_mqtt_publish ;
 int test_mqtt_simple_acks ;
 int test_mqtt_suback ;
 int test_mqtt_subscribe ;
 int test_mqtt_unsubscribe ;
 int test_parse_address ;
 int test_parse_date_string ;
 int test_parse_http_message ;
 int test_parse_uri ;
 int test_resolve ;
 int test_simple ;
 int test_sntp ;
 int test_sock_addr_to_str ;
 int test_socketpair ;
 int test_socks ;
 int test_ssi ;
 int test_ssl ;
 int test_strcmp ;
 int test_thread ;
 int test_timer ;
 int test_to64 ;
 int test_udp ;
 int test_websocket ;
 int test_websocket_big ;
 int test_websocket_endpoint ;

const char *tests_run(const char *filter) {
  RUN_TEST(test_mbuf);
  RUN_TEST(test_parse_uri);
  RUN_TEST(test_assemble_uri);
  RUN_TEST(test_parse_address);
  RUN_TEST(test_mg_normalize_uri_path);
  RUN_TEST(test_mg_uri_to_local_path);
  RUN_TEST(test_mg_url_encode);
  RUN_TEST(test_check_ip_acl);
  RUN_TEST(test_connect_opts);
  RUN_TEST(test_connect_opts_error_string);
  RUN_TEST(test_to64);
  RUN_TEST(test_alloc_vprintf);
  RUN_TEST(test_socketpair);
  RUN_TEST(test_timer);

  RUN_TEST(test_simple);




  RUN_TEST(test_mgr);
  RUN_TEST(test_parse_http_message);
  RUN_TEST(test_get_http_var);
  RUN_TEST(test_http_serve_file);
  RUN_TEST(test_http_serve_file_streaming);
  RUN_TEST(test_http);
  RUN_TEST(test_http_pipeline);
  RUN_TEST(test_http_send_redirect);
  RUN_TEST(test_http_digest_auth);
  RUN_TEST(test_http_errors);
  RUN_TEST(test_http_index);
  RUN_TEST(test_http_parse_header);
  RUN_TEST(test_ssi);

  RUN_TEST(test_cgi);

  RUN_TEST(test_http_rewrites);
  RUN_TEST(test_http_dav);
  RUN_TEST(test_http_range);
  RUN_TEST(test_http_multipart);





  RUN_TEST(test_parse_date_string);
  RUN_TEST(test_websocket);
  RUN_TEST(test_websocket_endpoint);
  RUN_TEST(test_connect_ws);
  RUN_TEST(test_websocket_big);
  RUN_TEST(test_http_chunk);
  RUN_TEST(test_http_chunk2);
  RUN_TEST(test_http_not_modified);
  RUN_TEST(test_http_extra_headers);
  RUN_TEST(test_http_endpoints);
  RUN_TEST(test_mqtt_handshake);
  RUN_TEST(test_mqtt_publish);
  RUN_TEST(test_mqtt_subscribe);
  RUN_TEST(test_mqtt_unsubscribe);
  RUN_TEST(test_mqtt_connack);
  RUN_TEST(test_mqtt_suback);
  RUN_TEST(test_mqtt_simple_acks);
  RUN_TEST(test_mqtt_nullary);
  RUN_TEST(test_mqtt_parse_mqtt);
  RUN_TEST(test_mqtt_parse_mqtt_qos1);
  RUN_TEST(test_mqtt_match_topic_expression);
  RUN_TEST(test_mqtt_client_keep_alive);



  RUN_TEST(test_dns_encode);
  RUN_TEST(test_dns_uncompress);
  RUN_TEST(test_dns_decode);
  RUN_TEST(test_dns_decode_truncated);
  RUN_TEST(test_dns_reply_encode);



  RUN_TEST(test_dns_resolve);
  RUN_TEST(test_dns_resolve_timeout);

  RUN_TEST(test_dns_resolve_hosts);

  RUN_TEST(test_buffer_limit);
  RUN_TEST(test_connection_errors);
  RUN_TEST(test_connect_fail);

  RUN_TEST(test_resolve);

  RUN_TEST(test_base64);
  RUN_TEST(test_sock_addr_to_str);
  RUN_TEST(test_hexdump);
  RUN_TEST(test_hexdump_file);
  RUN_TEST(test_basic_auth_helpers);
  RUN_TEST(test_http_auth);






  RUN_TEST(test_udp);






  RUN_TEST(test_strcmp);



  return ((void*)0);
}
