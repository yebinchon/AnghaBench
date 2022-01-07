; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_strfilter_convert_append_bucket.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_filters.c_strfilter_convert_append_bucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i32, i32 }

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"stream filter (%s): invalid byte sequence\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"stream filter (%s): insufficient buffer\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"stream filter (%s): unexpected end of stream\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"stream filter (%s): unknown error\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"stream filter (%s): unexpected octet values\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*, i32*, i8*, i64, i64*, i32)* @strfilter_convert_append_bucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strfilter_convert_append_bucket(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i8* %4, i64 %5, i64* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8* %4, i8** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64* %6, i64** %16, align 8
  store i32 %7, i32* %17, align 4
  store i8* null, i8** %20, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %8
  store i64 64, i64* %27, align 8
  store i64 1, i64* %25, align 8
  br label %38

35:                                               ; preds = %8
  %36 = load i64, i64* %15, align 8
  store i64 %36, i64* %27, align 8
  %37 = load i64, i64* %15, align 8
  store i64 %37, i64* %25, align 8
  br label %38

38:                                               ; preds = %35, %34
  %39 = load i64, i64* %27, align 8
  store i64 %39, i64* %24, align 8
  store i64 %39, i64* %21, align 8
  %40 = load i64, i64* %21, align 8
  %41 = load i32, i32* %17, align 4
  %42 = call i8* @pemalloc(i64 %40, i32 %41)
  store i8* %42, i8** %20, align 8
  %43 = load i8*, i8** %20, align 8
  store i8* %43, i8** %22, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ugt i64 %46, 0
  br i1 %47, label %48, label %179

48:                                               ; preds = %38
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %23, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %26, align 8
  br label %55

55:                                               ; preds = %168, %48
  %56 = load i64, i64* %26, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %169

58:                                               ; preds = %55
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @php_conv_convert(i32 %61, i8** %23, i64* %26, i8** %22, i64* %24)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  switch i32 %63, label %167 [
    i32 132, label %64
    i32 131, label %70
    i32 129, label %110
    i32 130, label %116
    i32 128, label %161
  ]

64:                                               ; preds = %58
  %65 = load i32, i32* @E_WARNING, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @php_error_docref(i32* null, i32 %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %324

70:                                               ; preds = %58
  %71 = load i8*, i8** %14, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %109

73:                                               ; preds = %70
  %74 = load i64, i64* %25, align 8
  %75 = icmp ugt i64 %74, 0
  br i1 %75, label %76, label %107

76:                                               ; preds = %73
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp uge i64 %79, 8
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @E_WARNING, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @php_error_docref(i32* null, i32 %82, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %324

87:                                               ; preds = %76
  %88 = load i8*, i8** %14, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %14, align 8
  %90 = load i8, i8* %88, align 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 %90, i8* %98, align 1
  %99 = load i64, i64* %25, align 8
  %100 = add i64 %99, -1
  store i64 %100, i64* %25, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %23, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %26, align 8
  br label %108

107:                                              ; preds = %73
  store i64 0, i64* %26, align 8
  br label %168

108:                                              ; preds = %87
  br label %109

109:                                              ; preds = %108, %70
  br label %168

110:                                              ; preds = %58
  %111 = load i32, i32* @E_WARNING, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @php_error_docref(i32* null, i32 %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  br label %324

116:                                              ; preds = %58
  %117 = load i64, i64* %21, align 8
  %118 = shl i64 %117, 1
  store i64 %118, i64* %29, align 8
  %119 = load i64, i64* %29, align 8
  %120 = load i64, i64* %21, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %116
  %123 = load i32*, i32** %11, align 8
  %124 = load i8*, i8** %20, align 8
  %125 = load i64, i64* %21, align 8
  %126 = load i64, i64* %24, align 8
  %127 = sub i64 %125, %126
  %128 = load i32, i32* %17, align 4
  %129 = call i32* @php_stream_bucket_new(i32* %123, i8* %124, i64 %127, i32 1, i32 %128)
  store i32* %129, i32** %19, align 8
  %130 = icmp eq i32* null, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %324

132:                                              ; preds = %122
  %133 = load i32*, i32** %13, align 8
  %134 = load i32*, i32** %19, align 8
  %135 = call i32 @php_stream_bucket_append(i32* %133, i32* %134)
  %136 = load i64, i64* %27, align 8
  store i64 %136, i64* %24, align 8
  store i64 %136, i64* %21, align 8
  %137 = load i64, i64* %21, align 8
  %138 = load i32, i32* %17, align 4
  %139 = call i8* @pemalloc(i64 %137, i32 %138)
  store i8* %139, i8** %20, align 8
  %140 = load i8*, i8** %20, align 8
  store i8* %140, i8** %22, align 8
  br label %160

141:                                              ; preds = %116
  %142 = load i8*, i8** %20, align 8
  %143 = load i64, i64* %29, align 8
  %144 = load i32, i32* %17, align 4
  %145 = call i8* @perealloc(i8* %142, i64 %143, i32 %144)
  store i8* %145, i8** %28, align 8
  %146 = load i8*, i8** %28, align 8
  %147 = load i8*, i8** %22, align 8
  %148 = load i8*, i8** %20, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = getelementptr inbounds i8, i8* %146, i64 %151
  store i8* %152, i8** %22, align 8
  %153 = load i64, i64* %29, align 8
  %154 = load i64, i64* %21, align 8
  %155 = sub i64 %153, %154
  %156 = load i64, i64* %24, align 8
  %157 = add i64 %156, %155
  store i64 %157, i64* %24, align 8
  %158 = load i8*, i8** %28, align 8
  store i8* %158, i8** %20, align 8
  %159 = load i64, i64* %29, align 8
  store i64 %159, i64* %21, align 8
  br label %160

160:                                              ; preds = %141, %132
  br label %168

161:                                              ; preds = %58
  %162 = load i32, i32* @E_WARNING, align 4
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @php_error_docref(i32* null, i32 %162, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  br label %324

167:                                              ; preds = %58
  br label %168

168:                                              ; preds = %167, %160, %109, %107
  br label %55

169:                                              ; preds = %55
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = load i8*, i8** %23, align 8
  %174 = load i64, i64* %26, align 8
  %175 = call i32 @memmove(i8* %172, i8* %173, i64 %174)
  %176 = load i64, i64* %26, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %169, %38
  br label %180

180:                                              ; preds = %293, %179
  %181 = load i64, i64* %25, align 8
  %182 = icmp ugt i64 %181, 0
  br i1 %182, label %183, label %294

183:                                              ; preds = %180
  %184 = load i8*, i8** %14, align 8
  %185 = icmp eq i8* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @php_conv_convert(i32 %189, i8** null, i64* null, i8** %22, i64* %24)
  br label %196

191:                                              ; preds = %183
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @php_conv_convert(i32 %194, i8** %14, i64* %25, i8** %22, i64* %24)
  br label %196

196:                                              ; preds = %191, %186
  %197 = phi i32 [ %190, %186 ], [ %195, %191 ]
  store i32 %197, i32* %18, align 4
  %198 = load i32, i32* %18, align 4
  switch i32 %198, label %288 [
    i32 132, label %199
    i32 131, label %205
    i32 130, label %237
    i32 128, label %282
  ]

199:                                              ; preds = %196
  %200 = load i32, i32* @E_WARNING, align 4
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @php_error_docref(i32* null, i32 %200, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %203)
  br label %324

205:                                              ; preds = %196
  %206 = load i8*, i8** %14, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %230

208:                                              ; preds = %205
  %209 = load i64, i64* %25, align 8
  %210 = icmp ugt i64 %209, 8
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load i32, i32* @E_WARNING, align 4
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @php_error_docref(i32* null, i32 %212, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %215)
  br label %324

217:                                              ; preds = %208
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = load i8*, i8** %14, align 8
  %222 = load i64, i64* %25, align 8
  %223 = call i32 @memcpy(i8* %220, i8* %221, i64 %222)
  %224 = load i64, i64* %25, align 8
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  store i64 %224, i64* %226, align 8
  %227 = load i64, i64* %25, align 8
  %228 = load i8*, i8** %14, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 %227
  store i8* %229, i8** %14, align 8
  store i64 0, i64* %25, align 8
  br label %236

230:                                              ; preds = %205
  %231 = load i32, i32* @E_WARNING, align 4
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @php_error_docref(i32* null, i32 %231, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %234)
  br label %324

236:                                              ; preds = %217
  br label %293

237:                                              ; preds = %196
  %238 = load i64, i64* %21, align 8
  %239 = shl i64 %238, 1
  store i64 %239, i64* %31, align 8
  %240 = load i64, i64* %31, align 8
  %241 = load i64, i64* %21, align 8
  %242 = icmp ult i64 %240, %241
  br i1 %242, label %243, label %262

243:                                              ; preds = %237
  %244 = load i32*, i32** %11, align 8
  %245 = load i8*, i8** %20, align 8
  %246 = load i64, i64* %21, align 8
  %247 = load i64, i64* %24, align 8
  %248 = sub i64 %246, %247
  %249 = load i32, i32* %17, align 4
  %250 = call i32* @php_stream_bucket_new(i32* %244, i8* %245, i64 %248, i32 1, i32 %249)
  store i32* %250, i32** %19, align 8
  %251 = icmp eq i32* null, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %243
  br label %324

253:                                              ; preds = %243
  %254 = load i32*, i32** %13, align 8
  %255 = load i32*, i32** %19, align 8
  %256 = call i32 @php_stream_bucket_append(i32* %254, i32* %255)
  %257 = load i64, i64* %27, align 8
  store i64 %257, i64* %24, align 8
  store i64 %257, i64* %21, align 8
  %258 = load i64, i64* %21, align 8
  %259 = load i32, i32* %17, align 4
  %260 = call i8* @pemalloc(i64 %258, i32 %259)
  store i8* %260, i8** %20, align 8
  %261 = load i8*, i8** %20, align 8
  store i8* %261, i8** %22, align 8
  br label %281

262:                                              ; preds = %237
  %263 = load i8*, i8** %20, align 8
  %264 = load i64, i64* %31, align 8
  %265 = load i32, i32* %17, align 4
  %266 = call i8* @perealloc(i8* %263, i64 %264, i32 %265)
  store i8* %266, i8** %30, align 8
  %267 = load i8*, i8** %30, align 8
  %268 = load i8*, i8** %22, align 8
  %269 = load i8*, i8** %20, align 8
  %270 = ptrtoint i8* %268 to i64
  %271 = ptrtoint i8* %269 to i64
  %272 = sub i64 %270, %271
  %273 = getelementptr inbounds i8, i8* %267, i64 %272
  store i8* %273, i8** %22, align 8
  %274 = load i64, i64* %31, align 8
  %275 = load i64, i64* %21, align 8
  %276 = sub i64 %274, %275
  %277 = load i64, i64* %24, align 8
  %278 = add i64 %277, %276
  store i64 %278, i64* %24, align 8
  %279 = load i8*, i8** %30, align 8
  store i8* %279, i8** %20, align 8
  %280 = load i64, i64* %31, align 8
  store i64 %280, i64* %21, align 8
  br label %281

281:                                              ; preds = %262, %253
  br label %293

282:                                              ; preds = %196
  %283 = load i32, i32* @E_WARNING, align 4
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = call i32 @php_error_docref(i32* null, i32 %283, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %286)
  br label %324

288:                                              ; preds = %196
  %289 = load i8*, i8** %14, align 8
  %290 = icmp eq i8* %289, null
  br i1 %290, label %291, label %292

291:                                              ; preds = %288
  store i64 0, i64* %25, align 8
  br label %292

292:                                              ; preds = %291, %288
  br label %293

293:                                              ; preds = %292, %281, %236
  br label %180

294:                                              ; preds = %180
  %295 = load i64, i64* %21, align 8
  %296 = load i64, i64* %24, align 8
  %297 = icmp ugt i64 %295, %296
  br i1 %297, label %298, label %312

298:                                              ; preds = %294
  %299 = load i32*, i32** %11, align 8
  %300 = load i8*, i8** %20, align 8
  %301 = load i64, i64* %21, align 8
  %302 = load i64, i64* %24, align 8
  %303 = sub i64 %301, %302
  %304 = load i32, i32* %17, align 4
  %305 = call i32* @php_stream_bucket_new(i32* %299, i8* %300, i64 %303, i32 1, i32 %304)
  store i32* %305, i32** %19, align 8
  %306 = icmp eq i32* null, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %298
  br label %324

308:                                              ; preds = %298
  %309 = load i32*, i32** %13, align 8
  %310 = load i32*, i32** %19, align 8
  %311 = call i32 @php_stream_bucket_append(i32* %309, i32* %310)
  br label %316

312:                                              ; preds = %294
  %313 = load i8*, i8** %20, align 8
  %314 = load i32, i32* %17, align 4
  %315 = call i32 @pefree(i8* %313, i32 %314)
  br label %316

316:                                              ; preds = %312, %308
  %317 = load i64, i64* %15, align 8
  %318 = load i64, i64* %25, align 8
  %319 = sub i64 %317, %318
  %320 = load i64*, i64** %16, align 8
  %321 = load i64, i64* %320, align 8
  %322 = add i64 %321, %319
  store i64 %322, i64* %320, align 8
  %323 = load i32, i32* @SUCCESS, align 4
  store i32 %323, i32* %9, align 4
  br label %329

324:                                              ; preds = %307, %282, %252, %230, %211, %199, %161, %131, %110, %81, %64
  %325 = load i8*, i8** %20, align 8
  %326 = load i32, i32* %17, align 4
  %327 = call i32 @pefree(i8* %325, i32 %326)
  %328 = load i32, i32* @FAILURE, align 4
  store i32 %328, i32* %9, align 4
  br label %329

329:                                              ; preds = %324, %316
  %330 = load i32, i32* %9, align 4
  ret i32 %330
}

declare dso_local i8* @pemalloc(i64, i32) #1

declare dso_local i32 @php_conv_convert(i32, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32) #1

declare dso_local i32* @php_stream_bucket_new(i32*, i8*, i64, i32, i32) #1

declare dso_local i32 @php_stream_bucket_append(i32*, i32*) #1

declare dso_local i8* @perealloc(i8*, i64, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @pefree(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
