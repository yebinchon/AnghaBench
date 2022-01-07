; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_sdl_set_uri_credentials.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_php_sdl.c_sdl_set_uri_credentials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@IS_UNDEF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Authorization: Basic\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdl_set_uri_credentials(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %9, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @strstr(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %396

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 3
  %25 = call i8* @strchr(i8* %24, i8 signext 47)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %29 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  br label %45

38:                                               ; preds = %22
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strlen(i8* %43)
  br label %45

45:                                               ; preds = %38, %28
  %46 = phi i64 [ %37, %28 ], [ %44, %38 ]
  store i64 %46, i64* %6, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i8* @strstr(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %48, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %396

52:                                               ; preds = %45
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = call i8* @strchr(i8* %54, i8 signext 47)
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  br label %67

64:                                               ; preds = %52
  %65 = load i8*, i8** %4, align 8
  %66 = call i64 @strlen(i8* %65)
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi i64 [ %63, %58 ], [ %66, %64 ]
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %269

72:                                               ; preds = %67
  %73 = load i64, i64* %6, align 8
  %74 = icmp ugt i64 %73, 11
  br i1 %74, label %75, label %124

75:                                               ; preds = %72
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 58
  br i1 %84, label %85, label %124

85:                                               ; preds = %75
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = sub i64 %91, 3
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 58
  br i1 %96, label %97, label %124

97:                                               ; preds = %85
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = sub i64 %103, 2
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 56
  br i1 %108, label %109, label %124

109:                                              ; preds = %97
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i64, i64* %6, align 8
  %116 = sub i64 %115, 1
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 48
  br i1 %120, label %121, label %124

121:                                              ; preds = %109
  %122 = load i64, i64* %6, align 8
  %123 = sub i64 %122, 3
  store i64 %123, i64* %6, align 8
  br label %124

124:                                              ; preds = %121, %109, %97, %85, %75, %72
  %125 = load i64, i64* %7, align 8
  %126 = icmp ugt i64 %125, 11
  br i1 %126, label %127, label %160

127:                                              ; preds = %124
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 4
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 58
  br i1 %132, label %133, label %160

133:                                              ; preds = %127
  %134 = load i8*, i8** %4, align 8
  %135 = load i64, i64* %7, align 8
  %136 = sub i64 %135, 3
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, 58
  br i1 %140, label %141, label %160

141:                                              ; preds = %133
  %142 = load i8*, i8** %4, align 8
  %143 = load i64, i64* %7, align 8
  %144 = sub i64 %143, 2
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 56
  br i1 %148, label %149, label %160

149:                                              ; preds = %141
  %150 = load i8*, i8** %4, align 8
  %151 = load i64, i64* %7, align 8
  %152 = sub i64 %151, 1
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 48
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = load i64, i64* %7, align 8
  %159 = sub i64 %158, 3
  store i64 %159, i64* %7, align 8
  br label %160

160:                                              ; preds = %157, %149, %141, %133, %127, %124
  %161 = load i64, i64* %6, align 8
  %162 = icmp ugt i64 %161, 13
  br i1 %162, label %163, label %224

163:                                              ; preds = %160
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 4
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 115
  br i1 %172, label %173, label %224

173:                                              ; preds = %163
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load i64, i64* %6, align 8
  %180 = sub i64 %179, 4
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %183, 58
  br i1 %184, label %185, label %224

185:                                              ; preds = %173
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = load i64, i64* %6, align 8
  %192 = sub i64 %191, 3
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 52
  br i1 %196, label %197, label %224

197:                                              ; preds = %185
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = load i64, i64* %6, align 8
  %204 = sub i64 %203, 2
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 52
  br i1 %208, label %209, label %224

209:                                              ; preds = %197
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 2
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = load i64, i64* %6, align 8
  %216 = sub i64 %215, 1
  %217 = getelementptr inbounds i8, i8* %214, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %219, 51
  br i1 %220, label %221, label %224

221:                                              ; preds = %209
  %222 = load i64, i64* %6, align 8
  %223 = sub i64 %222, 4
  store i64 %223, i64* %6, align 8
  br label %224

224:                                              ; preds = %221, %209, %197, %185, %173, %163, %160
  %225 = load i64, i64* %7, align 8
  %226 = icmp ugt i64 %225, 13
  br i1 %226, label %227, label %268

227:                                              ; preds = %224
  %228 = load i8*, i8** %4, align 8
  %229 = getelementptr inbounds i8, i8* %228, i64 4
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = icmp eq i32 %231, 115
  br i1 %232, label %233, label %268

233:                                              ; preds = %227
  %234 = load i8*, i8** %4, align 8
  %235 = load i64, i64* %7, align 8
  %236 = sub i64 %235, 4
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp eq i32 %239, 58
  br i1 %240, label %241, label %268

241:                                              ; preds = %233
  %242 = load i8*, i8** %4, align 8
  %243 = load i64, i64* %7, align 8
  %244 = sub i64 %243, 3
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp eq i32 %247, 52
  br i1 %248, label %249, label %268

249:                                              ; preds = %241
  %250 = load i8*, i8** %4, align 8
  %251 = load i64, i64* %7, align 8
  %252 = sub i64 %251, 2
  %253 = getelementptr inbounds i8, i8* %250, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 52
  br i1 %256, label %257, label %268

257:                                              ; preds = %249
  %258 = load i8*, i8** %4, align 8
  %259 = load i64, i64* %7, align 8
  %260 = sub i64 %259, 1
  %261 = getelementptr inbounds i8, i8* %258, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 51
  br i1 %264, label %265, label %268

265:                                              ; preds = %257
  %266 = load i64, i64* %7, align 8
  %267 = sub i64 %266, 4
  store i64 %267, i64* %7, align 8
  br label %268

268:                                              ; preds = %265, %257, %249, %241, %233, %227, %224
  br label %269

269:                                              ; preds = %268, %67
  %270 = load i64, i64* %6, align 8
  %271 = load i64, i64* %7, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %283, label %273

273:                                              ; preds = %269
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = load i8*, i8** %4, align 8
  %280 = load i64, i64* %6, align 8
  %281 = call i64 @memcmp(i8* %278, i8* %279, i64 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %396

283:                                              ; preds = %273, %269
  %284 = call i32 @php_libxml_switch_context(i32* null, i32* %8)
  %285 = call i32 @php_libxml_switch_context(i32* %8, i32* null)
  %286 = load i32, i32* %8, align 4
  %287 = call i64 @Z_TYPE(i32 %286)
  %288 = load i64, i64* @IS_UNDEF, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %395

290:                                              ; preds = %283
  store i32* %8, i32** %10, align 8
  %291 = load i32*, i32** %10, align 8
  %292 = call i32 @php_stream_context_from_zval(i32* %291, i32 1)
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 8
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %394

299:                                              ; preds = %290
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32* @php_stream_context_get_option(i32 %302, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32* %303, i32** %9, align 8
  %304 = icmp ne i32* %303, null
  br i1 %304, label %305, label %394

305:                                              ; preds = %299
  %306 = load i32*, i32** %9, align 8
  %307 = call i8* @Z_STRVAL_P(i32* %306)
  %308 = call i8* @strstr(i8* %307, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i8* %308, i8** %5, align 8
  %309 = load i8*, i8** %5, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %393

311:                                              ; preds = %305
  %312 = load i8*, i8** %5, align 8
  %313 = load i32*, i32** %9, align 8
  %314 = call i8* @Z_STRVAL_P(i32* %313)
  %315 = icmp eq i8* %312, %314
  br i1 %315, label %328, label %316

316:                                              ; preds = %311
  %317 = load i8*, i8** %5, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 -1
  %319 = load i8, i8* %318, align 1
  %320 = sext i8 %319 to i32
  %321 = icmp eq i32 %320, 10
  br i1 %321, label %328, label %322

322:                                              ; preds = %316
  %323 = load i8*, i8** %5, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 -1
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp eq i32 %326, 13
  br i1 %327, label %328, label %393

328:                                              ; preds = %322, %316, %311
  %329 = load i8*, i8** %5, align 8
  %330 = call i8* @strstr(i8* %329, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i8* %330, i8** %11, align 8
  %331 = load i8*, i8** %11, align 8
  %332 = icmp ne i8* %331, null
  br i1 %332, label %333, label %392

333:                                              ; preds = %328
  %334 = load i8*, i8** %11, align 8
  %335 = getelementptr inbounds i8, i8* %334, i64 2
  store i8* %335, i8** %11, align 8
  %336 = load i32*, i32** %9, align 8
  %337 = call i32 @Z_STRLEN_P(i32* %336)
  %338 = sext i32 %337 to i64
  %339 = load i8*, i8** %11, align 8
  %340 = load i8*, i8** %5, align 8
  %341 = ptrtoint i8* %339 to i64
  %342 = ptrtoint i8* %340 to i64
  %343 = sub i64 %341, %342
  %344 = sub nsw i64 %338, %343
  %345 = trunc i64 %344 to i32
  %346 = call i32 @zend_string_alloc(i32 %345, i32 0)
  %347 = call i32 @ZVAL_NEW_STR(i32* %12, i32 %346)
  %348 = load i32, i32* %12, align 4
  %349 = call i64 @Z_STRVAL(i32 %348)
  %350 = load i32*, i32** %9, align 8
  %351 = call i8* @Z_STRVAL_P(i32* %350)
  %352 = load i8*, i8** %5, align 8
  %353 = load i32*, i32** %9, align 8
  %354 = call i8* @Z_STRVAL_P(i32* %353)
  %355 = ptrtoint i8* %352 to i64
  %356 = ptrtoint i8* %354 to i64
  %357 = sub i64 %355, %356
  %358 = trunc i64 %357 to i32
  %359 = call i32 @memcpy(i64 %349, i8* %351, i32 %358)
  %360 = load i32, i32* %12, align 4
  %361 = call i64 @Z_STRVAL(i32 %360)
  %362 = load i8*, i8** %5, align 8
  %363 = load i32*, i32** %9, align 8
  %364 = call i8* @Z_STRVAL_P(i32* %363)
  %365 = ptrtoint i8* %362 to i64
  %366 = ptrtoint i8* %364 to i64
  %367 = sub i64 %365, %366
  %368 = add nsw i64 %361, %367
  %369 = load i8*, i8** %11, align 8
  %370 = load i32*, i32** %9, align 8
  %371 = call i32 @Z_STRLEN_P(i32* %370)
  %372 = sext i32 %371 to i64
  %373 = load i8*, i8** %11, align 8
  %374 = load i32*, i32** %9, align 8
  %375 = call i8* @Z_STRVAL_P(i32* %374)
  %376 = ptrtoint i8* %373 to i64
  %377 = ptrtoint i8* %375 to i64
  %378 = sub i64 %376, %377
  %379 = sub nsw i64 %372, %378
  %380 = add nsw i64 %379, 1
  %381 = trunc i64 %380 to i32
  %382 = call i32 @memcpy(i64 %368, i8* %369, i32 %381)
  %383 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %384 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %383, i32 0, i32 1
  %385 = load i32*, i32** %9, align 8
  %386 = call i32 @ZVAL_COPY(i32* %384, i32* %385)
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @php_stream_context_set_option(i32 %389, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %12)
  %391 = call i32 @zval_ptr_dtor(i32* %12)
  br label %392

392:                                              ; preds = %333, %328
  br label %393

393:                                              ; preds = %392, %322, %305
  br label %394

394:                                              ; preds = %393, %299, %290
  br label %395

395:                                              ; preds = %394, %283
  br label %396

396:                                              ; preds = %21, %51, %395, %273
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @php_libxml_switch_context(i32*, i32*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @php_stream_context_from_zval(i32*, i32) #1

declare dso_local i32* @php_stream_context_get_option(i32, i8*, i8*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @ZVAL_NEW_STR(i32*, i32) #1

declare dso_local i32 @zend_string_alloc(i32, i32) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @Z_STRVAL(i32) #1

declare dso_local i32 @ZVAL_COPY(i32*, i32*) #1

declare dso_local i32 @php_stream_context_set_option(i32, i8*, i8*, i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
