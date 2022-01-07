; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolver_report_srv.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolver_report_srv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i64, i64, i64, i32 (%struct.TYPE_19__*)*, %struct.TYPE_20__*, i8*, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { i64, i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i64, i64, i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_RESOLVE_NXDOMAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_19__*)* @ngx_resolver_report_srv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_resolver_report_srv(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_20__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  store %struct.TYPE_18__* %19, %struct.TYPE_18__** %16, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %6, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %68, %2
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %23
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NGX_ERROR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %27
  %36 = load i64, i64* @NGX_ERROR, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = call i8* (...) @ngx_time()
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %35
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  br label %49

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi i32 [ %47, %44 ], [ 10, %48 ]
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %39, i64 %51
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 5
  store i8* %52, i8** %54, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 3
  %57 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %56, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %59 = call i32 %57(%struct.TYPE_19__* %58)
  br label %349

60:                                               ; preds = %27
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %60
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %23

71:                                               ; preds = %23
  %72 = load i64, i64* %5, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %123

74:                                               ; preds = %71
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i64 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  store i64 0, i64* %8, align 8
  br label %81

81:                                               ; preds = %98, %74
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %6, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NGX_RESOLVE_NXDOMAIN, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  %94 = load i64, i64* @NGX_RESOLVE_NXDOMAIN, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %101

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %8, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %8, align 8
  br label %81

101:                                              ; preds = %93, %81
  %102 = call i8* (...) @ngx_time()
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  br label %112

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %107
  %113 = phi i32 [ %110, %107 ], [ 10, %111 ]
  %114 = sext i32 %113 to i64
  %115 = getelementptr i8, i8* %102, i64 %114
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 5
  store i8* %115, i8** %117, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 3
  %120 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %119, align 8
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %122 = call i32 %120(%struct.TYPE_19__* %121)
  br label %349

123:                                              ; preds = %71
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %125 = load i64, i64* %5, align 8
  %126 = mul i64 %125, 32
  %127 = call %struct.TYPE_20__* @ngx_resolver_calloc(%struct.TYPE_17__* %124, i64 %126)
  store %struct.TYPE_20__* %127, %struct.TYPE_20__** %15, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %129 = icmp eq %struct.TYPE_20__* %128, null
  br i1 %129, label %130, label %155

130:                                              ; preds = %123
  %131 = load i64, i64* @NGX_ERROR, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = call i8* (...) @ngx_time()
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %130
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  br label %144

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %139
  %145 = phi i32 [ %142, %139 ], [ 10, %143 ]
  %146 = sext i32 %145 to i64
  %147 = getelementptr i8, i8* %134, i64 %146
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 5
  store i8* %147, i8** %149, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 3
  %152 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %151, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %154 = call i32 %152(%struct.TYPE_19__* %153)
  br label %349

155:                                              ; preds = %123
  store i64 0, i64* %8, align 8
  store i64 0, i64* %13, align 8
  br label %156

156:                                              ; preds = %325, %155
  store i64 0, i64* %7, align 8
  %157 = load i64, i64* %8, align 8
  store i64 %157, i64* %9, align 8
  br label %158

158:                                              ; preds = %189, %156
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* %6, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %162, label %192

162:                                              ; preds = %158
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %164 = load i64, i64* %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %169 = load i64, i64* %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %167, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %162
  br label %192

175:                                              ; preds = %162
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %177 = load i64, i64* %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %182 = load i64, i64* %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = mul i64 %180, %185
  %187 = load i64, i64* %7, align 8
  %188 = add i64 %187, %186
  store i64 %188, i64* %7, align 8
  br label %189

189:                                              ; preds = %175
  %190 = load i64, i64* %9, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %9, align 8
  br label %158

192:                                              ; preds = %174, %158
  %193 = load i64, i64* %7, align 8
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  br label %323

196:                                              ; preds = %192
  %197 = call i64 (...) @ngx_random()
  %198 = load i64, i64* %7, align 8
  %199 = urem i64 %197, %198
  store i64 %199, i64* %14, align 8
  %200 = load i64, i64* %8, align 8
  store i64 %200, i64* %10, align 8
  br label %201

201:                                              ; preds = %234, %196
  %202 = load i64, i64* %10, align 8
  %203 = load i64, i64* %9, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %237

205:                                              ; preds = %201
  %206 = load i64, i64* %14, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %208 = load i64, i64* %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %213 = load i64, i64* %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = mul i64 %211, %216
  %218 = icmp ult i64 %206, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %205
  br label %237

220:                                              ; preds = %205
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %222 = load i64, i64* %10, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %227 = load i64, i64* %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = mul i64 %225, %230
  %232 = load i64, i64* %14, align 8
  %233 = sub i64 %232, %231
  store i64 %233, i64* %14, align 8
  br label %234

234:                                              ; preds = %220
  %235 = load i64, i64* %10, align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* %10, align 8
  br label %201

237:                                              ; preds = %219, %201
  %238 = load i64, i64* %8, align 8
  store i64 %238, i64* %11, align 8
  br label %239

239:                                              ; preds = %319, %237
  %240 = load i64, i64* %11, align 8
  %241 = load i64, i64* %9, align 8
  %242 = icmp ult i64 %240, %241
  br i1 %242, label %243, label %322

243:                                              ; preds = %239
  store i64 0, i64* %12, align 8
  br label %244

244:                                              ; preds = %308, %243
  %245 = load i64, i64* %12, align 8
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %247 = load i64, i64* %10, align 8
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp ult i64 %245, %250
  br i1 %251, label %252, label %311

252:                                              ; preds = %244
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %254 = load i64, i64* %10, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 5
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %256, align 8
  %258 = load i64, i64* %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %263 = load i64, i64* %13, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 4
  store i32 %261, i32* %265, align 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %267 = load i64, i64* %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 5
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %269, align 8
  %271 = load i64, i64* %12, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %276 = load i64, i64* %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 3
  store i32 %274, i32* %278, align 4
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %280 = load i64, i64* %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %285 = load i64, i64* %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 2
  store i32 %283, i32* %287, align 8
  %288 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %289 = load i64, i64* %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %288, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %294 = load i64, i64* %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 0
  store i64 %292, i64* %296, align 8
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %298 = load i64, i64* %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %299, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %303 = load i64, i64* %13, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %302, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 1
  store i64 %301, i64* %305, align 8
  %306 = load i64, i64* %13, align 8
  %307 = add i64 %306, 1
  store i64 %307, i64* %13, align 8
  br label %308

308:                                              ; preds = %252
  %309 = load i64, i64* %12, align 8
  %310 = add i64 %309, 1
  store i64 %310, i64* %12, align 8
  br label %244

311:                                              ; preds = %244
  %312 = load i64, i64* %10, align 8
  %313 = add i64 %312, 1
  store i64 %313, i64* %10, align 8
  %314 = load i64, i64* %9, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %318

316:                                              ; preds = %311
  %317 = load i64, i64* %8, align 8
  store i64 %317, i64* %10, align 8
  br label %318

318:                                              ; preds = %316, %311
  br label %319

319:                                              ; preds = %318
  %320 = load i64, i64* %11, align 8
  %321 = add i64 %320, 1
  store i64 %321, i64* %11, align 8
  br label %239

322:                                              ; preds = %239
  br label %323

323:                                              ; preds = %322, %195
  %324 = load i64, i64* %9, align 8
  store i64 %324, i64* %8, align 8
  br label %325

325:                                              ; preds = %323
  %326 = load i64, i64* %8, align 8
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp ult i64 %326, %329
  br i1 %330, label %156, label %331

331:                                              ; preds = %325
  %332 = load i64, i64* @NGX_OK, align 8
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %333, i32 0, i32 1
  store i64 %332, i64* %334, align 8
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %336 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 4
  store %struct.TYPE_20__* %335, %struct.TYPE_20__** %337, align 8
  %338 = load i64, i64* %5, align 8
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %339, i32 0, i32 2
  store i64 %338, i64* %340, align 8
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 3
  %343 = load i32 (%struct.TYPE_19__*)*, i32 (%struct.TYPE_19__*)** %342, align 8
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %345 = call i32 %343(%struct.TYPE_19__* %344)
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %347 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  %348 = call i32 @ngx_resolver_free(%struct.TYPE_17__* %346, %struct.TYPE_20__* %347)
  br label %349

349:                                              ; preds = %331, %144, %112, %49
  ret void
}

declare dso_local i8* @ngx_time(...) #1

declare dso_local %struct.TYPE_20__* @ngx_resolver_calloc(%struct.TYPE_17__*, i64) #1

declare dso_local i64 @ngx_random(...) #1

declare dso_local i32 @ngx_resolver_free(%struct.TYPE_17__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
