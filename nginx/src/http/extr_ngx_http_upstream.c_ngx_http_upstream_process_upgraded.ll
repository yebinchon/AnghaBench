; ModuleID = '/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_upgraded.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_upgraded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_31__*, %struct.TYPE_27__*, %struct.TYPE_30__* }
%struct.TYPE_31__ = type { i64, i64, i32, i32*, i32*, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_25__*, %struct.TYPE_31__, %struct.TYPE_31__, %struct.TYPE_23__*, %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_25__ = type { i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i64 (%struct.TYPE_30__*, i32*, i64)*, i64 (%struct.TYPE_30__*, i32*, i64)*, %struct.TYPE_22__*, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32, i64, i64, i64, i64, i64 }
%struct.TYPE_29__ = type { i32, i32 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"http upstream process upgraded, fu:%ui\00", align 1
@NGX_ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"client timed out\00", align 1
@NGX_HTTP_REQUEST_TIME_OUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"upstream timed out\00", align 1
@NGX_HTTP_GATEWAY_TIME_OUT = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"http upstream upgraded done\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CLOSE_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*, i32, i32)* @ngx_http_upstream_process_upgraded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_process_upgraded(%struct.TYPE_28__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca %struct.TYPE_30__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  store %struct.TYPE_30__* %20, %struct.TYPE_30__** %11, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %22, align 8
  store %struct.TYPE_27__* %23, %struct.TYPE_27__** %16, align 8
  %24 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ngx_log_debug1(i32 %24, i32 %27, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  store %struct.TYPE_30__* %30, %struct.TYPE_30__** %12, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %33, align 8
  store %struct.TYPE_30__* %34, %struct.TYPE_30__** %13, align 8
  %35 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %3
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %45 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %46 = call i32 @ngx_connection_error(%struct.TYPE_30__* %44, i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %49 = load i64, i64* @NGX_HTTP_REQUEST_TIME_OUT, align 8
  %50 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__* %47, %struct.TYPE_27__* %48, i64 %49)
  br label %570

51:                                               ; preds = %3
  %52 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %58, %51
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %67 = load i32, i32* @NGX_ETIMEDOUT, align 4
  %68 = call i32 @ngx_connection_error(%struct.TYPE_30__* %66, i32 %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %71 = load i64, i64* @NGX_HTTP_GATEWAY_TIME_OUT, align 8
  %72 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__* %69, %struct.TYPE_27__* %70, i64 %71)
  br label %570

73:                                               ; preds = %58
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  store %struct.TYPE_30__* %77, %struct.TYPE_30__** %15, align 8
  %78 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  store %struct.TYPE_30__* %78, %struct.TYPE_30__** %14, align 8
  %79 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 2
  store %struct.TYPE_31__* %80, %struct.TYPE_31__** %9, align 8
  br label %167

81:                                               ; preds = %73
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  store %struct.TYPE_30__* %82, %struct.TYPE_30__** %15, align 8
  %83 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  store %struct.TYPE_30__* %83, %struct.TYPE_30__** %14, align 8
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 1
  store %struct.TYPE_31__* %85, %struct.TYPE_31__** %9, align 8
  %86 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %90, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %81
  %98 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_31__*, %struct.TYPE_31__** %99, align 8
  store %struct.TYPE_31__* %100, %struct.TYPE_31__** %9, align 8
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i32*
  %105 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %105, i32 0, i32 3
  store i32* %104, i32** %106, align 8
  store i32 1, i32* %6, align 4
  br label %107

107:                                              ; preds = %97, %81
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %166

112:                                              ; preds = %107
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32* @ngx_palloc(i32 %115, i32 %120)
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 4
  store i32* %121, i32** %123, align 8
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %124, i32 0, i32 4
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %112
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %131 = load i64, i64* @NGX_ERROR, align 8
  %132 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__* %129, %struct.TYPE_27__* %130, i64 %131)
  br label %570

133:                                              ; preds = %112
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = ptrtoint i32* %136 to i64
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = ptrtoint i32* %142 to i64
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %144, i32 0, i32 0
  store i64 %143, i64* %145, align 8
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %148, i64 %154
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %156, i32 0, i32 3
  store i32* %155, i32** %157, align 8
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %158, i32 0, i32 2
  store i32 1, i32* %159, align 8
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %133, %107
  br label %167

167:                                              ; preds = %166, %76
  br label %168

168:                                              ; preds = %297, %167
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %239

171:                                              ; preds = %168
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = sub nsw i64 %174, %177
  store i64 %178, i64* %7, align 8
  %179 = load i64, i64* %7, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %238

181:                                              ; preds = %171
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %238

188:                                              ; preds = %181
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 1
  %191 = load i64 (%struct.TYPE_30__*, i32*, i64)*, i64 (%struct.TYPE_30__*, i32*, i64)** %190, align 8
  %192 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %193 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to i32*
  %197 = load i64, i64* %7, align 8
  %198 = call i64 %191(%struct.TYPE_30__* %192, i32* %196, i64 %197)
  store i64 %198, i64* %8, align 8
  %199 = load i64, i64* %8, align 8
  %200 = load i64, i64* @NGX_ERROR, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %207

202:                                              ; preds = %188
  %203 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %205 = load i64, i64* @NGX_ERROR, align 8
  %206 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__* %203, %struct.TYPE_27__* %204, i64 %205)
  br label %570

207:                                              ; preds = %188
  %208 = load i64, i64* %8, align 8
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %237

210:                                              ; preds = %207
  %211 = load i64, i64* %8, align 8
  %212 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, %211
  store i64 %215, i64* %213, align 8
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %218, %221
  br i1 %222, label %223, label %236

223:                                              ; preds = %210
  %224 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = ptrtoint i32* %226 to i64
  %228 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  %230 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 4
  %232 = load i32*, i32** %231, align 8
  %233 = ptrtoint i32* %232 to i64
  %234 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  br label %236

236:                                              ; preds = %223, %210
  br label %237

237:                                              ; preds = %236, %207
  br label %238

238:                                              ; preds = %237, %181, %171
  br label %239

239:                                              ; preds = %238, %168
  %240 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = sub i64 0, %245
  %247 = getelementptr inbounds i32, i32* %242, i64 %246
  %248 = ptrtoint i32* %247 to i64
  store i64 %248, i64* %7, align 8
  %249 = load i64, i64* %7, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %308

251:                                              ; preds = %239
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %253 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %252, i32 0, i32 4
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %308

258:                                              ; preds = %251
  %259 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %260 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %259, i32 0, i32 2
  %261 = load i64 (%struct.TYPE_30__*, i32*, i64)*, i64 (%struct.TYPE_30__*, i32*, i64)** %260, align 8
  %262 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = inttoptr i64 %265 to i32*
  %267 = load i64, i64* %7, align 8
  %268 = call i64 %261(%struct.TYPE_30__* %262, i32* %266, i64 %267)
  store i64 %268, i64* %8, align 8
  %269 = load i64, i64* %8, align 8
  %270 = load i64, i64* @NGX_AGAIN, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %275, label %272

272:                                              ; preds = %258
  %273 = load i64, i64* %8, align 8
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %272, %258
  br label %309

276:                                              ; preds = %272
  %277 = load i64, i64* %8, align 8
  %278 = icmp sgt i64 %277, 0
  br i1 %278, label %279, label %298

279:                                              ; preds = %276
  store i32 1, i32* %6, align 4
  %280 = load i64, i64* %8, align 8
  %281 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = add nsw i64 %283, %280
  store i64 %284, i64* %282, align 8
  %285 = load i32, i32* %5, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %297

287:                                              ; preds = %279
  %288 = load i64, i64* %8, align 8
  %289 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %290 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %289, i32 0, i32 3
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = add nsw i64 %294, %288
  %296 = trunc i64 %295 to i32
  store i32 %296, i32* %292, align 4
  br label %297

297:                                              ; preds = %287, %279
  br label %168

298:                                              ; preds = %276
  %299 = load i64, i64* %8, align 8
  %300 = load i64, i64* @NGX_ERROR, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %298
  %303 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %304 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %303, i32 0, i32 4
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 0
  store i32 1, i32* %306, align 8
  br label %307

307:                                              ; preds = %302, %298
  br label %308

308:                                              ; preds = %307, %251, %239
  br label %309

309:                                              ; preds = %308, %275
  %310 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %311 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %310, i32 0, i32 4
  %312 = load %struct.TYPE_22__*, %struct.TYPE_22__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %326

316:                                              ; preds = %309
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %318 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %322 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %321, i32 0, i32 2
  %323 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = icmp eq i64 %320, %324
  br i1 %325, label %357, label %326

326:                                              ; preds = %316, %309
  %327 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %328 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %327, i32 0, i32 4
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %343

333:                                              ; preds = %326
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = icmp eq i64 %337, %341
  br i1 %342, label %357, label %343

343:                                              ; preds = %333, %326
  %344 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %345 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %344, i32 0, i32 4
  %346 = load %struct.TYPE_22__*, %struct.TYPE_22__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %366

350:                                              ; preds = %343
  %351 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %352 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %351, i32 0, i32 4
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %366

357:                                              ; preds = %350, %333, %316
  %358 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %359 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %360 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %359, i32 0, i32 5
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @ngx_log_debug0(i32 %358, i32 %361, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %363 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %364 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %365 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__* %363, %struct.TYPE_27__* %364, i64 0)
  br label %570

366:                                              ; preds = %350, %343
  %367 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %368 = load i32, i32* @ngx_http_core_module, align 4
  %369 = call %struct.TYPE_29__* @ngx_http_get_module_loc_conf(%struct.TYPE_28__* %367, i32 %368)
  store %struct.TYPE_29__* %369, %struct.TYPE_29__** %17, align 8
  %370 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %371 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %370, i32 0, i32 3
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %371, align 8
  %373 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %374 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %375, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = call i64 @ngx_handle_write_event(%struct.TYPE_22__* %372, i32 %377)
  %379 = load i64, i64* @NGX_OK, align 8
  %380 = icmp ne i64 %378, %379
  br i1 %380, label %381, label %386

381:                                              ; preds = %366
  %382 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %383 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %384 = load i64, i64* @NGX_ERROR, align 8
  %385 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__* %382, %struct.TYPE_27__* %383, i64 %384)
  br label %570

386:                                              ; preds = %366
  %387 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %388 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %387, i32 0, i32 3
  %389 = load %struct.TYPE_22__*, %struct.TYPE_22__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %389, i32 0, i32 3
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %410

393:                                              ; preds = %386
  %394 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %395 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %394, i32 0, i32 3
  %396 = load %struct.TYPE_22__*, %struct.TYPE_22__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %396, i32 0, i32 2
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %410, label %400

400:                                              ; preds = %393
  %401 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %402 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %401, i32 0, i32 3
  %403 = load %struct.TYPE_22__*, %struct.TYPE_22__** %402, align 8
  %404 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %405 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %404, i32 0, i32 0
  %406 = load %struct.TYPE_25__*, %struct.TYPE_25__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %406, i32 0, i32 2
  %408 = load i32, i32* %407, align 4
  %409 = call i32 @ngx_add_timer(%struct.TYPE_22__* %403, i32 %408)
  br label %423

410:                                              ; preds = %393, %386
  %411 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %412 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %411, i32 0, i32 3
  %413 = load %struct.TYPE_22__*, %struct.TYPE_22__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %410
  %418 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %419 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %418, i32 0, i32 3
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %419, align 8
  %421 = call i32 @ngx_del_timer(%struct.TYPE_22__* %420)
  br label %422

422:                                              ; preds = %417, %410
  br label %423

423:                                              ; preds = %422, %400
  %424 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %425 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %424, i32 0, i32 4
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %437, label %430

430:                                              ; preds = %423
  %431 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %432 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %431, i32 0, i32 4
  %433 = load %struct.TYPE_22__*, %struct.TYPE_22__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 4
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %439

437:                                              ; preds = %430, %423
  %438 = load i32, i32* @NGX_CLOSE_EVENT, align 4
  store i32 %438, i32* %10, align 4
  br label %440

439:                                              ; preds = %430
  store i32 0, i32* %10, align 4
  br label %440

440:                                              ; preds = %439, %437
  %441 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %442 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %441, i32 0, i32 4
  %443 = load %struct.TYPE_22__*, %struct.TYPE_22__** %442, align 8
  %444 = load i32, i32* %10, align 4
  %445 = call i64 @ngx_handle_read_event(%struct.TYPE_22__* %443, i32 %444)
  %446 = load i64, i64* @NGX_OK, align 8
  %447 = icmp ne i64 %445, %446
  br i1 %447, label %448, label %453

448:                                              ; preds = %440
  %449 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %450 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %451 = load i64, i64* @NGX_ERROR, align 8
  %452 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__* %449, %struct.TYPE_27__* %450, i64 %451)
  br label %570

453:                                              ; preds = %440
  %454 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %455 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %454, i32 0, i32 4
  %456 = load %struct.TYPE_22__*, %struct.TYPE_22__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %456, i32 0, i32 3
  %458 = load i64, i64* %457, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %477

460:                                              ; preds = %453
  %461 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %462 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %461, i32 0, i32 4
  %463 = load %struct.TYPE_22__*, %struct.TYPE_22__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %463, i32 0, i32 2
  %465 = load i64, i64* %464, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %477, label %467

467:                                              ; preds = %460
  %468 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %469 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %468, i32 0, i32 4
  %470 = load %struct.TYPE_22__*, %struct.TYPE_22__** %469, align 8
  %471 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %472 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %471, i32 0, i32 0
  %473 = load %struct.TYPE_25__*, %struct.TYPE_25__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = call i32 @ngx_add_timer(%struct.TYPE_22__* %470, i32 %475)
  br label %490

477:                                              ; preds = %460, %453
  %478 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %479 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %478, i32 0, i32 4
  %480 = load %struct.TYPE_22__*, %struct.TYPE_22__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %480, i32 0, i32 1
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %489

484:                                              ; preds = %477
  %485 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %486 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %485, i32 0, i32 4
  %487 = load %struct.TYPE_22__*, %struct.TYPE_22__** %486, align 8
  %488 = call i32 @ngx_del_timer(%struct.TYPE_22__* %487)
  br label %489

489:                                              ; preds = %484, %477
  br label %490

490:                                              ; preds = %489, %467
  %491 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %492 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %491, i32 0, i32 3
  %493 = load %struct.TYPE_22__*, %struct.TYPE_22__** %492, align 8
  %494 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %495 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = call i64 @ngx_handle_write_event(%struct.TYPE_22__* %493, i32 %496)
  %498 = load i64, i64* @NGX_OK, align 8
  %499 = icmp ne i64 %497, %498
  br i1 %499, label %500, label %505

500:                                              ; preds = %490
  %501 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %502 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %503 = load i64, i64* @NGX_ERROR, align 8
  %504 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__* %501, %struct.TYPE_27__* %502, i64 %503)
  br label %570

505:                                              ; preds = %490
  %506 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %507 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %506, i32 0, i32 4
  %508 = load %struct.TYPE_22__*, %struct.TYPE_22__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %519, label %512

512:                                              ; preds = %505
  %513 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %514 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %513, i32 0, i32 4
  %515 = load %struct.TYPE_22__*, %struct.TYPE_22__** %514, align 8
  %516 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %515, i32 0, i32 4
  %517 = load i64, i64* %516, align 8
  %518 = icmp ne i64 %517, 0
  br i1 %518, label %519, label %521

519:                                              ; preds = %512, %505
  %520 = load i32, i32* @NGX_CLOSE_EVENT, align 4
  store i32 %520, i32* %10, align 4
  br label %522

521:                                              ; preds = %512
  store i32 0, i32* %10, align 4
  br label %522

522:                                              ; preds = %521, %519
  %523 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %524 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %523, i32 0, i32 4
  %525 = load %struct.TYPE_22__*, %struct.TYPE_22__** %524, align 8
  %526 = load i32, i32* %10, align 4
  %527 = call i64 @ngx_handle_read_event(%struct.TYPE_22__* %525, i32 %526)
  %528 = load i64, i64* @NGX_OK, align 8
  %529 = icmp ne i64 %527, %528
  br i1 %529, label %530, label %535

530:                                              ; preds = %522
  %531 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %532 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %533 = load i64, i64* @NGX_ERROR, align 8
  %534 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__* %531, %struct.TYPE_27__* %532, i64 %533)
  br label %570

535:                                              ; preds = %522
  %536 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %537 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %536, i32 0, i32 3
  %538 = load %struct.TYPE_22__*, %struct.TYPE_22__** %537, align 8
  %539 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %538, i32 0, i32 3
  %540 = load i64, i64* %539, align 8
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %542, label %557

542:                                              ; preds = %535
  %543 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %544 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %543, i32 0, i32 3
  %545 = load %struct.TYPE_22__*, %struct.TYPE_22__** %544, align 8
  %546 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %545, i32 0, i32 2
  %547 = load i64, i64* %546, align 8
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %557, label %549

549:                                              ; preds = %542
  %550 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %551 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %550, i32 0, i32 3
  %552 = load %struct.TYPE_22__*, %struct.TYPE_22__** %551, align 8
  %553 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %554 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 4
  %556 = call i32 @ngx_add_timer(%struct.TYPE_22__* %552, i32 %555)
  br label %570

557:                                              ; preds = %542, %535
  %558 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %559 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %558, i32 0, i32 3
  %560 = load %struct.TYPE_22__*, %struct.TYPE_22__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %560, i32 0, i32 1
  %562 = load i64, i64* %561, align 8
  %563 = icmp ne i64 %562, 0
  br i1 %563, label %564, label %569

564:                                              ; preds = %557
  %565 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %566 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %565, i32 0, i32 3
  %567 = load %struct.TYPE_22__*, %struct.TYPE_22__** %566, align 8
  %568 = call i32 @ngx_del_timer(%struct.TYPE_22__* %567)
  br label %569

569:                                              ; preds = %564, %557
  br label %570

570:                                              ; preds = %41, %65, %128, %202, %357, %381, %448, %500, %530, %569, %549
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_connection_error(%struct.TYPE_30__*, i32, i8*) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_28__*, %struct.TYPE_27__*, i64) #1

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_29__* @ngx_http_get_module_loc_conf(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @ngx_handle_write_event(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_22__*) #1

declare dso_local i64 @ngx_handle_read_event(%struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
