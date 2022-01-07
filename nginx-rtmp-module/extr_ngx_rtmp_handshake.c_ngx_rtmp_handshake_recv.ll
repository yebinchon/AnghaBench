; ModuleID = '/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handshake.c_ngx_rtmp_handshake_recv.c'
source_filename = "/home/carl/AnghaBench/nginx-rtmp-module/extr_ngx_rtmp_handshake.c_ngx_rtmp_handshake_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64 (%struct.TYPE_20__*, i64, i64)*, i32, i32, %struct.TYPE_19__*, i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i64 }
%struct.TYPE_17__ = type { i32 }

@NGX_LOG_INFO = common dso_local global i32 0, align 4
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"handshake: recv: client timed out\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_READ_EVENT = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_RTMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"handshake: stage %ui\00", align 1
@ngx_rtmp_client_partial_key = common dso_local global i32 0, align 4
@ngx_rtmp_server_full_key = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"handshake: error parsing challenge\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"handshake: old-style challenge\00", align 1
@ngx_rtmp_server_version = common dso_local global i32 0, align 4
@ngx_rtmp_server_partial_key = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"handshake: error creating challenge\00", align 1
@ngx_rtmp_client_full_key = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"handshake: response error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @ngx_rtmp_handshake_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_rtmp_handshake_recv(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_20__* %9, %struct.TYPE_20__** %4, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 6
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  store %struct.TYPE_18__* %12, %struct.TYPE_18__** %5, align 8
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %248

18:                                               ; preds = %1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32, i32* @NGX_LOG_INFO, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %29 = call i32 @ngx_log_error(i32 %24, i32 %27, i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_18__* %32)
  br label %248

34:                                               ; preds = %18
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %41 = call i32 @ngx_del_timer(%struct.TYPE_19__* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %6, align 8
  br label %46

46:                                               ; preds = %99, %42
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %105

54:                                               ; preds = %46
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 1
  %57 = load i64 (%struct.TYPE_20__*, i64, i64)*, i64 (%struct.TYPE_20__*, i64, i64)** %56, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = call i64 %57(%struct.TYPE_20__* %58, i64 %61, i64 %68)
  store i64 %69, i64* %3, align 8
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @NGX_ERROR, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %76, label %73

73:                                               ; preds = %54
  %74 = load i64, i64* %3, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %54
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %78 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_18__* %77)
  br label %248

79:                                               ; preds = %73
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* @NGX_AGAIN, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %79
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ngx_add_timer(%struct.TYPE_19__* %84, i32 %87)
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = call i64 @ngx_handle_read_event(%struct.TYPE_19__* %91, i32 0)
  %93 = load i64, i64* @NGX_OK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %83
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %97 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_18__* %96)
  br label %98

98:                                               ; preds = %95, %83
  br label %248

99:                                               ; preds = %79
  %100 = load i64, i64* %3, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %100
  store i64 %104, i64* %102, align 8
  br label %46

105:                                              ; preds = %46
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %112 = load i32, i32* @NGX_READ_EVENT, align 4
  %113 = call i32 @ngx_del_event(%struct.TYPE_19__* %111, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %110, %105
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ngx_log_debug1(i32 %119, i32 %124, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  switch i32 %131, label %248 [
    i32 128, label %132
    i32 129, label %196
    i32 131, label %199
    i32 130, label %230
  ]

132:                                              ; preds = %114
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %134 = call i64 @ngx_rtmp_handshake_parse_challenge(%struct.TYPE_18__* %133, i32* @ngx_rtmp_client_partial_key, i32* @ngx_rtmp_server_full_key)
  %135 = load i64, i64* @NGX_OK, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load i32, i32* @NGX_LOG_INFO, align 4
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ngx_log_error(i32 %138, i32 %141, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %144 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_18__* %143)
  br label %248

145:                                              ; preds = %132
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %176

150:                                              ; preds = %145
  %151 = load i32, i32* @NGX_LOG_DEBUG_RTMP, align 4
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ngx_log_debug0(i32 %151, i32 %156, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 2
  store i64 %162, i64* %166, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  store i64 %171, i64* %175, align 8
  br label %191

176:                                              ; preds = %145
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %178 = load i32, i32* @ngx_rtmp_server_version, align 4
  %179 = call i64 @ngx_rtmp_handshake_create_challenge(%struct.TYPE_18__* %177, i32 %178, i32* @ngx_rtmp_server_partial_key)
  %180 = load i64, i64* @NGX_OK, align 8
  %181 = icmp ne i64 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load i32, i32* @NGX_LOG_INFO, align 4
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @ngx_log_error(i32 %183, i32 %186, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %189 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_18__* %188)
  br label %248

190:                                              ; preds = %176
  br label %191

191:                                              ; preds = %190, %150
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @ngx_rtmp_handshake_send(i32 %194)
  br label %248

196:                                              ; preds = %114
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %198 = call i32 @ngx_rtmp_handshake_done(%struct.TYPE_18__* %197)
  br label %248

199:                                              ; preds = %114
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %201 = call i64 @ngx_rtmp_handshake_parse_challenge(%struct.TYPE_18__* %200, i32* @ngx_rtmp_server_partial_key, i32* @ngx_rtmp_client_full_key)
  %202 = load i64, i64* @NGX_OK, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load i32, i32* @NGX_LOG_INFO, align 4
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @ngx_log_error(i32 %205, i32 %208, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %211 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_18__* %210)
  br label %248

212:                                              ; preds = %199
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, 1
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 0
  store i64 %218, i64* %222, align 8
  %223 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_21__*, %struct.TYPE_21__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %225, i32 0, i32 2
  store i64 %218, i64* %226, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 4
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %228, align 8
  call void @ngx_rtmp_handshake_recv(%struct.TYPE_19__* %229)
  br label %248

230:                                              ; preds = %114
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %232 = call i64 @ngx_rtmp_handshake_create_response(%struct.TYPE_18__* %231)
  %233 = load i64, i64* @NGX_OK, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %230
  %236 = load i32, i32* @NGX_LOG_INFO, align 4
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @ngx_log_error(i32 %236, i32 %239, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %242 = call i32 @ngx_rtmp_finalize_session(%struct.TYPE_18__* %241)
  br label %248

243:                                              ; preds = %230
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = call i32 @ngx_rtmp_handshake_send(i32 %246)
  br label %248

248:                                              ; preds = %17, %23, %76, %98, %137, %182, %204, %235, %114, %243, %212, %196, %191
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_rtmp_finalize_session(%struct.TYPE_18__*) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_19__*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_del_event(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i64 @ngx_rtmp_handshake_parse_challenge(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_rtmp_handshake_create_challenge(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @ngx_rtmp_handshake_send(i32) #1

declare dso_local i32 @ngx_rtmp_handshake_done(%struct.TYPE_18__*) #1

declare dso_local i64 @ngx_rtmp_handshake_create_response(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
