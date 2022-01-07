; ModuleID = '/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo_add_range.c'
source_filename = "/home/carl/AnghaBench/nginx/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo_add_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32, i8*, i8* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"duplicate range \22%V\22, value: \22%v\22, old value: \22%v\22\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"range \22%V\22 overlaps \22%d.%d.%d.%d-%d.%d.%d.%d\22\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_13__*, i32, i32)* @ngx_http_geo_add_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_geo_add_range(i32* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %532, %4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %536

22:                                               ; preds = %18
  %23 = load i32, i32* %10, align 4
  %24 = ashr i32 %23, 16
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %30, 65535
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %13, align 8
  br label %34

33:                                               ; preds = %22
  store i64 0, i64* %13, align 8
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, 65535
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 65535
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %14, align 8
  br label %44

43:                                               ; preds = %34
  store i64 65535, i64* %14, align 8
  br label %44

44:                                               ; preds = %43, %39
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %48, i64 %49
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = bitcast %struct.TYPE_12__* %51 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %15, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %54 = icmp eq %struct.TYPE_14__* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %44
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.TYPE_14__* @ngx_array_create(i32 %58, i32 64, i32 24)
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %15, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %61 = icmp eq %struct.TYPE_14__* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %63, i8** %5, align 8
  br label %538

64:                                               ; preds = %55
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %66 = bitcast %struct.TYPE_14__* %65 to %struct.TYPE_12__*
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %70, i64 %71
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %72, align 8
  br label %73

73:                                               ; preds = %64, %44
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %12, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  store %struct.TYPE_12__* %79, %struct.TYPE_12__** %16, align 8
  br label %80

80:                                               ; preds = %94, %73
  %81 = load i64, i64* %12, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %489

83:                                               ; preds = %80
  %84 = load i64, i64* %12, align 8
  %85 = add i64 %84, -1
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %14, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i8*, i8** %90, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = icmp ult i64 %86, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %80

95:                                               ; preds = %83
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = ptrtoint i8* %101 to i64
  %103 = icmp ugt i64 %96, %102
  br i1 %103, label %104, label %154

104:                                              ; preds = %95
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %106 = call %struct.TYPE_12__* @ngx_array_push(%struct.TYPE_14__* %105)
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %16, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %108 = icmp eq %struct.TYPE_12__* %107, null
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %110, i8** %5, align 8
  br label %538

111:                                              ; preds = %104
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %16, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %116 = load i64, i64* %12, align 8
  %117 = add i64 %116, 2
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i64 %117
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %120 = load i64, i64* %12, align 8
  %121 = add i64 %120, 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i64 %121
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 %125, 2
  %127 = load i64, i64* %12, align 8
  %128 = sub i64 %126, %127
  %129 = mul i64 %128, 24
  %130 = trunc i64 %129 to i32
  %131 = call i32 @ngx_memmove(%struct.TYPE_12__* %118, %struct.TYPE_12__* %122, i32 %130)
  %132 = load i64, i64* %13, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %135 = load i64, i64* %12, align 8
  %136 = add i64 %135, 1
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  store i8* %133, i8** %138, align 8
  %139 = load i64, i64* %14, align 8
  %140 = inttoptr i64 %139 to i8*
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %142 = load i64, i64* %12, align 8
  %143 = add i64 %142, 1
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  store i8* %140, i8** %145, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %150 = load i64, i64* %12, align 8
  %151 = add i64 %150, 1
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  store i32 %148, i32* %153, align 8
  br label %527

154:                                              ; preds = %95
  %155 = load i64, i64* %13, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %157 = load i64, i64* %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = ptrtoint i8* %160 to i64
  %162 = icmp eq i64 %155, %161
  br i1 %162, label %163, label %196

163:                                              ; preds = %154
  %164 = load i64, i64* %14, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %166 = load i64, i64* %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = ptrtoint i8* %169 to i64
  %171 = icmp eq i64 %164, %170
  br i1 %171, label %172, label %196

172:                                              ; preds = %163
  %173 = load i32, i32* @NGX_LOG_WARN, align 4
  %174 = load i32*, i32** %6, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %183 = load i64, i64* %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = call i32 (i32, i32*, i32, i8*, i32, i64, i64, ...) @ngx_conf_log_error(i32 %173, i32* %174, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %177, i64 %181, i64 %187)
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %193 = load i64, i64* %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 0
  store i32 %191, i32* %195, align 8
  br label %527

196:                                              ; preds = %163, %154
  %197 = load i64, i64* %13, align 8
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %199 = load i64, i64* %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = ptrtoint i8* %202 to i64
  %204 = icmp ugt i64 %197, %203
  br i1 %204, label %205, label %306

205:                                              ; preds = %196
  %206 = load i64, i64* %14, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %208 = load i64, i64* %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = ptrtoint i8* %211 to i64
  %213 = icmp ult i64 %206, %212
  br i1 %213, label %214, label %306

214:                                              ; preds = %205
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %216 = call %struct.TYPE_12__* @ngx_array_push(%struct.TYPE_14__* %215)
  store %struct.TYPE_12__* %216, %struct.TYPE_12__** %16, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %218 = icmp eq %struct.TYPE_12__* %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %214
  %220 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %220, i8** %5, align 8
  br label %538

221:                                              ; preds = %214
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %223 = call %struct.TYPE_12__* @ngx_array_push(%struct.TYPE_14__* %222)
  store %struct.TYPE_12__* %223, %struct.TYPE_12__** %16, align 8
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %225 = icmp eq %struct.TYPE_12__* %224, null
  br i1 %225, label %226, label %228

226:                                              ; preds = %221
  %227 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %227, i8** %5, align 8
  br label %538

228:                                              ; preds = %221
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %230, align 8
  store %struct.TYPE_12__* %231, %struct.TYPE_12__** %16, align 8
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %233 = load i64, i64* %12, align 8
  %234 = add i64 %233, 3
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i64 %234
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %237 = load i64, i64* %12, align 8
  %238 = add i64 %237, 1
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i64 %238
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = sub i64 %242, 3
  %244 = load i64, i64* %12, align 8
  %245 = sub i64 %243, %244
  %246 = mul i64 %245, 24
  %247 = trunc i64 %246 to i32
  %248 = call i32 @ngx_memmove(%struct.TYPE_12__* %235, %struct.TYPE_12__* %239, i32 %247)
  %249 = load i64, i64* %14, align 8
  %250 = add i64 %249, 1
  %251 = inttoptr i64 %250 to i8*
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %253 = load i64, i64* %12, align 8
  %254 = add i64 %253, 2
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 2
  store i8* %251, i8** %256, align 8
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %258 = load i64, i64* %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %263 = load i64, i64* %12, align 8
  %264 = add i64 %263, 2
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  store i8* %261, i8** %266, align 8
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %268 = load i64, i64* %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %273 = load i64, i64* %12, align 8
  %274 = add i64 %273, 2
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  store i32 %271, i32* %276, align 8
  %277 = load i64, i64* %13, align 8
  %278 = inttoptr i64 %277 to i8*
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %280 = load i64, i64* %12, align 8
  %281 = add i64 %280, 1
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 2
  store i8* %278, i8** %283, align 8
  %284 = load i64, i64* %14, align 8
  %285 = inttoptr i64 %284 to i8*
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %287 = load i64, i64* %12, align 8
  %288 = add i64 %287, 1
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 1
  store i8* %285, i8** %290, align 8
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %295 = load i64, i64* %12, align 8
  %296 = add i64 %295, 1
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i32 0, i32 0
  store i32 %293, i32* %298, align 8
  %299 = load i64, i64* %13, align 8
  %300 = sub i64 %299, 1
  %301 = inttoptr i64 %300 to i8*
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %303 = load i64, i64* %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 1
  store i8* %301, i8** %305, align 8
  br label %527

306:                                              ; preds = %205, %196
  %307 = load i64, i64* %13, align 8
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %309 = load i64, i64* %12, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 2
  %312 = load i8*, i8** %311, align 8
  %313 = ptrtoint i8* %312 to i64
  %314 = icmp eq i64 %307, %313
  br i1 %314, label %315, label %378

315:                                              ; preds = %306
  %316 = load i64, i64* %14, align 8
  %317 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %318 = load i64, i64* %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 1
  %321 = load i8*, i8** %320, align 8
  %322 = ptrtoint i8* %321 to i64
  %323 = icmp ult i64 %316, %322
  br i1 %323, label %324, label %378

324:                                              ; preds = %315
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %326 = call %struct.TYPE_12__* @ngx_array_push(%struct.TYPE_14__* %325)
  store %struct.TYPE_12__* %326, %struct.TYPE_12__** %16, align 8
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %328 = icmp eq %struct.TYPE_12__* %327, null
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %330, i8** %5, align 8
  br label %538

331:                                              ; preds = %324
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 1
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %333, align 8
  store %struct.TYPE_12__* %334, %struct.TYPE_12__** %16, align 8
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %336 = load i64, i64* %12, align 8
  %337 = add i64 %336, 1
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i64 %337
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %340 = load i64, i64* %12, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i64 %340
  %342 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = sub i64 %344, 1
  %346 = load i64, i64* %12, align 8
  %347 = sub i64 %345, %346
  %348 = mul i64 %347, 24
  %349 = trunc i64 %348 to i32
  %350 = call i32 @ngx_memmove(%struct.TYPE_12__* %338, %struct.TYPE_12__* %341, i32 %349)
  %351 = load i64, i64* %14, align 8
  %352 = add i64 %351, 1
  %353 = inttoptr i64 %352 to i8*
  %354 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %355 = load i64, i64* %12, align 8
  %356 = add i64 %355, 1
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %354, i64 %356
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 2
  store i8* %353, i8** %358, align 8
  %359 = load i64, i64* %13, align 8
  %360 = inttoptr i64 %359 to i8*
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %362 = load i64, i64* %12, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 2
  store i8* %360, i8** %364, align 8
  %365 = load i64, i64* %14, align 8
  %366 = inttoptr i64 %365 to i8*
  %367 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %368 = load i64, i64* %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 1
  store i8* %366, i8** %370, align 8
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %375 = load i64, i64* %12, align 8
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %376, i32 0, i32 0
  store i32 %373, i32* %377, align 8
  br label %527

378:                                              ; preds = %315, %306
  %379 = load i64, i64* %13, align 8
  %380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %381 = load i64, i64* %12, align 8
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %380, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 2
  %384 = load i8*, i8** %383, align 8
  %385 = ptrtoint i8* %384 to i64
  %386 = icmp ugt i64 %379, %385
  br i1 %386, label %387, label %453

387:                                              ; preds = %378
  %388 = load i64, i64* %14, align 8
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %390 = load i64, i64* %12, align 8
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 1
  %393 = load i8*, i8** %392, align 8
  %394 = ptrtoint i8* %393 to i64
  %395 = icmp eq i64 %388, %394
  br i1 %395, label %396, label %453

396:                                              ; preds = %387
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %398 = call %struct.TYPE_12__* @ngx_array_push(%struct.TYPE_14__* %397)
  store %struct.TYPE_12__* %398, %struct.TYPE_12__** %16, align 8
  %399 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %400 = icmp eq %struct.TYPE_12__* %399, null
  br i1 %400, label %401, label %403

401:                                              ; preds = %396
  %402 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %402, i8** %5, align 8
  br label %538

403:                                              ; preds = %396
  %404 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 1
  %406 = load %struct.TYPE_12__*, %struct.TYPE_12__** %405, align 8
  store %struct.TYPE_12__* %406, %struct.TYPE_12__** %16, align 8
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %408 = load i64, i64* %12, align 8
  %409 = add i64 %408, 2
  %410 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %407, i64 %409
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %412 = load i64, i64* %12, align 8
  %413 = add i64 %412, 1
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i64 %413
  %415 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = sub i64 %417, 2
  %419 = load i64, i64* %12, align 8
  %420 = sub i64 %418, %419
  %421 = mul i64 %420, 24
  %422 = trunc i64 %421 to i32
  %423 = call i32 @ngx_memmove(%struct.TYPE_12__* %410, %struct.TYPE_12__* %414, i32 %422)
  %424 = load i64, i64* %13, align 8
  %425 = inttoptr i64 %424 to i8*
  %426 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %427 = load i64, i64* %12, align 8
  %428 = add i64 %427, 1
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %426, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %429, i32 0, i32 2
  store i8* %425, i8** %430, align 8
  %431 = load i64, i64* %14, align 8
  %432 = inttoptr i64 %431 to i8*
  %433 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %434 = load i64, i64* %12, align 8
  %435 = add i64 %434, 1
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i64 %435
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 1
  store i8* %432, i8** %437, align 8
  %438 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %439 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  %441 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %442 = load i64, i64* %12, align 8
  %443 = add i64 %442, 1
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %441, i64 %443
  %445 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %444, i32 0, i32 0
  store i32 %440, i32* %445, align 8
  %446 = load i64, i64* %13, align 8
  %447 = sub i64 %446, 1
  %448 = inttoptr i64 %447 to i8*
  %449 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %450 = load i64, i64* %12, align 8
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %449, i64 %450
  %452 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %451, i32 0, i32 1
  store i8* %448, i8** %452, align 8
  br label %527

453:                                              ; preds = %387, %378
  %454 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %455 = load i64, i64* %12, align 8
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %456, i32 0, i32 2
  %458 = load i8*, i8** %457, align 8
  %459 = ptrtoint i8* %458 to i64
  store i64 %459, i64* %13, align 8
  %460 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %461 = load i64, i64* %12, align 8
  %462 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %460, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %462, i32 0, i32 1
  %464 = load i8*, i8** %463, align 8
  %465 = ptrtoint i8* %464 to i64
  store i64 %465, i64* %14, align 8
  %466 = load i32, i32* @NGX_LOG_EMERG, align 4
  %467 = load i32*, i32** %6, align 8
  %468 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = load i64, i64* %11, align 8
  %472 = lshr i64 %471, 8
  %473 = load i64, i64* %11, align 8
  %474 = and i64 %473, 255
  %475 = load i64, i64* %13, align 8
  %476 = lshr i64 %475, 8
  %477 = load i64, i64* %13, align 8
  %478 = and i64 %477, 255
  %479 = load i64, i64* %11, align 8
  %480 = lshr i64 %479, 8
  %481 = load i64, i64* %11, align 8
  %482 = and i64 %481, 255
  %483 = load i64, i64* %14, align 8
  %484 = lshr i64 %483, 8
  %485 = load i64, i64* %14, align 8
  %486 = and i64 %485, 255
  %487 = call i32 (i32, i32*, i32, i8*, i32, i64, i64, ...) @ngx_conf_log_error(i32 %466, i32* %467, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %470, i64 %472, i64 %474, i64 %476, i64 %478, i64 %480, i64 %482, i64 %484, i64 %486)
  %488 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %488, i8** %5, align 8
  br label %538

489:                                              ; preds = %80
  %490 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %491 = call %struct.TYPE_12__* @ngx_array_push(%struct.TYPE_14__* %490)
  store %struct.TYPE_12__* %491, %struct.TYPE_12__** %16, align 8
  %492 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %493 = icmp eq %struct.TYPE_12__* %492, null
  br i1 %493, label %494, label %496

494:                                              ; preds = %489
  %495 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %495, i8** %5, align 8
  br label %538

496:                                              ; preds = %489
  %497 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %498 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %497, i32 0, i32 1
  %499 = load %struct.TYPE_12__*, %struct.TYPE_12__** %498, align 8
  store %struct.TYPE_12__* %499, %struct.TYPE_12__** %16, align 8
  %500 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %501 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %500, i64 1
  %502 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %503 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %502, i64 0
  %504 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %505 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %504, i32 0, i32 0
  %506 = load i64, i64* %505, align 8
  %507 = sub i64 %506, 1
  %508 = mul i64 %507, 24
  %509 = trunc i64 %508 to i32
  %510 = call i32 @ngx_memmove(%struct.TYPE_12__* %501, %struct.TYPE_12__* %503, i32 %509)
  %511 = load i64, i64* %13, align 8
  %512 = inttoptr i64 %511 to i8*
  %513 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %514 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %513, i64 0
  %515 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %514, i32 0, i32 2
  store i8* %512, i8** %515, align 8
  %516 = load i64, i64* %14, align 8
  %517 = inttoptr i64 %516 to i8*
  %518 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %518, i64 0
  %520 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %519, i32 0, i32 1
  store i8* %517, i8** %520, align 8
  %521 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %522 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 8
  %524 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %525 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %524, i64 0
  %526 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %525, i32 0, i32 0
  store i32 %523, i32* %526, align 8
  br label %527

527:                                              ; preds = %496, %403, %331, %228, %172, %111
  %528 = load i64, i64* %11, align 8
  %529 = icmp eq i64 %528, 65535
  br i1 %529, label %530, label %531

530:                                              ; preds = %527
  br label %536

531:                                              ; preds = %527
  br label %532

532:                                              ; preds = %531
  %533 = load i32, i32* %10, align 4
  %534 = add nsw i32 %533, 65536
  %535 = and i32 %534, -65536
  store i32 %535, i32* %10, align 4
  br label %18

536:                                              ; preds = %530, %18
  %537 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %537, i8** %5, align 8
  br label %538

538:                                              ; preds = %536, %494, %453, %401, %329, %226, %219, %109, %62
  %539 = load i8*, i8** %5, align 8
  ret i8* %539
}

declare dso_local %struct.TYPE_14__* @ngx_array_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @ngx_array_push(%struct.TYPE_14__*) #1

declare dso_local i32 @ngx_memmove(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, i32*, i32, i8*, i32, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
