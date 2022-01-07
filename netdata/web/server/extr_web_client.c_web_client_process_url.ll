; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_process_url.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_process_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }

@web_client_process_url.hash_api = internal global i64 0, align 8
@web_client_process_url.hash_netdata_conf = internal global i64 0, align 8
@web_client_process_url.hash_host = internal global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"api\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"netdata.conf\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"/?\00", align 1
@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"%llu: Processing command '%s'.\00", align 1
@D_WEB_CLIENT_ACCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"%llu: API request ...\00", align 1
@web_client_api_request = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"%llu: host switch request ...\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%llu: generating netdata.conf ...\00", align 1
@CT_TEXT_PLAIN = common dso_local global i8* null, align 8
@HTTP_RESP_OK = common dso_local global i32 0, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@CT_TEXT_HTML = common dso_local global i8* null, align 8
@D_RRD_STATS = common dso_local global i32 0, align 4
@HTTP_RESP_BAD_REQUEST = common dso_local global i32 0, align 4
@HTTP_RESP_NOT_FOUND = common dso_local global i32 0, align 4
@RRDSET_FLAG_DEBUG = common dso_local global i32 0, align 4
@debug_flags = common dso_local global i32 0, align 4
@netdata_exit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.web_client*, i8*)* @web_client_process_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @web_client_process_url(i32* %0, %struct.web_client* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.web_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.web_client* %1, %struct.web_client** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i64, i64* @web_client_process_url.hash_api, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = call i64 @simple_hash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i64 %19, i64* @web_client_process_url.hash_api, align 8
  %20 = call i64 @simple_hash(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i64 %20, i64* @web_client_process_url.hash_netdata_conf, align 8
  %21 = call i64 @simple_hash(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i64 %21, i64* @web_client_process_url.hash_host, align 8
  br label %22

22:                                               ; preds = %18, %3
  %23 = call i8* @mystrsep(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %141

36:                                               ; preds = %31
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @simple_hash(i8* %37)
  store i64 %38, i64* %9, align 8
  %39 = load i32, i32* @D_WEB_CLIENT, align 4
  %40 = load %struct.web_client*, %struct.web_client** %6, align 8
  %41 = getelementptr inbounds %struct.web_client, %struct.web_client* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 (i32, i8*, i32, ...) @debug(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %42, i8* %43)
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @web_client_process_url.hash_api, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i8*, i8** %8, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br label %52

52:                                               ; preds = %48, %36
  %53 = phi i1 [ false, %36 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i32, i32* @D_WEB_CLIENT_ACCESS, align 4
  %59 = load %struct.web_client*, %struct.web_client** %6, align 8
  %60 = getelementptr inbounds %struct.web_client, %struct.web_client* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, i32, ...) @debug(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load %struct.web_client*, %struct.web_client** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* @web_client_api_request, align 4
  %67 = call i32 @check_host_and_call(i32* %63, %struct.web_client* %64, i8* %65, i32 %66)
  store i32 %67, i32* %4, align 4
  br label %173

68:                                               ; preds = %52
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* @web_client_process_url.hash_host, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8*, i8** %8, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i1 [ false, %68 ], [ %75, %72 ]
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load i32, i32* @D_WEB_CLIENT_ACCESS, align 4
  %83 = load %struct.web_client*, %struct.web_client** %6, align 8
  %84 = getelementptr inbounds %struct.web_client, %struct.web_client* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i32, ...) @debug(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %85)
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.web_client*, %struct.web_client** %6, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @web_client_switch_host(i32* %87, %struct.web_client* %88, i8* %89)
  store i32 %90, i32* %4, align 4
  br label %173

91:                                               ; preds = %76
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @web_client_process_url.hash_netdata_conf, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @strcmp(i8* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi i1 [ false, %91 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %138

104:                                              ; preds = %99
  %105 = load %struct.web_client*, %struct.web_client** %6, align 8
  %106 = call i32 @web_client_can_access_netdataconf(%struct.web_client* %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i64 @unlikely(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load %struct.web_client*, %struct.web_client** %6, align 8
  %114 = call i32 @web_client_permission_denied(%struct.web_client* %113)
  store i32 %114, i32* %4, align 4
  br label %173

115:                                              ; preds = %104
  %116 = load i32, i32* @D_WEB_CLIENT_ACCESS, align 4
  %117 = load %struct.web_client*, %struct.web_client** %6, align 8
  %118 = getelementptr inbounds %struct.web_client, %struct.web_client* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, i32, ...) @debug(i32 %116, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  %121 = load i8*, i8** @CT_TEXT_PLAIN, align 8
  %122 = load %struct.web_client*, %struct.web_client** %6, align 8
  %123 = getelementptr inbounds %struct.web_client, %struct.web_client* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  store i8* %121, i8** %126, align 8
  %127 = load %struct.web_client*, %struct.web_client** %6, align 8
  %128 = getelementptr inbounds %struct.web_client, %struct.web_client* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = call i32 @buffer_flush(%struct.TYPE_9__* %130)
  %132 = load %struct.web_client*, %struct.web_client** %6, align 8
  %133 = getelementptr inbounds %struct.web_client, %struct.web_client* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = call i32 @config_generate(%struct.TYPE_9__* %135, i32 0)
  %137 = load i32, i32* @HTTP_RESP_OK, align 4
  store i32 %137, i32* %4, align 4
  br label %173

138:                                              ; preds = %99
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  br label %141

141:                                              ; preds = %140, %31
  %142 = load i32, i32* @FILENAME_MAX, align 4
  %143 = add nsw i32 %142, 1
  %144 = zext i32 %143 to i64
  %145 = call i8* @llvm.stacksave()
  store i8* %145, i8** %10, align 8
  %146 = alloca i8, i64 %144, align 16
  store i64 %144, i64* %11, align 8
  store i8* %146, i8** %7, align 8
  %147 = load %struct.web_client*, %struct.web_client** %6, align 8
  %148 = getelementptr inbounds %struct.web_client, %struct.web_client* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @FILENAME_MAX, align 4
  %151 = call i32 @strncpyz(i8* %146, i32 %149, i32 %150)
  %152 = call i8* @mystrsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i8* %152, i8** %8, align 8
  %153 = load %struct.web_client*, %struct.web_client** %6, align 8
  %154 = getelementptr inbounds %struct.web_client, %struct.web_client* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = call i32 @buffer_flush(%struct.TYPE_9__* %156)
  %158 = load %struct.web_client*, %struct.web_client** %6, align 8
  %159 = load i8*, i8** %8, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %141
  %162 = load i8*, i8** %8, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i8*, i8** %8, align 8
  br label %169

168:                                              ; preds = %161, %141
  br label %169

169:                                              ; preds = %168, %166
  %170 = phi i8* [ %167, %166 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %168 ]
  %171 = call i32 @mysendfile(%struct.web_client* %158, i8* %170)
  store i32 %171, i32* %4, align 4
  %172 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %172)
  br label %173

173:                                              ; preds = %169, %115, %112, %81, %57
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @simple_hash(i8*) #1

declare dso_local i8* @mystrsep(i8**, i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @check_host_and_call(i32*, %struct.web_client*, i8*, i32) #1

declare dso_local i32 @web_client_switch_host(i32*, %struct.web_client*, i8*) #1

declare dso_local i32 @web_client_can_access_netdataconf(%struct.web_client*) #1

declare dso_local i32 @web_client_permission_denied(%struct.web_client*) #1

declare dso_local i32 @buffer_flush(%struct.TYPE_9__*) #1

declare dso_local i32 @config_generate(%struct.TYPE_9__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpyz(i8*, i32, i32) #1

declare dso_local i32 @mysendfile(%struct.web_client*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
