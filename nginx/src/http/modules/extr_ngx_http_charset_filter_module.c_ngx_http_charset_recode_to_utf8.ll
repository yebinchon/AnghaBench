; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_recode_to_utf8.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_recode_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64*, i64*, i64*, %struct.TYPE_14__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i64*, i64 }

@NGX_UTF_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, %struct.TYPE_14__*, %struct.TYPE_12__*)* @ngx_http_charset_recode_to_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @ngx_http_charset_recode_to_utf8(i32* %0, %struct.TYPE_14__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__**, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %13, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %11, align 8
  br label %24

24:                                               ; preds = %41, %3
  %25 = load i64*, i64** %11, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = icmp ult i64* %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load i64*, i64** %13, align 8
  %32 = load i64*, i64** %11, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NGX_UTF_LEN, align 8
  %35 = mul i64 %33, %34
  %36 = getelementptr inbounds i64, i64* %31, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %41

40:                                               ; preds = %30
  br label %57

41:                                               ; preds = %39
  %42 = load i64*, i64** %11, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %11, align 8
  br label %24

44:                                               ; preds = %24
  %45 = load i32*, i32** %5, align 8
  %46 = call %struct.TYPE_13__* @ngx_alloc_chain_link(i32* %45)
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %15, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %48 = icmp eq %struct.TYPE_13__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %282

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store %struct.TYPE_14__* %51, %struct.TYPE_14__** %53, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %55, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %4, align 8
  br label %282

57:                                               ; preds = %40
  %58 = load i64*, i64** %11, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = ptrtoint i64* %58 to i64
  %63 = ptrtoint i64* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 8
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %8, align 8
  %67 = icmp ugt i64 %66, 512
  br i1 %67, label %68, label %129

68:                                               ; preds = %57
  %69 = load i32*, i32** %5, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = call %struct.TYPE_13__* @ngx_http_charset_get_buf(i32* %69, %struct.TYPE_12__* %70)
  store %struct.TYPE_13__* %71, %struct.TYPE_13__** %15, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %73 = icmp eq %struct.TYPE_13__* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %282

75:                                               ; preds = %68
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %14, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 7
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  store i64* %101, i64** %103, align 8
  %104 = load i64*, i64** %11, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 1
  store i64* %104, i64** %106, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  store %struct.TYPE_14__* %107, %struct.TYPE_14__** %109, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %111, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i64*, i64** %113, align 8
  %115 = load i64*, i64** %11, align 8
  %116 = ptrtoint i64* %114 to i64
  %117 = ptrtoint i64* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 8
  store i64 %119, i64* %9, align 8
  %120 = load i64, i64* %9, align 8
  %121 = udiv i64 %120, 2
  %122 = load i64, i64* %9, align 8
  %123 = udiv i64 %122, 2
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = mul i64 %123, %126
  %128 = add i64 %121, %127
  store i64 %128, i64* %9, align 8
  br label %152

129:                                              ; preds = %57
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %15, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load i64*, i64** %131, align 8
  %133 = load i64*, i64** %11, align 8
  %134 = ptrtoint i64* %132 to i64
  %135 = ptrtoint i64* %133 to i64
  %136 = sub i64 %134, %135
  %137 = sdiv exact i64 %136, 8
  store i64 %137, i64* %9, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %9, align 8
  %140 = udiv i64 %139, 2
  %141 = add i64 %138, %140
  %142 = load i64, i64* %9, align 8
  %143 = udiv i64 %142, 2
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = mul i64 %143, %146
  %148 = add i64 %141, %147
  store i64 %148, i64* %9, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  store i64* %151, i64** %11, align 8
  br label %152

152:                                              ; preds = %129, %75
  %153 = load i32*, i32** %5, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %155 = load i64, i64* %9, align 8
  %156 = call %struct.TYPE_13__* @ngx_http_charset_get_buffer(i32* %153, %struct.TYPE_12__* %154, i64 %155)
  store %struct.TYPE_13__* %156, %struct.TYPE_13__** %16, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %158 = icmp eq %struct.TYPE_13__* %157, null
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %282

160:                                              ; preds = %152
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %162 = icmp ne %struct.TYPE_13__* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  store %struct.TYPE_13__* %164, %struct.TYPE_13__** %166, align 8
  br label %169

167:                                              ; preds = %160
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %15, align 8
  br label %169

169:                                              ; preds = %167, %163
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  store %struct.TYPE_13__** %171, %struct.TYPE_13__*** %17, align 8
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  store %struct.TYPE_14__* %174, %struct.TYPE_14__** %14, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 0
  %177 = load i64*, i64** %176, align 8
  store i64* %177, i64** %12, align 8
  br label %178

178:                                              ; preds = %258, %169
  %179 = load i64*, i64** %11, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i64*, i64** %181, align 8
  %183 = icmp ult i64* %179, %182
  br i1 %183, label %184, label %259

184:                                              ; preds = %178
  %185 = load i64*, i64** %13, align 8
  %186 = load i64*, i64** %11, align 8
  %187 = getelementptr inbounds i64, i64* %186, i32 1
  store i64* %187, i64** %11, align 8
  %188 = load i64, i64* %186, align 8
  %189 = load i64, i64* @NGX_UTF_LEN, align 8
  %190 = mul i64 %188, %189
  %191 = getelementptr inbounds i64, i64* %185, i64 %190
  store i64* %191, i64** %10, align 8
  %192 = load i64*, i64** %10, align 8
  %193 = getelementptr inbounds i64, i64* %192, i32 1
  store i64* %193, i64** %10, align 8
  %194 = load i64, i64* %192, align 8
  store i64 %194, i64* %8, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 2
  %197 = load i64*, i64** %196, align 8
  %198 = load i64*, i64** %12, align 8
  %199 = ptrtoint i64* %197 to i64
  %200 = ptrtoint i64* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sdiv exact i64 %201, 8
  %203 = load i64, i64* %8, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %246

205:                                              ; preds = %184
  %206 = load i64*, i64** %12, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 1
  store i64* %206, i64** %208, align 8
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 1
  %211 = load i64*, i64** %210, align 8
  %212 = load i64*, i64** %11, align 8
  %213 = ptrtoint i64* %211 to i64
  %214 = ptrtoint i64* %212 to i64
  %215 = sub i64 %213, %214
  %216 = sdiv exact i64 %215, 8
  store i64 %216, i64* %9, align 8
  %217 = load i64, i64* %8, align 8
  %218 = load i64, i64* %9, align 8
  %219 = udiv i64 %218, 2
  %220 = add i64 %217, %219
  %221 = load i64, i64* %9, align 8
  %222 = udiv i64 %221, 2
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = mul i64 %222, %225
  %227 = add i64 %220, %226
  store i64 %227, i64* %9, align 8
  %228 = load i32*, i32** %5, align 8
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %230 = load i64, i64* %9, align 8
  %231 = call %struct.TYPE_13__* @ngx_http_charset_get_buffer(i32* %228, %struct.TYPE_12__* %229, i64 %230)
  store %struct.TYPE_13__* %231, %struct.TYPE_13__** %16, align 8
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %233 = icmp eq %struct.TYPE_13__* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %205
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %4, align 8
  br label %282

235:                                              ; preds = %205
  %236 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %237 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %17, align 8
  store %struct.TYPE_13__* %236, %struct.TYPE_13__** %237, align 8
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  store %struct.TYPE_13__** %239, %struct.TYPE_13__*** %17, align 8
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %241, align 8
  store %struct.TYPE_14__* %242, %struct.TYPE_14__** %14, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  store i64* %245, i64** %12, align 8
  br label %246

246:                                              ; preds = %235, %184
  br label %247

247:                                              ; preds = %250, %246
  %248 = load i64, i64* %8, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %258

250:                                              ; preds = %247
  %251 = load i64*, i64** %10, align 8
  %252 = getelementptr inbounds i64, i64* %251, i32 1
  store i64* %252, i64** %10, align 8
  %253 = load i64, i64* %251, align 8
  %254 = load i64*, i64** %12, align 8
  %255 = getelementptr inbounds i64, i64* %254, i32 1
  store i64* %255, i64** %12, align 8
  store i64 %253, i64* %254, align 8
  %256 = load i64, i64* %8, align 8
  %257 = add i64 %256, -1
  store i64 %257, i64* %8, align 8
  br label %247

258:                                              ; preds = %247
  br label %178

259:                                              ; preds = %178
  %260 = load i64*, i64** %12, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  store i64* %260, i64** %262, align 8
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 6
  store i32 %265, i32* %267, align 8
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 5
  store i32 %270, i32* %272, align 4
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 4
  store i32 %275, i32* %277, align 8
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 3
  store %struct.TYPE_14__* %278, %struct.TYPE_14__** %280, align 8
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %281, %struct.TYPE_13__** %4, align 8
  br label %282

282:                                              ; preds = %259, %234, %159, %74, %50, %49
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  ret %struct.TYPE_13__* %283
}

declare dso_local %struct.TYPE_13__* @ngx_alloc_chain_link(i32*) #1

declare dso_local %struct.TYPE_13__* @ngx_http_charset_get_buf(i32*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @ngx_http_charset_get_buffer(i32*, %struct.TYPE_12__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
