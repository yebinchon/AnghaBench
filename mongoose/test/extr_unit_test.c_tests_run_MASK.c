#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_alloc_vprintf ; 
 int /*<<< orphan*/  test_assemble_uri ; 
 int /*<<< orphan*/  test_base64 ; 
 int /*<<< orphan*/  test_basic_auth_helpers ; 
 int /*<<< orphan*/  test_buffer_limit ; 
 int /*<<< orphan*/  test_cgi ; 
 int /*<<< orphan*/  test_check_ip_acl ; 
 int /*<<< orphan*/  test_coap ; 
 int /*<<< orphan*/  test_connect_fail ; 
 int /*<<< orphan*/  test_connect_opts ; 
 int /*<<< orphan*/  test_connect_opts_error_string ; 
 int /*<<< orphan*/  test_connect_ws ; 
 int /*<<< orphan*/  test_connection_errors ; 
 int /*<<< orphan*/  test_dns_decode ; 
 int /*<<< orphan*/  test_dns_decode_truncated ; 
 int /*<<< orphan*/  test_dns_encode ; 
 int /*<<< orphan*/  test_dns_reply_encode ; 
 int /*<<< orphan*/  test_dns_resolve ; 
 int /*<<< orphan*/  test_dns_resolve_hosts ; 
 int /*<<< orphan*/  test_dns_resolve_timeout ; 
 int /*<<< orphan*/  test_dns_server ; 
 int /*<<< orphan*/  test_dns_uncompress ; 
 int /*<<< orphan*/  test_get_http_var ; 
 int /*<<< orphan*/  test_hexdump ; 
 int /*<<< orphan*/  test_hexdump_file ; 
 int /*<<< orphan*/  test_http ; 
 int /*<<< orphan*/  test_http_auth ; 
 int /*<<< orphan*/  test_http_chunk ; 
 int /*<<< orphan*/  test_http_chunk2 ; 
 int /*<<< orphan*/  test_http_dav ; 
 int /*<<< orphan*/  test_http_digest_auth ; 
 int /*<<< orphan*/  test_http_endpoints ; 
 int /*<<< orphan*/  test_http_errors ; 
 int /*<<< orphan*/  test_http_extra_headers ; 
 int /*<<< orphan*/  test_http_index ; 
 int /*<<< orphan*/  test_http_multipart ; 
 int /*<<< orphan*/  test_http_multipart2 ; 
 int /*<<< orphan*/  test_http_multipart_pipeline ; 
 int /*<<< orphan*/  test_http_multipart_upload ; 
 int /*<<< orphan*/  test_http_not_modified ; 
 int /*<<< orphan*/  test_http_parse_header ; 
 int /*<<< orphan*/  test_http_pipeline ; 
 int /*<<< orphan*/  test_http_range ; 
 int /*<<< orphan*/  test_http_rewrites ; 
 int /*<<< orphan*/  test_http_send_redirect ; 
 int /*<<< orphan*/  test_http_serve_file ; 
 int /*<<< orphan*/  test_http_serve_file_streaming ; 
 int /*<<< orphan*/  test_mbuf ; 
 int /*<<< orphan*/  test_mg_normalize_uri_path ; 
 int /*<<< orphan*/  test_mg_uri_to_local_path ; 
 int /*<<< orphan*/  test_mg_url_encode ; 
 int /*<<< orphan*/  test_mgr ; 
 int /*<<< orphan*/  test_modern_crypto ; 
 int /*<<< orphan*/  test_mqtt_broker ; 
 int /*<<< orphan*/  test_mqtt_client_keep_alive ; 
 int /*<<< orphan*/  test_mqtt_connack ; 
 int /*<<< orphan*/  test_mqtt_handshake ; 
 int /*<<< orphan*/  test_mqtt_match_topic_expression ; 
 int /*<<< orphan*/  test_mqtt_nullary ; 
 int /*<<< orphan*/  test_mqtt_parse_mqtt ; 
 int /*<<< orphan*/  test_mqtt_parse_mqtt_qos1 ; 
 int /*<<< orphan*/  test_mqtt_publish ; 
 int /*<<< orphan*/  test_mqtt_simple_acks ; 
 int /*<<< orphan*/  test_mqtt_suback ; 
 int /*<<< orphan*/  test_mqtt_subscribe ; 
 int /*<<< orphan*/  test_mqtt_unsubscribe ; 
 int /*<<< orphan*/  test_parse_address ; 
 int /*<<< orphan*/  test_parse_date_string ; 
 int /*<<< orphan*/  test_parse_http_message ; 
 int /*<<< orphan*/  test_parse_uri ; 
 int /*<<< orphan*/  test_resolve ; 
 int /*<<< orphan*/  test_simple ; 
 int /*<<< orphan*/  test_sntp ; 
 int /*<<< orphan*/  test_sock_addr_to_str ; 
 int /*<<< orphan*/  test_socketpair ; 
 int /*<<< orphan*/  test_socks ; 
 int /*<<< orphan*/  test_ssi ; 
 int /*<<< orphan*/  test_ssl ; 
 int /*<<< orphan*/  test_strcmp ; 
 int /*<<< orphan*/  test_thread ; 
 int /*<<< orphan*/  test_timer ; 
 int /*<<< orphan*/  test_to64 ; 
 int /*<<< orphan*/  test_udp ; 
 int /*<<< orphan*/  test_websocket ; 
 int /*<<< orphan*/  test_websocket_big ; 
 int /*<<< orphan*/  test_websocket_endpoint ; 

const char *FUNC1(const char *filter) {
  FUNC0(test_mbuf);
  FUNC0(test_parse_uri);
  FUNC0(test_assemble_uri);
  FUNC0(test_parse_address);
  FUNC0(test_mg_normalize_uri_path);
  FUNC0(test_mg_uri_to_local_path);
  FUNC0(test_mg_url_encode);
  FUNC0(test_check_ip_acl);
  FUNC0(test_connect_opts);
  FUNC0(test_connect_opts_error_string);
  FUNC0(test_to64);
  FUNC0(test_alloc_vprintf);
  FUNC0(test_socketpair);
  FUNC0(test_timer);
#ifdef __linux__
  FUNC0(test_simple);
#endif
#if MG_ENABLE_THREADS
  RUN_TEST(test_thread);
#endif
  FUNC0(test_mgr);
  FUNC0(test_parse_http_message);
  FUNC0(test_get_http_var);
  FUNC0(test_http_serve_file);
  FUNC0(test_http_serve_file_streaming);
  FUNC0(test_http);
  FUNC0(test_http_pipeline);
  FUNC0(test_http_send_redirect);
  FUNC0(test_http_digest_auth);
  FUNC0(test_http_errors);
  FUNC0(test_http_index);
  FUNC0(test_http_parse_header);
  FUNC0(test_ssi);
#ifndef NO_CGI_TEST
  FUNC0(test_cgi);
#endif
  FUNC0(test_http_rewrites);
  FUNC0(test_http_dav);
  FUNC0(test_http_range);
  FUNC0(test_http_multipart);
#if MG_ENABLE_HTTP_STREAMING_MULTIPART
  RUN_TEST(test_http_multipart2);
  RUN_TEST(test_http_multipart_pipeline);
  RUN_TEST(test_http_multipart_upload);
#endif
  FUNC0(test_parse_date_string);
  FUNC0(test_websocket);
  FUNC0(test_websocket_endpoint);
  FUNC0(test_connect_ws);
  FUNC0(test_websocket_big);
  FUNC0(test_http_chunk);
  FUNC0(test_http_chunk2);
  FUNC0(test_http_not_modified);
  FUNC0(test_http_extra_headers);
  FUNC0(test_http_endpoints);
  FUNC0(test_mqtt_handshake);
  FUNC0(test_mqtt_publish);
  FUNC0(test_mqtt_subscribe);
  FUNC0(test_mqtt_unsubscribe);
  FUNC0(test_mqtt_connack);
  FUNC0(test_mqtt_suback);
  FUNC0(test_mqtt_simple_acks);
  FUNC0(test_mqtt_nullary);
  FUNC0(test_mqtt_parse_mqtt);
  FUNC0(test_mqtt_parse_mqtt_qos1);
  FUNC0(test_mqtt_match_topic_expression);
  FUNC0(test_mqtt_client_keep_alive);
#if MG_ENABLE_MQTT_BROKER
  RUN_TEST(test_mqtt_broker);
#endif
  FUNC0(test_dns_encode);
  FUNC0(test_dns_uncompress);
  FUNC0(test_dns_decode);
  FUNC0(test_dns_decode_truncated);
  FUNC0(test_dns_reply_encode);
#if MG_ENABLE_DNS_SERVER
  RUN_TEST(test_dns_server);
#endif
  FUNC0(test_dns_resolve);
  FUNC0(test_dns_resolve_timeout);
#ifndef NO_RESOLVE_HOSTS_TEST
  FUNC0(test_dns_resolve_hosts);
#endif
  FUNC0(test_buffer_limit);
  FUNC0(test_connection_errors);
  FUNC0(test_connect_fail);
#ifndef NO_DNS_TEST
  FUNC0(test_resolve);
#endif
  FUNC0(test_base64);
  FUNC0(test_sock_addr_to_str);
  FUNC0(test_hexdump);
  FUNC0(test_hexdump_file);
  FUNC0(test_basic_auth_helpers);
  FUNC0(test_http_auth);
#if MG_ENABLE_SSL
  RUN_TEST(test_ssl);
#ifdef OPENSSL_VERSION_NUMBER
  RUN_TEST(test_modern_crypto);
#endif
#endif
  FUNC0(test_udp);
#if MG_ENABLE_COAP
  RUN_TEST(test_coap);
#endif
#if MG_ENABLE_SNTP
  RUN_TEST(test_sntp);
#endif
  FUNC0(test_strcmp);
#if MG_ENABLE_SOCKS
  RUN_TEST(test_socks);
#endif
  return NULL;
}