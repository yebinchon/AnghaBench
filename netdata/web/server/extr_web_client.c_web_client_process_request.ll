; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_process_request.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_7__, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__*, i64, i8* }
%struct.TYPE_8__ = type { i64, i64, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@localhost = common dso_local global i32 0, align 4
@CT_TEXT_PLAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@HTTP_RESP_OK = common dso_local global i8* null, align 8
@NETDATA_WEB_REQUEST_MAX_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"too big request\00", align 1
@D_WEB_CLIENT_ACCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%llu: Received request is too big (%zu bytes).\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Received request is too big  (%zu bytes).\0D\0A\00", align 1
@HTTP_RESP_BAD_REQUEST = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [66 x i8] c"%llu: URL parsing failed (malformed URL). Cannot understand '%s'.\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"URL not valid. I don't understand you...\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%llu: Cannot understand '%s'.\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"I don't understand you...\0D\0A\00", align 1
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"%llu: STREAM done.\00", align 1
@.str.9 = private unnamed_addr constant [79 x i8] c"%llu: Done preparing the OPTIONS response. Sending data (%zu bytes) to client.\00", align 1
@.str.10 = private unnamed_addr constant [71 x i8] c"%llu: Done preparing the response. Sending data (%zu bytes) to client.\00", align 1
@.str.11 = private unnamed_addr constant [85 x i8] c"%llu: Done preparing the response. Will be sending data file of %zu bytes to client.\00", align 1
@.str.12 = private unnamed_addr constant [89 x i8] c"%llu: Done preparing the response. Will be sending an unknown amount of bytes to client.\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"%llu: Unknown client mode %u.\00", align 1
@CT_TEXT_HTML = common dso_local global i32 0, align 4
@HTTP_RESP_MOVED_PERM = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @web_client_process_request(%struct.web_client* %0) #0 {
  %2 = alloca %struct.web_client*, align 8
  store %struct.web_client* %0, %struct.web_client** %2, align 8
  %3 = load %struct.web_client*, %struct.web_client** %2, align 8
  %4 = getelementptr inbounds %struct.web_client, %struct.web_client* %3, i32 0, i32 6
  %5 = call i32 @now_realtime_timeval(%struct.TYPE_7__* %4)
  %6 = load %struct.web_client*, %struct.web_client** %2, align 8
  %7 = call i32 @http_request_validate(%struct.web_client* %6)
  switch i32 %7, label %222 [
    i32 133, label %8
    i32 136, label %123
    i32 135, label %170
    i32 134, label %196
  ]

8:                                                ; preds = %1
  %9 = load %struct.web_client*, %struct.web_client** %2, align 8
  %10 = getelementptr inbounds %struct.web_client, %struct.web_client* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %122 [
    i32 128, label %12
    i32 129, label %33
    i32 131, label %83
    i32 130, label %83
  ]

12:                                               ; preds = %8
  %13 = load %struct.web_client*, %struct.web_client** %2, align 8
  %14 = call i32 @web_client_can_access_stream(%struct.web_client* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.web_client*, %struct.web_client** %2, align 8
  %22 = call i32 @web_client_permission_denied(%struct.web_client* %21)
  br label %333

23:                                               ; preds = %12
  %24 = load i32, i32* @localhost, align 4
  %25 = load %struct.web_client*, %struct.web_client** %2, align 8
  %26 = load %struct.web_client*, %struct.web_client** %2, align 8
  %27 = getelementptr inbounds %struct.web_client, %struct.web_client* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @rrdpush_receiver_thread_spawn(i32 %24, %struct.web_client* %25, i32 %28)
  %30 = load %struct.web_client*, %struct.web_client** %2, align 8
  %31 = getelementptr inbounds %struct.web_client, %struct.web_client* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i8* %29, i8** %32, align 8
  br label %333

33:                                               ; preds = %8
  %34 = load %struct.web_client*, %struct.web_client** %2, align 8
  %35 = call i32 @web_client_can_access_dashboard(%struct.web_client* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %54, label %37

37:                                               ; preds = %33
  %38 = load %struct.web_client*, %struct.web_client** %2, align 8
  %39 = call i32 @web_client_can_access_registry(%struct.web_client* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %37
  %42 = load %struct.web_client*, %struct.web_client** %2, align 8
  %43 = call i32 @web_client_can_access_badges(%struct.web_client* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load %struct.web_client*, %struct.web_client** %2, align 8
  %47 = call i32 @web_client_can_access_mgmt(%struct.web_client* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load %struct.web_client*, %struct.web_client** %2, align 8
  %51 = call i32 @web_client_can_access_netdataconf(%struct.web_client* %50)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %49, %45, %41, %37, %33
  %55 = phi i1 [ false, %45 ], [ false, %41 ], [ false, %37 ], [ false, %33 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.web_client*, %struct.web_client** %2, align 8
  %61 = call i32 @web_client_permission_denied(%struct.web_client* %60)
  br label %122

62:                                               ; preds = %54
  %63 = load i32, i32* @CT_TEXT_PLAIN, align 4
  %64 = load %struct.web_client*, %struct.web_client** %2, align 8
  %65 = getelementptr inbounds %struct.web_client, %struct.web_client* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  store i32 %63, i32* %68, align 4
  %69 = load %struct.web_client*, %struct.web_client** %2, align 8
  %70 = getelementptr inbounds %struct.web_client, %struct.web_client* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = call i32 @buffer_flush(%struct.TYPE_8__* %72)
  %74 = load %struct.web_client*, %struct.web_client** %2, align 8
  %75 = getelementptr inbounds %struct.web_client, %struct.web_client* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = call i32 @buffer_strcat(%struct.TYPE_8__* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %79 = load i8*, i8** @HTTP_RESP_OK, align 8
  %80 = load %struct.web_client*, %struct.web_client** %2, align 8
  %81 = getelementptr inbounds %struct.web_client, %struct.web_client* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  store i8* %79, i8** %82, align 8
  br label %122

83:                                               ; preds = %8, %8
  %84 = load %struct.web_client*, %struct.web_client** %2, align 8
  %85 = call i32 @web_client_can_access_dashboard(%struct.web_client* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %104, label %87

87:                                               ; preds = %83
  %88 = load %struct.web_client*, %struct.web_client** %2, align 8
  %89 = call i32 @web_client_can_access_registry(%struct.web_client* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %104, label %91

91:                                               ; preds = %87
  %92 = load %struct.web_client*, %struct.web_client** %2, align 8
  %93 = call i32 @web_client_can_access_badges(%struct.web_client* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %91
  %96 = load %struct.web_client*, %struct.web_client** %2, align 8
  %97 = call i32 @web_client_can_access_mgmt(%struct.web_client* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load %struct.web_client*, %struct.web_client** %2, align 8
  %101 = call i32 @web_client_can_access_netdataconf(%struct.web_client* %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br label %104

104:                                              ; preds = %99, %95, %91, %87, %83
  %105 = phi i1 [ false, %95 ], [ false, %91 ], [ false, %87 ], [ false, %83 ], [ %103, %99 ]
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.web_client*, %struct.web_client** %2, align 8
  %111 = call i32 @web_client_permission_denied(%struct.web_client* %110)
  br label %122

112:                                              ; preds = %104
  %113 = load i32, i32* @localhost, align 4
  %114 = load %struct.web_client*, %struct.web_client** %2, align 8
  %115 = load %struct.web_client*, %struct.web_client** %2, align 8
  %116 = getelementptr inbounds %struct.web_client, %struct.web_client* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @web_client_process_url(i32 %113, %struct.web_client* %114, i32 %117)
  %119 = load %struct.web_client*, %struct.web_client** %2, align 8
  %120 = getelementptr inbounds %struct.web_client, %struct.web_client* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  store i8* %118, i8** %121, align 8
  br label %122

122:                                              ; preds = %8, %112, %109, %62, %59
  br label %222

123:                                              ; preds = %1
  %124 = load %struct.web_client*, %struct.web_client** %2, align 8
  %125 = getelementptr inbounds %struct.web_client, %struct.web_client* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @NETDATA_WEB_REQUEST_MAX_SIZE, align 8
  %131 = icmp sgt i64 %129, %130
  br i1 %131, label %132, label %168

132:                                              ; preds = %123
  %133 = load %struct.web_client*, %struct.web_client** %2, align 8
  %134 = getelementptr inbounds %struct.web_client, %struct.web_client* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @strcpy(i32 %135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %137 = load i32, i32* @D_WEB_CLIENT_ACCESS, align 4
  %138 = load %struct.web_client*, %struct.web_client** %2, align 8
  %139 = getelementptr inbounds %struct.web_client, %struct.web_client* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.web_client*, %struct.web_client** %2, align 8
  %142 = getelementptr inbounds %struct.web_client, %struct.web_client* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i32, i8*, i32, ...) @debug(i32 %137, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %140, i64 %146)
  %148 = load %struct.web_client*, %struct.web_client** %2, align 8
  %149 = getelementptr inbounds %struct.web_client, %struct.web_client* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = call i32 @buffer_flush(%struct.TYPE_8__* %151)
  %153 = load %struct.web_client*, %struct.web_client** %2, align 8
  %154 = getelementptr inbounds %struct.web_client, %struct.web_client* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = load %struct.web_client*, %struct.web_client** %2, align 8
  %158 = getelementptr inbounds %struct.web_client, %struct.web_client* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @buffer_sprintf(%struct.TYPE_8__* %156, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i64 %162)
  %164 = load i8*, i8** @HTTP_RESP_BAD_REQUEST, align 8
  %165 = load %struct.web_client*, %struct.web_client** %2, align 8
  %166 = getelementptr inbounds %struct.web_client, %struct.web_client* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  store i8* %164, i8** %167, align 8
  br label %169

168:                                              ; preds = %123
  br label %333

169:                                              ; preds = %132
  br label %222

170:                                              ; preds = %1
  %171 = load i32, i32* @D_WEB_CLIENT_ACCESS, align 4
  %172 = load %struct.web_client*, %struct.web_client** %2, align 8
  %173 = getelementptr inbounds %struct.web_client, %struct.web_client* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.web_client*, %struct.web_client** %2, align 8
  %176 = getelementptr inbounds %struct.web_client, %struct.web_client* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32, i8*, i32, ...) @debug(i32 %171, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %174, i32 %180)
  %182 = load %struct.web_client*, %struct.web_client** %2, align 8
  %183 = getelementptr inbounds %struct.web_client, %struct.web_client* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = call i32 @buffer_flush(%struct.TYPE_8__* %185)
  %187 = load %struct.web_client*, %struct.web_client** %2, align 8
  %188 = getelementptr inbounds %struct.web_client, %struct.web_client* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = call i32 @buffer_strcat(%struct.TYPE_8__* %190, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %192 = load i8*, i8** @HTTP_RESP_BAD_REQUEST, align 8
  %193 = load %struct.web_client*, %struct.web_client** %2, align 8
  %194 = getelementptr inbounds %struct.web_client, %struct.web_client* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 3
  store i8* %192, i8** %195, align 8
  br label %222

196:                                              ; preds = %1
  %197 = load i32, i32* @D_WEB_CLIENT_ACCESS, align 4
  %198 = load %struct.web_client*, %struct.web_client** %2, align 8
  %199 = getelementptr inbounds %struct.web_client, %struct.web_client* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.web_client*, %struct.web_client** %2, align 8
  %202 = getelementptr inbounds %struct.web_client, %struct.web_client* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i32 (i32, i8*, i32, ...) @debug(i32 %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %200, i32 %206)
  %208 = load %struct.web_client*, %struct.web_client** %2, align 8
  %209 = getelementptr inbounds %struct.web_client, %struct.web_client* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = call i32 @buffer_flush(%struct.TYPE_8__* %211)
  %213 = load %struct.web_client*, %struct.web_client** %2, align 8
  %214 = getelementptr inbounds %struct.web_client, %struct.web_client* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = call i32 @buffer_strcat(%struct.TYPE_8__* %216, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %218 = load i8*, i8** @HTTP_RESP_BAD_REQUEST, align 8
  %219 = load %struct.web_client*, %struct.web_client** %2, align 8
  %220 = getelementptr inbounds %struct.web_client, %struct.web_client* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 3
  store i8* %218, i8** %221, align 8
  br label %222

222:                                              ; preds = %1, %196, %170, %169, %122
  %223 = load %struct.web_client*, %struct.web_client** %2, align 8
  %224 = getelementptr inbounds %struct.web_client, %struct.web_client* %223, i32 0, i32 3
  %225 = call i32 @now_realtime_timeval(%struct.TYPE_7__* %224)
  %226 = load %struct.web_client*, %struct.web_client** %2, align 8
  %227 = getelementptr inbounds %struct.web_client, %struct.web_client* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 2
  store i64 0, i64* %228, align 8
  %229 = load %struct.web_client*, %struct.web_client** %2, align 8
  %230 = getelementptr inbounds %struct.web_client, %struct.web_client* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  %236 = xor i1 %235, true
  %237 = zext i1 %236 to i32
  %238 = call i64 @unlikely(i32 %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %222
  %241 = load %struct.web_client*, %struct.web_client** %2, align 8
  %242 = getelementptr inbounds %struct.web_client, %struct.web_client* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.web_client*, %struct.web_client** %2, align 8
  %246 = getelementptr inbounds %struct.web_client, %struct.web_client* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  store i64 %244, i64* %249, align 8
  br label %250

250:                                              ; preds = %240, %222
  %251 = load %struct.web_client*, %struct.web_client** %2, align 8
  %252 = call i32 @web_client_send_http_header(%struct.web_client* %251)
  %253 = load %struct.web_client*, %struct.web_client** %2, align 8
  %254 = getelementptr inbounds %struct.web_client, %struct.web_client* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %250
  %261 = load %struct.web_client*, %struct.web_client** %2, align 8
  %262 = call i32 @web_client_enable_wait_send(%struct.web_client* %261)
  br label %266

263:                                              ; preds = %250
  %264 = load %struct.web_client*, %struct.web_client** %2, align 8
  %265 = call i32 @web_client_disable_wait_send(%struct.web_client* %264)
  br label %266

266:                                              ; preds = %263, %260
  %267 = load %struct.web_client*, %struct.web_client** %2, align 8
  %268 = getelementptr inbounds %struct.web_client, %struct.web_client* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  switch i32 %269, label %325 [
    i32 128, label %270
    i32 129, label %276
    i32 130, label %288
    i32 131, label %300
  ]

270:                                              ; preds = %266
  %271 = load i32, i32* @D_WEB_CLIENT, align 4
  %272 = load %struct.web_client*, %struct.web_client** %2, align 8
  %273 = getelementptr inbounds %struct.web_client, %struct.web_client* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = call i32 (i32, i8*, i32, ...) @debug(i32 %271, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %274)
  br label %333

276:                                              ; preds = %266
  %277 = load i32, i32* @D_WEB_CLIENT, align 4
  %278 = load %struct.web_client*, %struct.web_client** %2, align 8
  %279 = getelementptr inbounds %struct.web_client, %struct.web_client* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.web_client*, %struct.web_client** %2, align 8
  %282 = getelementptr inbounds %struct.web_client, %struct.web_client* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = call i32 (i32, i8*, i32, ...) @debug(i32 %277, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.9, i64 0, i64 0), i32 %280, i64 %286)
  br label %333

288:                                              ; preds = %266
  %289 = load i32, i32* @D_WEB_CLIENT, align 4
  %290 = load %struct.web_client*, %struct.web_client** %2, align 8
  %291 = getelementptr inbounds %struct.web_client, %struct.web_client* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.web_client*, %struct.web_client** %2, align 8
  %294 = getelementptr inbounds %struct.web_client, %struct.web_client* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = call i32 (i32, i8*, i32, ...) @debug(i32 %289, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.10, i64 0, i64 0), i32 %292, i64 %298)
  br label %333

300:                                              ; preds = %266
  %301 = load %struct.web_client*, %struct.web_client** %2, align 8
  %302 = getelementptr inbounds %struct.web_client, %struct.web_client* %301, i32 0, i32 2
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %300
  %307 = load i32, i32* @D_WEB_CLIENT, align 4
  %308 = load %struct.web_client*, %struct.web_client** %2, align 8
  %309 = getelementptr inbounds %struct.web_client, %struct.web_client* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.web_client*, %struct.web_client** %2, align 8
  %312 = getelementptr inbounds %struct.web_client, %struct.web_client* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i32 (i32, i8*, i32, ...) @debug(i32 %307, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.11, i64 0, i64 0), i32 %310, i32 %314)
  %316 = load %struct.web_client*, %struct.web_client** %2, align 8
  %317 = call i32 @web_client_enable_wait_receive(%struct.web_client* %316)
  br label %324

318:                                              ; preds = %300
  %319 = load i32, i32* @D_WEB_CLIENT, align 4
  %320 = load %struct.web_client*, %struct.web_client** %2, align 8
  %321 = getelementptr inbounds %struct.web_client, %struct.web_client* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = call i32 (i32, i8*, i32, ...) @debug(i32 %319, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.12, i64 0, i64 0), i32 %322)
  br label %324

324:                                              ; preds = %318, %306
  br label %333

325:                                              ; preds = %266
  %326 = load %struct.web_client*, %struct.web_client** %2, align 8
  %327 = getelementptr inbounds %struct.web_client, %struct.web_client* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.web_client*, %struct.web_client** %2, align 8
  %330 = getelementptr inbounds %struct.web_client, %struct.web_client* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %328, i32 %331)
  br label %333

333:                                              ; preds = %20, %23, %168, %325, %324, %288, %276, %270
  ret void
}

declare dso_local i32 @now_realtime_timeval(%struct.TYPE_7__*) #1

declare dso_local i32 @http_request_validate(%struct.web_client*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @web_client_can_access_stream(%struct.web_client*) #1

declare dso_local i32 @web_client_permission_denied(%struct.web_client*) #1

declare dso_local i8* @rrdpush_receiver_thread_spawn(i32, %struct.web_client*, i32) #1

declare dso_local i32 @web_client_can_access_dashboard(%struct.web_client*) #1

declare dso_local i32 @web_client_can_access_registry(%struct.web_client*) #1

declare dso_local i32 @web_client_can_access_badges(%struct.web_client*) #1

declare dso_local i32 @web_client_can_access_mgmt(%struct.web_client*) #1

declare dso_local i32 @web_client_can_access_netdataconf(%struct.web_client*) #1

declare dso_local i32 @buffer_flush(%struct.TYPE_8__*) #1

declare dso_local i32 @buffer_strcat(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @web_client_process_url(i32, %struct.web_client*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i32 @buffer_sprintf(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @web_client_send_http_header(%struct.web_client*) #1

declare dso_local i32 @web_client_enable_wait_send(%struct.web_client*) #1

declare dso_local i32 @web_client_disable_wait_send(%struct.web_client*) #1

declare dso_local i32 @web_client_enable_wait_receive(%struct.web_client*) #1

declare dso_local i32 @fatal(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
