; ModuleID = '/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_request_done.c'
source_filename = "/home/carl/AnghaBench/netdata/web/server/extr_web_client.c_web_client_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.web_client = type { i8*, i32, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_4__, i32, i64, i64, i64, i32*, i32*, %struct.timeval, %struct.timeval, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i8, i64, %struct.TYPE_5__, i64, i64, i64, i64, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.timeval = type { i32 }

@D_WEB_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%llu: Resetting client.\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"FILECOPY\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"STREAM\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.6 = private unnamed_addr constant [107 x i8] c"%llu: %d '[%s]:%s' '%s' (sent/all = %zu/%zu bytes %0.0f%%, prep/sent/total = %0.2f/%0.2f/%0.2f ms) %d '%s'\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"%llu: Closing filecopy input file descriptor %d.\00", align 1
@web_server_mode = common dso_local global i64 0, align 8
@WEB_SERVER_MODE_STATIC_THREADED = common dso_local global i64 0, align 8
@D_DEFLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @web_client_request_done(%struct.web_client* %0) #0 {
  %2 = alloca %struct.web_client*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.web_client* %0, %struct.web_client** %2, align 8
  %7 = load %struct.web_client*, %struct.web_client** %2, align 8
  %8 = call i32 @web_client_uncrock_socket(%struct.web_client* %7)
  %9 = load i32, i32* @D_WEB_CLIENT, align 4
  %10 = load %struct.web_client*, %struct.web_client** %2, align 8
  %11 = getelementptr inbounds %struct.web_client, %struct.web_client* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i32, i8*, i32, ...) @debug(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.web_client*, %struct.web_client** %2, align 8
  %15 = getelementptr inbounds %struct.web_client, %struct.web_client* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @likely(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %119

21:                                               ; preds = %1
  %22 = call i32 @now_realtime_timeval(%struct.timeval* %3)
  %23 = load %struct.web_client*, %struct.web_client** %2, align 8
  %24 = getelementptr inbounds %struct.web_client, %struct.web_client* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 131
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.web_client*, %struct.web_client** %2, align 8
  %29 = getelementptr inbounds %struct.web_client, %struct.web_client* %28, i32 0, i32 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  br label %39

32:                                               ; preds = %21
  %33 = load %struct.web_client*, %struct.web_client** %2, align 8
  %34 = getelementptr inbounds %struct.web_client, %struct.web_client* %33, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  br label %39

39:                                               ; preds = %32, %27
  %40 = phi i64 [ %31, %27 ], [ %38, %32 ]
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %5, align 8
  %42 = load %struct.web_client*, %struct.web_client** %2, align 8
  %43 = getelementptr inbounds %struct.web_client, %struct.web_client* %42, i32 0, i32 15
  %44 = call double @dt_usec(%struct.timeval* %3, %struct.timeval* %43)
  %45 = load %struct.web_client*, %struct.web_client** %2, align 8
  %46 = getelementptr inbounds %struct.web_client, %struct.web_client* %45, i32 0, i32 20
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.web_client*, %struct.web_client** %2, align 8
  %49 = getelementptr inbounds %struct.web_client, %struct.web_client* %48, i32 0, i32 19
  %50 = load i32, i32* %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @finished_web_request_statistics(double %44, i32 %47, i32 %50, i64 %51, i64 %52)
  %54 = load %struct.web_client*, %struct.web_client** %2, align 8
  %55 = getelementptr inbounds %struct.web_client, %struct.web_client* %54, i32 0, i32 20
  store i32 0, i32* %55, align 4
  %56 = load %struct.web_client*, %struct.web_client** %2, align 8
  %57 = getelementptr inbounds %struct.web_client, %struct.web_client* %56, i32 0, i32 19
  store i32 0, i32* %57, align 8
  %58 = load %struct.web_client*, %struct.web_client** %2, align 8
  %59 = getelementptr inbounds %struct.web_client, %struct.web_client* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %65 [
    i32 131, label %61
    i32 129, label %62
    i32 128, label %63
    i32 130, label %64
  ]

61:                                               ; preds = %39
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %66

62:                                               ; preds = %39
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %66

63:                                               ; preds = %39
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %66

64:                                               ; preds = %39
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %66

65:                                               ; preds = %39
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %66

66:                                               ; preds = %65, %64, %63, %62, %61
  %67 = load %struct.web_client*, %struct.web_client** %2, align 8
  %68 = getelementptr inbounds %struct.web_client, %struct.web_client* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (...) @gettid()
  %71 = load %struct.web_client*, %struct.web_client** %2, align 8
  %72 = getelementptr inbounds %struct.web_client, %struct.web_client* %71, i32 0, i32 18
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.web_client*, %struct.web_client** %2, align 8
  %75 = getelementptr inbounds %struct.web_client, %struct.web_client* %74, i32 0, i32 17
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %4, align 8
  %81 = icmp ugt i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %66
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = sub i64 %83, %84
  %86 = uitofp i64 %85 to double
  %87 = load i64, i64* %4, align 8
  %88 = uitofp i64 %87 to double
  %89 = fdiv double %86, %88
  %90 = fmul double %89, 1.000000e+02
  br label %92

91:                                               ; preds = %66
  br label %92

92:                                               ; preds = %91, %82
  %93 = phi double [ %90, %82 ], [ 0.000000e+00, %91 ]
  %94 = fneg double %93
  %95 = fptoui double %94 to i64
  %96 = load %struct.web_client*, %struct.web_client** %2, align 8
  %97 = getelementptr inbounds %struct.web_client, %struct.web_client* %96, i32 0, i32 16
  %98 = load %struct.web_client*, %struct.web_client** %2, align 8
  %99 = getelementptr inbounds %struct.web_client, %struct.web_client* %98, i32 0, i32 15
  %100 = call double @dt_usec(%struct.timeval* %97, %struct.timeval* %99)
  %101 = fdiv double %100, 1.000000e+03
  %102 = load %struct.web_client*, %struct.web_client** %2, align 8
  %103 = getelementptr inbounds %struct.web_client, %struct.web_client* %102, i32 0, i32 16
  %104 = call double @dt_usec(%struct.timeval* %3, %struct.timeval* %103)
  %105 = fdiv double %104, 1.000000e+03
  %106 = load %struct.web_client*, %struct.web_client** %2, align 8
  %107 = getelementptr inbounds %struct.web_client, %struct.web_client* %106, i32 0, i32 15
  %108 = call double @dt_usec(%struct.timeval* %3, %struct.timeval* %107)
  %109 = fdiv double %108, 1.000000e+03
  %110 = load %struct.web_client*, %struct.web_client** %2, align 8
  %111 = getelementptr inbounds %struct.web_client, %struct.web_client* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.web_client*, %struct.web_client** %2, align 8
  %115 = getelementptr inbounds %struct.web_client, %struct.web_client* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @strip_control_characters(i8* %116)
  %118 = call i32 @log_access(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.6, i64 0, i64 0), i32 %69, i32 %70, i32 %73, i32 %76, i8* %77, i64 %78, i64 %79, i64 %95, double %101, double %105, double %109, i64 %113, i32 %117)
  br label %119

119:                                              ; preds = %92, %1
  %120 = load %struct.web_client*, %struct.web_client** %2, align 8
  %121 = getelementptr inbounds %struct.web_client, %struct.web_client* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 131
  %124 = zext i1 %123 to i32
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %165

127:                                              ; preds = %119
  %128 = load %struct.web_client*, %struct.web_client** %2, align 8
  %129 = getelementptr inbounds %struct.web_client, %struct.web_client* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.web_client*, %struct.web_client** %2, align 8
  %132 = getelementptr inbounds %struct.web_client, %struct.web_client* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %130, %133
  br i1 %134, label %135, label %164

135:                                              ; preds = %127
  %136 = load i32, i32* @D_WEB_CLIENT, align 4
  %137 = load %struct.web_client*, %struct.web_client** %2, align 8
  %138 = getelementptr inbounds %struct.web_client, %struct.web_client* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.web_client*, %struct.web_client** %2, align 8
  %141 = getelementptr inbounds %struct.web_client, %struct.web_client* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, i32, ...) @debug(i32 %136, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load i64, i64* @web_server_mode, align 8
  %145 = load i64, i64* @WEB_SERVER_MODE_STATIC_THREADED, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %135
  %148 = load %struct.web_client*, %struct.web_client** %2, align 8
  %149 = getelementptr inbounds %struct.web_client, %struct.web_client* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, -1
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.web_client*, %struct.web_client** %2, align 8
  %154 = getelementptr inbounds %struct.web_client, %struct.web_client* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @close(i32 %155)
  br label %157

157:                                              ; preds = %152, %147
  br label %158

158:                                              ; preds = %157, %135
  %159 = load %struct.web_client*, %struct.web_client** %2, align 8
  %160 = getelementptr inbounds %struct.web_client, %struct.web_client* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.web_client*, %struct.web_client** %2, align 8
  %163 = getelementptr inbounds %struct.web_client, %struct.web_client* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %158, %127
  br label %165

165:                                              ; preds = %164, %119
  %166 = load %struct.web_client*, %struct.web_client** %2, align 8
  %167 = getelementptr inbounds %struct.web_client, %struct.web_client* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  store i8 0, i8* %169, align 1
  %170 = load %struct.web_client*, %struct.web_client** %2, align 8
  %171 = getelementptr inbounds %struct.web_client, %struct.web_client* %170, i32 0, i32 4
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 0
  store i8 0, i8* %173, align 1
  %174 = load %struct.web_client*, %struct.web_client** %2, align 8
  %175 = getelementptr inbounds %struct.web_client, %struct.web_client* %174, i32 0, i32 5
  %176 = load i8*, i8** %175, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 0
  store i8 0, i8* %177, align 1
  %178 = load %struct.web_client*, %struct.web_client** %2, align 8
  %179 = getelementptr inbounds %struct.web_client, %struct.web_client* %178, i32 0, i32 6
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  store i8 42, i8* %181, align 1
  %182 = load %struct.web_client*, %struct.web_client** %2, align 8
  %183 = getelementptr inbounds %struct.web_client, %struct.web_client* %182, i32 0, i32 6
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  store i8 0, i8* %185, align 1
  %186 = load %struct.web_client*, %struct.web_client** %2, align 8
  %187 = getelementptr inbounds %struct.web_client, %struct.web_client* %186, i32 0, i32 14
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @freez(i32* %188)
  %190 = load %struct.web_client*, %struct.web_client** %2, align 8
  %191 = getelementptr inbounds %struct.web_client, %struct.web_client* %190, i32 0, i32 14
  store i32* null, i32** %191, align 8
  %192 = load %struct.web_client*, %struct.web_client** %2, align 8
  %193 = getelementptr inbounds %struct.web_client, %struct.web_client* %192, i32 0, i32 13
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %203

196:                                              ; preds = %165
  %197 = load %struct.web_client*, %struct.web_client** %2, align 8
  %198 = getelementptr inbounds %struct.web_client, %struct.web_client* %197, i32 0, i32 13
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @freez(i32* %199)
  %201 = load %struct.web_client*, %struct.web_client** %2, align 8
  %202 = getelementptr inbounds %struct.web_client, %struct.web_client* %201, i32 0, i32 13
  store i32* null, i32** %202, align 8
  br label %203

203:                                              ; preds = %196, %165
  %204 = load %struct.web_client*, %struct.web_client** %2, align 8
  %205 = getelementptr inbounds %struct.web_client, %struct.web_client* %204, i32 0, i32 1
  store i32 130, i32* %205, align 8
  %206 = load %struct.web_client*, %struct.web_client** %2, align 8
  %207 = getelementptr inbounds %struct.web_client, %struct.web_client* %206, i32 0, i32 12
  store i64 0, i64* %207, align 8
  %208 = load %struct.web_client*, %struct.web_client** %2, align 8
  %209 = call i32 @web_client_disable_donottrack(%struct.web_client* %208)
  %210 = load %struct.web_client*, %struct.web_client** %2, align 8
  %211 = call i32 @web_client_disable_tracking_required(%struct.web_client* %210)
  %212 = load %struct.web_client*, %struct.web_client** %2, align 8
  %213 = call i32 @web_client_disable_keepalive(%struct.web_client* %212)
  %214 = load %struct.web_client*, %struct.web_client** %2, align 8
  %215 = getelementptr inbounds %struct.web_client, %struct.web_client* %214, i32 0, i32 7
  %216 = load i8*, i8** %215, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 0
  store i8 0, i8* %217, align 1
  %218 = load %struct.web_client*, %struct.web_client** %2, align 8
  %219 = getelementptr inbounds %struct.web_client, %struct.web_client* %218, i32 0, i32 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 10
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %220, align 8
  %222 = call i32 @buffer_reset(%struct.TYPE_6__* %221)
  %223 = load %struct.web_client*, %struct.web_client** %2, align 8
  %224 = getelementptr inbounds %struct.web_client, %struct.web_client* %223, i32 0, i32 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 9
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = call i32 @buffer_reset(%struct.TYPE_6__* %226)
  %228 = load %struct.web_client*, %struct.web_client** %2, align 8
  %229 = getelementptr inbounds %struct.web_client, %struct.web_client* %228, i32 0, i32 8
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 8
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = call i32 @buffer_reset(%struct.TYPE_6__* %231)
  %233 = load %struct.web_client*, %struct.web_client** %2, align 8
  %234 = getelementptr inbounds %struct.web_client, %struct.web_client* %233, i32 0, i32 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  store i64 0, i64* %235, align 8
  %236 = load %struct.web_client*, %struct.web_client** %2, align 8
  %237 = getelementptr inbounds %struct.web_client, %struct.web_client* %236, i32 0, i32 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 7
  store i64 0, i64* %238, align 8
  %239 = load %struct.web_client*, %struct.web_client** %2, align 8
  %240 = getelementptr inbounds %struct.web_client, %struct.web_client* %239, i32 0, i32 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 6
  store i64 0, i64* %241, align 8
  %242 = load %struct.web_client*, %struct.web_client** %2, align 8
  %243 = getelementptr inbounds %struct.web_client, %struct.web_client* %242, i32 0, i32 11
  store i64 0, i64* %243, align 8
  %244 = load %struct.web_client*, %struct.web_client** %2, align 8
  %245 = getelementptr inbounds %struct.web_client, %struct.web_client* %244, i32 0, i32 10
  store i64 0, i64* %245, align 8
  %246 = load %struct.web_client*, %struct.web_client** %2, align 8
  %247 = call i32 @web_client_enable_wait_receive(%struct.web_client* %246)
  %248 = load %struct.web_client*, %struct.web_client** %2, align 8
  %249 = call i32 @web_client_disable_wait_send(%struct.web_client* %248)
  %250 = load %struct.web_client*, %struct.web_client** %2, align 8
  %251 = getelementptr inbounds %struct.web_client, %struct.web_client* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  store i8 0, i8* %252, align 8
  ret void
}

declare dso_local i32 @web_client_uncrock_socket(%struct.web_client*) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i64 @likely(i8 signext) #1

declare dso_local i32 @now_realtime_timeval(%struct.timeval*) #1

declare dso_local i32 @finished_web_request_statistics(double, i32, i32, i64, i64) #1

declare dso_local double @dt_usec(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @log_access(i8*, i32, i32, i32, i32, i8*, i64, i64, i64, double, double, double, i64, i32) #1

declare dso_local i32 @gettid(...) #1

declare dso_local i32 @strip_control_characters(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freez(i32*) #1

declare dso_local i32 @web_client_disable_donottrack(%struct.web_client*) #1

declare dso_local i32 @web_client_disable_tracking_required(%struct.web_client*) #1

declare dso_local i32 @web_client_disable_keepalive(%struct.web_client*) #1

declare dso_local i32 @buffer_reset(%struct.TYPE_6__*) #1

declare dso_local i32 @web_client_enable_wait_receive(%struct.web_client*) #1

declare dso_local i32 @web_client_disable_wait_send(%struct.web_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
