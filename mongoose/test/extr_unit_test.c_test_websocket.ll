; ModuleID = '/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_websocket.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/extr_unit_test.c_test_websocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { i32 }
%struct.mg_connection = type { %struct.mbuf* }
%struct.mbuf = type { i64, i32 }
%struct.mg_str = type { i8*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"127.0.0.1:7778\00", align 1
@cb_ws_server = common dso_local global i32 0, align 4
@s_ws_client1_connected = common dso_local global i64 0, align 8
@cb_ws_client1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"/ws\00", align 1
@c_int_ne = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@WEBSOCKET_OP_TEXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"81:[81:{hi}]\00", align 1
@WEBSOCKET_DONT_FIN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"hall\00", align 1
@WEBSOCKET_OP_CONTINUE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"loo\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"81:[81:{hall--loo}]\00", align 1
@WEBSOCKET_OP_PING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"myping\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"CONTROL:8a:[myping]81:[CONTROL:89:{myping}]\00", align 1
@c_int_eq = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"0123\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ghi\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"CONTROL:8a:[0123]81:[CONTROL:89:{0123}]81:[81:{abcdefghi}]\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"CONTROL:88:[non-continuation in the middle of a fragmented message]\00", align 1
@WEBSOCKET_OP_CLOSE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"bye\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @test_websocket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @test_websocket() #0 {
  %1 = alloca %struct.mg_mgr, align 4
  %2 = alloca %struct.mg_connection*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mbuf, align 8
  %5 = alloca [2 x %struct.mg_str], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %8 = call i32 @mbuf_init(%struct.mbuf* %4, i32 100)
  %9 = call i32 @mg_mgr_init(%struct.mg_mgr* %1, i32* null)
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @cb_ws_server, align 4
  %12 = call %struct.mg_connection* @mg_bind(%struct.mg_mgr* %1, i8* %10, i32 %11)
  store %struct.mg_connection* %12, %struct.mg_connection** %2, align 8
  %13 = icmp ne %struct.mg_connection* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %17 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %16)
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  store i64 0, i64* %18, align 8
  store i64 0, i64* @s_ws_client1_connected, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @cb_ws_client1, align 4
  %21 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %19, i32 %20)
  store %struct.mg_connection* %21, %struct.mg_connection** %2, align 8
  %22 = icmp ne %struct.mg_connection* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %26 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %25)
  %27 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %28 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %27, i32 0, i32 0
  store %struct.mbuf* %4, %struct.mbuf** %28, align 8
  %29 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %30 = call i32 @mg_send_websocket_handshake(%struct.mg_connection* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %31 = load i32, i32* @c_int_ne, align 4
  %32 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %31, i64* @s_ws_client1_connected, i8* inttoptr (i64 1 to i8*))
  %33 = getelementptr inbounds [2 x %struct.mg_str], [2 x %struct.mg_str]* %5, i64 0, i64 0
  %34 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %34, align 16
  %35 = getelementptr inbounds [2 x %struct.mg_str], [2 x %struct.mg_str]* %5, i64 0, i64 0
  %36 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds [2 x %struct.mg_str], [2 x %struct.mg_str]* %5, i64 0, i64 1
  %38 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %38, align 16
  %39 = getelementptr inbounds [2 x %struct.mg_str], [2 x %struct.mg_str]* %5, i64 0, i64 1
  %40 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  %41 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %42 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %43 = getelementptr inbounds [2 x %struct.mg_str], [2 x %struct.mg_str]* %5, i64 0, i64 0
  %44 = call i32 @mg_send_websocket_framev(%struct.mg_connection* %41, i32 %42, %struct.mg_str* %43, i32 2)
  %45 = load i32, i32* @c_int_ne, align 4
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  %47 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %45, i64* %46, i8* null)
  %48 = call i32 @mbuf_append(%struct.mbuf* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ASSERT_STREQ(i32 %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %52 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  store i64 0, i64* %52, align 8
  store i64 0, i64* @s_ws_client1_connected, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* @cb_ws_client1, align 4
  %55 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %53, i32 %54)
  store %struct.mg_connection* %55, %struct.mg_connection** %2, align 8
  %56 = icmp ne %struct.mg_connection* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %60 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %59)
  %61 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %62 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %61, i32 0, i32 0
  store %struct.mbuf* %4, %struct.mbuf** %62, align 8
  %63 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %64 = call i32 @mg_send_websocket_handshake(%struct.mg_connection* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %65 = load i32, i32* @c_int_ne, align 4
  %66 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %65, i64* @s_ws_client1_connected, i8* inttoptr (i64 1 to i8*))
  %67 = load i64, i64* @s_ws_client1_connected, align 8
  %68 = call i32 @ASSERT_EQ(i64 %67, i32 1)
  %69 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %70 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %71 = load i32, i32* @WEBSOCKET_DONT_FIN, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %69, i32 %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %74 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %75 = load i32, i32* @WEBSOCKET_OP_CONTINUE, align 4
  %76 = load i32, i32* @WEBSOCKET_DONT_FIN, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %74, i32 %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  %79 = load i32, i32* @c_int_ne, align 4
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  %81 = call i32 @poll_until(%struct.mg_mgr* %1, i32 0, i32 %79, i64* %80, i8* null)
  %82 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @ASSERT_EQ(i64 %83, i32 0)
  %85 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %86 = load i32, i32* @WEBSOCKET_OP_CONTINUE, align 4
  %87 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %85, i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %88 = load i32, i32* @c_int_ne, align 4
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  %90 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %88, i64* %89, i8* null)
  %91 = call i32 @mbuf_append(%struct.mbuf* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %92 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @ASSERT_STREQ(i32 %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  %95 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  store i64 0, i64* %95, align 8
  store i64 0, i64* @s_ws_client1_connected, align 8
  %96 = load i8*, i8** %3, align 8
  %97 = load i32, i32* @cb_ws_client1, align 4
  %98 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %96, i32 %97)
  store %struct.mg_connection* %98, %struct.mg_connection** %2, align 8
  %99 = icmp ne %struct.mg_connection* %98, null
  %100 = zext i1 %99 to i32
  %101 = call i32 @ASSERT(i32 %100)
  %102 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %103 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %102)
  %104 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %105 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %104, i32 0, i32 0
  store %struct.mbuf* %4, %struct.mbuf** %105, align 8
  %106 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %107 = call i32 @mg_send_websocket_handshake(%struct.mg_connection* %106, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %108 = load i32, i32* @c_int_ne, align 4
  %109 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %108, i64* @s_ws_client1_connected, i8* inttoptr (i64 1 to i8*))
  %110 = load i64, i64* @s_ws_client1_connected, align 8
  %111 = call i32 @ASSERT_EQ(i64 %110, i32 1)
  %112 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %113 = load i32, i32* @WEBSOCKET_OP_PING, align 4
  %114 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %112, i32 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 6)
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i8** %6, align 8
  %115 = load i32, i32* @c_int_eq, align 4
  %116 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  %117 = load i8*, i8** %6, align 8
  %118 = call i64 @strlen(i8* %117)
  %119 = inttoptr i64 %118 to i8*
  %120 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %115, i64* %116, i8* %119)
  %121 = call i32 @mbuf_append(%struct.mbuf* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %122 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @ASSERT_STREQ(i32 %123, i8* %124)
  %126 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  store i64 0, i64* %126, align 8
  store i64 0, i64* @s_ws_client1_connected, align 8
  %127 = load i8*, i8** %3, align 8
  %128 = load i32, i32* @cb_ws_client1, align 4
  %129 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %127, i32 %128)
  store %struct.mg_connection* %129, %struct.mg_connection** %2, align 8
  %130 = icmp ne %struct.mg_connection* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i32 @ASSERT(i32 %131)
  %133 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %134 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %133)
  %135 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %136 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %135, i32 0, i32 0
  store %struct.mbuf* %4, %struct.mbuf** %136, align 8
  %137 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %138 = call i32 @mg_send_websocket_handshake(%struct.mg_connection* %137, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %139 = load i32, i32* @c_int_ne, align 4
  %140 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %139, i64* @s_ws_client1_connected, i8* inttoptr (i64 1 to i8*))
  %141 = load i64, i64* @s_ws_client1_connected, align 8
  %142 = call i32 @ASSERT_EQ(i64 %141, i32 1)
  %143 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %144 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %145 = load i32, i32* @WEBSOCKET_DONT_FIN, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %143, i32 %146, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 3)
  %148 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %149 = load i32, i32* @WEBSOCKET_OP_CONTINUE, align 4
  %150 = load i32, i32* @WEBSOCKET_DONT_FIN, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %148, i32 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3)
  %153 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %154 = load i32, i32* @WEBSOCKET_OP_PING, align 4
  %155 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %153, i32 %154, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 4)
  %156 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %157 = load i32, i32* @WEBSOCKET_OP_CONTINUE, align 4
  %158 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %156, i32 %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 3)
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0), i8** %7, align 8
  %159 = load i32, i32* @c_int_eq, align 4
  %160 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  %161 = load i8*, i8** %7, align 8
  %162 = call i64 @strlen(i8* %161)
  %163 = inttoptr i64 %162 to i8*
  %164 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %159, i64* %160, i8* %163)
  %165 = call i32 @mbuf_append(%struct.mbuf* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %166 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i8*, i8** %7, align 8
  %169 = call i32 @ASSERT_STREQ(i32 %167, i8* %168)
  %170 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  store i64 0, i64* %170, align 8
  store i64 0, i64* @s_ws_client1_connected, align 8
  %171 = load i8*, i8** %3, align 8
  %172 = load i32, i32* @cb_ws_client1, align 4
  %173 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %171, i32 %172)
  store %struct.mg_connection* %173, %struct.mg_connection** %2, align 8
  %174 = icmp ne %struct.mg_connection* %173, null
  %175 = zext i1 %174 to i32
  %176 = call i32 @ASSERT(i32 %175)
  %177 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %178 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %177)
  %179 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %180 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %179, i32 0, i32 0
  store %struct.mbuf* %4, %struct.mbuf** %180, align 8
  %181 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %182 = call i32 @mg_send_websocket_handshake(%struct.mg_connection* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %183 = load i32, i32* @c_int_ne, align 4
  %184 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %183, i64* @s_ws_client1_connected, i8* inttoptr (i64 1 to i8*))
  %185 = load i64, i64* @s_ws_client1_connected, align 8
  %186 = call i32 @ASSERT_EQ(i64 %185, i32 1)
  %187 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %188 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %189 = load i32, i32* @WEBSOCKET_DONT_FIN, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %187, i32 %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 3)
  %192 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %193 = load i32, i32* @WEBSOCKET_OP_CONTINUE, align 4
  %194 = load i32, i32* @WEBSOCKET_DONT_FIN, align 4
  %195 = or i32 %193, %194
  %196 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %192, i32 %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3)
  %197 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %198 = load i32, i32* @WEBSOCKET_OP_TEXT, align 4
  %199 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %197, i32 %198, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 3)
  %200 = load i32, i32* @c_int_ne, align 4
  %201 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %200, i64* @s_ws_client1_connected, i8* null)
  %202 = load i64, i64* @s_ws_client1_connected, align 8
  %203 = call i32 @ASSERT_EQ(i64 %202, i32 0)
  %204 = call i32 @mbuf_append(%struct.mbuf* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %205 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @ASSERT_STREQ(i32 %206, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0))
  %208 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %4, i32 0, i32 0
  store i64 0, i64* %208, align 8
  store i64 0, i64* @s_ws_client1_connected, align 8
  %209 = load i8*, i8** %3, align 8
  %210 = load i32, i32* @cb_ws_client1, align 4
  %211 = call %struct.mg_connection* @mg_connect(%struct.mg_mgr* %1, i8* %209, i32 %210)
  store %struct.mg_connection* %211, %struct.mg_connection** %2, align 8
  %212 = icmp ne %struct.mg_connection* %211, null
  %213 = zext i1 %212 to i32
  %214 = call i32 @ASSERT(i32 %213)
  %215 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %216 = call i32 @mg_set_protocol_http_websocket(%struct.mg_connection* %215)
  %217 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %218 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %217, i32 0, i32 0
  store %struct.mbuf* %4, %struct.mbuf** %218, align 8
  %219 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %220 = call i32 @mg_send_websocket_handshake(%struct.mg_connection* %219, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %221 = load i32, i32* @c_int_ne, align 4
  %222 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %221, i64* @s_ws_client1_connected, i8* inttoptr (i64 1 to i8*))
  %223 = load i64, i64* @s_ws_client1_connected, align 8
  %224 = call i32 @ASSERT_EQ(i64 %223, i32 1)
  %225 = load %struct.mg_connection*, %struct.mg_connection** %2, align 8
  %226 = load i32, i32* @WEBSOCKET_OP_CLOSE, align 4
  %227 = call i32 @mg_send_websocket_frame(%struct.mg_connection* %225, i32 %226, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 3)
  %228 = load i32, i32* @c_int_ne, align 4
  %229 = call i32 @poll_until(%struct.mg_mgr* %1, i32 1, i32 %228, i64* @s_ws_client1_connected, i8* null)
  %230 = load i64, i64* @s_ws_client1_connected, align 8
  %231 = call i32 @ASSERT_EQ(i64 %230, i32 0)
  %232 = call i32 @mg_mgr_free(%struct.mg_mgr* %1)
  %233 = call i32 @mbuf_free(%struct.mbuf* %4)
  ret i8* null
}

declare dso_local i32 @mbuf_init(%struct.mbuf*, i32) #1

declare dso_local i32 @mg_mgr_init(%struct.mg_mgr*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.mg_connection* @mg_bind(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_set_protocol_http_websocket(%struct.mg_connection*) #1

declare dso_local %struct.mg_connection* @mg_connect(%struct.mg_mgr*, i8*, i32) #1

declare dso_local i32 @mg_send_websocket_handshake(%struct.mg_connection*, i8*, i32*) #1

declare dso_local i32 @poll_until(%struct.mg_mgr*, i32, i32, i64*, i8*) #1

declare dso_local i32 @mg_send_websocket_framev(%struct.mg_connection*, i32, %struct.mg_str*, i32) #1

declare dso_local i32 @mbuf_append(%struct.mbuf*, i8*, i32) #1

declare dso_local i32 @ASSERT_STREQ(i32, i8*) #1

declare dso_local i32 @ASSERT_EQ(i64, i32) #1

declare dso_local i32 @mg_send_websocket_frame(%struct.mg_connection*, i32, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mg_mgr_free(%struct.mg_mgr*) #1

declare dso_local i32 @mbuf_free(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
