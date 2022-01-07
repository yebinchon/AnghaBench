; ModuleID = '/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_send_chain.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/v2/extr_ngx_http_v2_filter_module.c_ngx_http_v2_send_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { %struct.TYPE_30__*, %struct.TYPE_37__* }
%struct.TYPE_30__ = type { i64, i64, i64, i64, i64, %struct.TYPE_30__* }
%struct.TYPE_36__ = type { %struct.TYPE_31__*, i32, i32, %struct.TYPE_35__* }
%struct.TYPE_31__ = type { i32, i64 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64, i64, %struct.TYPE_37__*, %struct.TYPE_34__*, i64 }
%struct.TYPE_34__ = type { i64, i64 }
%struct.TYPE_33__ = type { i64 }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"output on closed stream\00", align 1
@NGX_CHAIN_ERROR = common dso_local global %struct.TYPE_37__* null, align 8
@NGX_HTTP_V2_BUFFERED = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@ngx_http_v2_module = common dso_local global i32 0, align 4
@NGX_HTTP_V2_NO_TRAILERS = common dso_local global i32* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_37__* (%struct.TYPE_36__*, %struct.TYPE_37__*, i64)* @ngx_http_v2_send_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_37__* @ngx_http_v2_send_chain(%struct.TYPE_36__* %0, %struct.TYPE_37__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_37__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_37__*, align 8
  %13 = alloca %struct.TYPE_37__*, align 8
  %14 = alloca %struct.TYPE_37__**, align 8
  %15 = alloca %struct.TYPE_35__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_33__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %5, align 8
  store %struct.TYPE_37__* %1, %struct.TYPE_37__** %6, align 8
  store i64 %2, i64* %7, align 8
  %21 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %22, align 8
  store %struct.TYPE_35__* %23, %struct.TYPE_35__** %15, align 8
  %24 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %25 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %25, align 8
  store %struct.TYPE_32__* %26, %struct.TYPE_32__** %16, align 8
  br label %27

27:                                               ; preds = %45, %3
  %28 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %29 = icmp ne %struct.TYPE_37__* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %32, align 8
  %34 = call i64 @ngx_buf_size(%struct.TYPE_30__* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37, %30
  br label %49

45:                                               ; preds = %37
  %46 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_37__*, %struct.TYPE_37__** %47, align 8
  store %struct.TYPE_37__* %48, %struct.TYPE_37__** %6, align 8
  br label %27

49:                                               ; preds = %44, %27
  %50 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %51 = icmp eq %struct.TYPE_37__* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %52, %49
  %58 = load i64, i64* %8, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* @NGX_LOG_ERR, align 4
  %62 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ngx_log_error(i32 %61, i32 %64, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.TYPE_37__*, %struct.TYPE_37__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_37__* %66, %struct.TYPE_37__** %4, align 8
  br label %470

67:                                               ; preds = %57
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  br label %88

81:                                               ; preds = %67
  %82 = load i32, i32* @NGX_HTTP_V2_BUFFERED, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %81, %72
  store %struct.TYPE_37__* null, %struct.TYPE_37__** %4, align 8
  br label %470

89:                                               ; preds = %52
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %91, align 8
  store %struct.TYPE_34__* %92, %struct.TYPE_34__** %20, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %97 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %98 = call i64 @ngx_http_v2_flow_control(%struct.TYPE_34__* %96, %struct.TYPE_32__* %97)
  %99 = load i64, i64* @NGX_DECLINED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 1
  store i64 0, i64* %109, align 8
  %110 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  store %struct.TYPE_37__* %110, %struct.TYPE_37__** %4, align 8
  br label %470

111:                                              ; preds = %95, %89
  %112 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %116, ptrtoint (%struct.TYPE_37__* (%struct.TYPE_32__*, %struct.TYPE_30__*, i64, i64)* @ngx_http_v2_filter_get_shadow to i64)
  br i1 %117, label %118, label %179

118:                                              ; preds = %111
  %119 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call %struct.TYPE_37__* @ngx_alloc_chain_link(i32 %121)
  store %struct.TYPE_37__* %122, %struct.TYPE_37__** %12, align 8
  %123 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %124 = icmp eq %struct.TYPE_37__* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load %struct.TYPE_37__*, %struct.TYPE_37__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_37__* %126, %struct.TYPE_37__** %4, align 8
  br label %470

127:                                              ; preds = %118
  %128 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %129, align 8
  %131 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %131, i32 0, i32 0
  store %struct.TYPE_30__* %130, %struct.TYPE_30__** %132, align 8
  %133 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %136, align 8
  %138 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %138, i32 0, i32 0
  store %struct.TYPE_30__* %137, %struct.TYPE_30__** %139, align 8
  %140 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %141, align 8
  %143 = call i64 @ngx_buf_in_memory(%struct.TYPE_30__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %127
  %146 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_30__*, %struct.TYPE_30__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = sub i64 %150, %155
  br label %169

157:                                              ; preds = %127
  %158 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = sub i64 %162, %167
  br label %169

169:                                              ; preds = %157, %145
  %170 = phi i64 [ %156, %145 ], [ %168, %157 ]
  store i64 %170, i64* %9, align 8
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_37__*, %struct.TYPE_37__** %172, align 8
  %174 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %174, i32 0, i32 1
  store %struct.TYPE_37__* %173, %struct.TYPE_37__** %175, align 8
  %176 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %177 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %178 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %177, i32 0, i32 2
  store %struct.TYPE_37__* %176, %struct.TYPE_37__** %178, align 8
  br label %180

179:                                              ; preds = %111
  store i64 0, i64* %9, align 8
  br label %180

180:                                              ; preds = %179, %169
  %181 = load i64, i64* %7, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %180
  %184 = load i64, i64* %7, align 8
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ugt i64 %184, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %183, %180
  %190 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %191 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %7, align 8
  br label %193

193:                                              ; preds = %189, %183
  %194 = load i64, i64* %7, align 8
  %195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ugt i64 %194, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %193
  %200 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %201 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ugt i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  br label %209

208:                                              ; preds = %199
  br label %209

209:                                              ; preds = %208, %204
  %210 = phi i64 [ %207, %204 ], [ 0, %208 ]
  store i64 %210, i64* %7, align 8
  br label %211

211:                                              ; preds = %209, %193
  %212 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %213 = load i32, i32* @ngx_http_v2_module, align 4
  %214 = call %struct.TYPE_33__* @ngx_http_get_module_loc_conf(%struct.TYPE_35__* %212, i32 %213)
  store %struct.TYPE_33__* %214, %struct.TYPE_33__** %17, align 8
  %215 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ult i64 %217, %220
  br i1 %221, label %222, label %226

222:                                              ; preds = %211
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  br label %230

226:                                              ; preds = %211
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  br label %230

230:                                              ; preds = %226, %222
  %231 = phi i64 [ %225, %222 ], [ %229, %226 ]
  store i64 %231, i64* %11, align 8
  %232 = load i32*, i32** @NGX_HTTP_V2_NO_TRAILERS, align 8
  store i32* %232, i32** %19, align 8
  br label %233

233:                                              ; preds = %415, %230
  %234 = load i64, i64* %11, align 8
  %235 = load i64, i64* %7, align 8
  %236 = icmp ugt i64 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = load i64, i64* %7, align 8
  store i64 %238, i64* %11, align 8
  br label %239

239:                                              ; preds = %237, %233
  store %struct.TYPE_37__** %13, %struct.TYPE_37__*** %14, align 8
  %240 = load i64, i64* %11, align 8
  store i64 %240, i64* %10, align 8
  br label %241

241:                                              ; preds = %293, %239
  %242 = load i64, i64* %10, align 8
  %243 = load i64, i64* %8, align 8
  %244 = icmp uge i64 %242, %243
  br i1 %244, label %245, label %298

245:                                              ; preds = %241
  %246 = load i64, i64* %9, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %261

248:                                              ; preds = %245
  %249 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %250 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_30__*, %struct.TYPE_30__** %251, align 8
  %253 = load i64, i64* %9, align 8
  %254 = load i64, i64* %8, align 8
  %255 = call %struct.TYPE_37__* @ngx_http_v2_filter_get_shadow(%struct.TYPE_32__* %249, %struct.TYPE_30__* %252, i64 %253, i64 %254)
  store %struct.TYPE_37__* %255, %struct.TYPE_37__** %12, align 8
  %256 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %257 = icmp eq %struct.TYPE_37__* %256, null
  br i1 %257, label %258, label %260

258:                                              ; preds = %248
  %259 = load %struct.TYPE_37__*, %struct.TYPE_37__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_37__* %259, %struct.TYPE_37__** %4, align 8
  br label %470

260:                                              ; preds = %248
  store i64 0, i64* %9, align 8
  br label %276

261:                                              ; preds = %245
  %262 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %263 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call %struct.TYPE_37__* @ngx_alloc_chain_link(i32 %264)
  store %struct.TYPE_37__* %265, %struct.TYPE_37__** %12, align 8
  %266 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %267 = icmp eq %struct.TYPE_37__* %266, null
  br i1 %267, label %268, label %270

268:                                              ; preds = %261
  %269 = load %struct.TYPE_37__*, %struct.TYPE_37__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_37__* %269, %struct.TYPE_37__** %4, align 8
  br label %470

270:                                              ; preds = %261
  %271 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_30__*, %struct.TYPE_30__** %272, align 8
  %274 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %274, i32 0, i32 0
  store %struct.TYPE_30__* %273, %struct.TYPE_30__** %275, align 8
  br label %276

276:                                              ; preds = %270, %260
  %277 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %278 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %14, align 8
  store %struct.TYPE_37__* %277, %struct.TYPE_37__** %278, align 8
  %279 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %279, i32 0, i32 1
  store %struct.TYPE_37__** %280, %struct.TYPE_37__*** %14, align 8
  %281 = load i64, i64* %8, align 8
  %282 = load i64, i64* %10, align 8
  %283 = sub i64 %282, %281
  store i64 %283, i64* %10, align 8
  %284 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %284, i32 0, i32 1
  %286 = load %struct.TYPE_37__*, %struct.TYPE_37__** %285, align 8
  store %struct.TYPE_37__* %286, %struct.TYPE_37__** %6, align 8
  %287 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %288 = icmp eq %struct.TYPE_37__* %287, null
  br i1 %288, label %289, label %293

289:                                              ; preds = %276
  %290 = load i64, i64* %10, align 8
  %291 = load i64, i64* %11, align 8
  %292 = sub i64 %291, %290
  store i64 %292, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %298

293:                                              ; preds = %276
  %294 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %294, i32 0, i32 0
  %296 = load %struct.TYPE_30__*, %struct.TYPE_30__** %295, align 8
  %297 = call i64 @ngx_buf_size(%struct.TYPE_30__* %296)
  store i64 %297, i64* %8, align 8
  br label %241

298:                                              ; preds = %289, %241
  %299 = load i64, i64* %10, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %330

301:                                              ; preds = %298
  %302 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %303 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_30__*, %struct.TYPE_30__** %304, align 8
  %306 = load i64, i64* %9, align 8
  %307 = load i64, i64* %10, align 8
  %308 = call %struct.TYPE_37__* @ngx_http_v2_filter_get_shadow(%struct.TYPE_32__* %302, %struct.TYPE_30__* %305, i64 %306, i64 %307)
  store %struct.TYPE_37__* %308, %struct.TYPE_37__** %12, align 8
  %309 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %310 = icmp eq %struct.TYPE_37__* %309, null
  br i1 %310, label %311, label %313

311:                                              ; preds = %301
  %312 = load %struct.TYPE_37__*, %struct.TYPE_37__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_37__* %312, %struct.TYPE_37__** %4, align 8
  br label %470

313:                                              ; preds = %301
  %314 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_30__*, %struct.TYPE_30__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %316, i32 0, i32 4
  store i64 0, i64* %317, align 8
  %318 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_30__*, %struct.TYPE_30__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %320, i32 0, i32 3
  store i64 0, i64* %321, align 8
  %322 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %323 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %14, align 8
  store %struct.TYPE_37__* %322, %struct.TYPE_37__** %323, align 8
  %324 = load i64, i64* %10, align 8
  %325 = load i64, i64* %9, align 8
  %326 = add i64 %325, %324
  store i64 %326, i64* %9, align 8
  %327 = load i64, i64* %10, align 8
  %328 = load i64, i64* %8, align 8
  %329 = sub i64 %328, %327
  store i64 %329, i64* %8, align 8
  br label %330

330:                                              ; preds = %313, %298
  %331 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_30__*, %struct.TYPE_30__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %333, i32 0, i32 3
  %335 = load i64, i64* %334, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %354

337:                                              ; preds = %330
  %338 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %339 = call i32* @ngx_http_v2_create_trailers_frame(%struct.TYPE_35__* %338)
  store i32* %339, i32** %19, align 8
  %340 = load i32*, i32** %19, align 8
  %341 = icmp eq i32* %340, null
  br i1 %341, label %342, label %344

342:                                              ; preds = %337
  %343 = load %struct.TYPE_37__*, %struct.TYPE_37__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_37__* %343, %struct.TYPE_37__** %4, align 8
  br label %470

344:                                              ; preds = %337
  %345 = load i32*, i32** %19, align 8
  %346 = load i32*, i32** @NGX_HTTP_V2_NO_TRAILERS, align 8
  %347 = icmp ne i32* %345, %346
  br i1 %347, label %348, label %353

348:                                              ; preds = %344
  %349 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %349, i32 0, i32 0
  %351 = load %struct.TYPE_30__*, %struct.TYPE_30__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %351, i32 0, i32 3
  store i64 0, i64* %352, align 8
  br label %353

353:                                              ; preds = %348, %344
  br label %354

354:                                              ; preds = %353, %330
  %355 = load i64, i64* %11, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %364, label %357

357:                                              ; preds = %354
  %358 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %359 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_30__*, %struct.TYPE_30__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %360, i32 0, i32 3
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %392

364:                                              ; preds = %357, %354
  %365 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %366 = load i64, i64* %11, align 8
  %367 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %368 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %369 = call i32* @ngx_http_v2_filter_get_data_frame(%struct.TYPE_32__* %365, i64 %366, %struct.TYPE_37__* %367, %struct.TYPE_37__* %368)
  store i32* %369, i32** %18, align 8
  %370 = load i32*, i32** %18, align 8
  %371 = icmp eq i32* %370, null
  br i1 %371, label %372, label %374

372:                                              ; preds = %364
  %373 = load %struct.TYPE_37__*, %struct.TYPE_37__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_37__* %373, %struct.TYPE_37__** %4, align 8
  br label %470

374:                                              ; preds = %364
  %375 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %376 = load i32*, i32** %18, align 8
  %377 = call i32 @ngx_http_v2_queue_frame(%struct.TYPE_34__* %375, i32* %376)
  %378 = load i64, i64* %11, align 8
  %379 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %380 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %379, i32 0, i32 0
  %381 = load i64, i64* %380, align 8
  %382 = sub i64 %381, %378
  store i64 %382, i64* %380, align 8
  %383 = load i64, i64* %11, align 8
  %384 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %385 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %384, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = sub i64 %386, %383
  store i64 %387, i64* %385, align 8
  %388 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %389 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = add nsw i64 %390, 1
  store i64 %391, i64* %389, align 8
  br label %392

392:                                              ; preds = %374, %357
  %393 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %394 = icmp eq %struct.TYPE_37__* %393, null
  br i1 %394, label %395, label %408

395:                                              ; preds = %392
  %396 = load i32*, i32** %19, align 8
  %397 = load i32*, i32** @NGX_HTTP_V2_NO_TRAILERS, align 8
  %398 = icmp ne i32* %396, %397
  br i1 %398, label %399, label %407

399:                                              ; preds = %395
  %400 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %401 = load i32*, i32** %19, align 8
  %402 = call i32 @ngx_http_v2_queue_frame(%struct.TYPE_34__* %400, i32* %401)
  %403 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %404 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %403, i32 0, i32 1
  %405 = load i64, i64* %404, align 8
  %406 = add nsw i64 %405, 1
  store i64 %406, i64* %404, align 8
  br label %407

407:                                              ; preds = %399, %395
  br label %416

408:                                              ; preds = %392
  %409 = load i64, i64* %11, align 8
  %410 = load i64, i64* %7, align 8
  %411 = sub i64 %410, %409
  store i64 %411, i64* %7, align 8
  %412 = load i64, i64* %7, align 8
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %408
  br label %416

415:                                              ; preds = %408
  br label %233

416:                                              ; preds = %414, %407
  %417 = load i64, i64* %9, align 8
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %442

419:                                              ; preds = %416
  %420 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %421 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_30__*, %struct.TYPE_30__** %422, align 8
  %424 = load i64, i64* %9, align 8
  %425 = load i64, i64* %8, align 8
  %426 = call %struct.TYPE_37__* @ngx_http_v2_filter_get_shadow(%struct.TYPE_32__* %420, %struct.TYPE_30__* %423, i64 %424, i64 %425)
  store %struct.TYPE_37__* %426, %struct.TYPE_37__** %12, align 8
  %427 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %428 = icmp eq %struct.TYPE_37__* %427, null
  br i1 %428, label %429, label %431

429:                                              ; preds = %419
  %430 = load %struct.TYPE_37__*, %struct.TYPE_37__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_37__* %430, %struct.TYPE_37__** %4, align 8
  br label %470

431:                                              ; preds = %419
  %432 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %433 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %432, i32 0, i32 0
  %434 = load %struct.TYPE_30__*, %struct.TYPE_30__** %433, align 8
  %435 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %436 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %435, i32 0, i32 0
  store %struct.TYPE_30__* %434, %struct.TYPE_30__** %436, align 8
  %437 = load %struct.TYPE_35__*, %struct.TYPE_35__** %15, align 8
  %438 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load %struct.TYPE_37__*, %struct.TYPE_37__** %12, align 8
  %441 = call i32 @ngx_free_chain(i32 %439, %struct.TYPE_37__* %440)
  br label %442

442:                                              ; preds = %431, %416
  %443 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %444 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %445 = call i64 @ngx_http_v2_filter_send(%struct.TYPE_36__* %443, %struct.TYPE_32__* %444)
  %446 = load i64, i64* @NGX_ERROR, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %448, label %450

448:                                              ; preds = %442
  %449 = load %struct.TYPE_37__*, %struct.TYPE_37__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_37__* %449, %struct.TYPE_37__** %4, align 8
  br label %470

450:                                              ; preds = %442
  %451 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %452 = icmp ne %struct.TYPE_37__* %451, null
  br i1 %452, label %453, label %468

453:                                              ; preds = %450
  %454 = load %struct.TYPE_34__*, %struct.TYPE_34__** %20, align 8
  %455 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %456 = call i64 @ngx_http_v2_flow_control(%struct.TYPE_34__* %454, %struct.TYPE_32__* %455)
  %457 = load i64, i64* @NGX_DECLINED, align 8
  %458 = icmp eq i64 %456, %457
  br i1 %458, label %459, label %468

459:                                              ; preds = %453
  %460 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %461 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %460, i32 0, i32 0
  %462 = load %struct.TYPE_31__*, %struct.TYPE_31__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %462, i32 0, i32 0
  store i32 1, i32* %463, align 8
  %464 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %465 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %464, i32 0, i32 0
  %466 = load %struct.TYPE_31__*, %struct.TYPE_31__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %466, i32 0, i32 1
  store i64 0, i64* %467, align 8
  br label %468

468:                                              ; preds = %459, %453, %450
  %469 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  store %struct.TYPE_37__* %469, %struct.TYPE_37__** %4, align 8
  br label %470

470:                                              ; preds = %468, %448, %429, %372, %342, %311, %268, %258, %125, %101, %88, %60
  %471 = load %struct.TYPE_37__*, %struct.TYPE_37__** %4, align 8
  ret %struct.TYPE_37__* %471
}

declare dso_local i64 @ngx_buf_size(%struct.TYPE_30__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_v2_flow_control(%struct.TYPE_34__*, %struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_37__* @ngx_http_v2_filter_get_shadow(%struct.TYPE_32__*, %struct.TYPE_30__*, i64, i64) #1

declare dso_local %struct.TYPE_37__* @ngx_alloc_chain_link(i32) #1

declare dso_local i64 @ngx_buf_in_memory(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_33__* @ngx_http_get_module_loc_conf(%struct.TYPE_35__*, i32) #1

declare dso_local i32* @ngx_http_v2_create_trailers_frame(%struct.TYPE_35__*) #1

declare dso_local i32* @ngx_http_v2_filter_get_data_frame(%struct.TYPE_32__*, i64, %struct.TYPE_37__*, %struct.TYPE_37__*) #1

declare dso_local i32 @ngx_http_v2_queue_frame(%struct.TYPE_34__*, i32*) #1

declare dso_local i32 @ngx_free_chain(i32, %struct.TYPE_37__*) #1

declare dso_local i64 @ngx_http_v2_filter_send(%struct.TYPE_36__*, %struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
