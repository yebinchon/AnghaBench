; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_conv.c_UtfToLocal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mb/extr_conv.c_UtfToLocal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid encoding number: %d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"unsupported character length %d\00", align 1
@compare3 = common dso_local global i32 0, align 4
@PG_UTF8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UtfToLocal(i8* %0, i32 %1, i8* %2, i32* %3, %struct.TYPE_5__* %4, i32 %5, i32 (i32)* %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32 (i32)*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_5__*, align 8
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [2 x i32], align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 (i32)* %6, i32 (i32)** %15, align 8
  store i32 %7, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @PG_VALID_ENCODING(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %8
  %35 = load i32, i32* @ERROR, align 4
  %36 = load i32, i32* @ERRCODE_INVALID_PARAMETER_VALUE, align 4
  %37 = call i32 @errcode(i32 %36)
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = call i32 @ereport(i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %34, %8
  br label %42

42:                                               ; preds = %298, %41
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %302

45:                                               ; preds = %42
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  %46 = load i8*, i8** %9, align 8
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %302

51:                                               ; preds = %45
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @pg_utf_mblen(i8* %52)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %18, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %302

58:                                               ; preds = %51
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @pg_utf8_islegal(i8* %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %302

64:                                               ; preds = %58
  %65 = load i32, i32* %18, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %9, align 8
  %70 = load i8, i8* %68, align 1
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %11, align 8
  store i8 %70, i8* %71, align 1
  br label %298

73:                                               ; preds = %64
  %74 = load i32, i32* %18, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %9, align 8
  %79 = load i8, i8* %77, align 1
  store i8 %79, i8* %22, align 1
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %9, align 8
  %82 = load i8, i8* %80, align 1
  store i8 %82, i8* %23, align 1
  br label %118

83:                                               ; preds = %73
  %84 = load i32, i32* %18, align 4
  %85 = icmp eq i32 %84, 3
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %9, align 8
  %89 = load i8, i8* %87, align 1
  store i8 %89, i8* %21, align 1
  %90 = load i8*, i8** %9, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %9, align 8
  %92 = load i8, i8* %90, align 1
  store i8 %92, i8* %22, align 1
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %9, align 8
  %95 = load i8, i8* %93, align 1
  store i8 %95, i8* %23, align 1
  br label %117

96:                                               ; preds = %83
  %97 = load i32, i32* %18, align 4
  %98 = icmp eq i32 %97, 4
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %9, align 8
  %102 = load i8, i8* %100, align 1
  store i8 %102, i8* %20, align 1
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  %105 = load i8, i8* %103, align 1
  store i8 %105, i8* %21, align 1
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %9, align 8
  %108 = load i8, i8* %106, align 1
  store i8 %108, i8* %22, align 1
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %9, align 8
  %111 = load i8, i8* %109, align 1
  store i8 %111, i8* %23, align 1
  br label %116

112:                                              ; preds = %96
  %113 = load i32, i32* @ERROR, align 4
  %114 = load i32, i32* %18, align 4
  %115 = call i32 @elog(i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  store i32 0, i32* %17, align 4
  br label %116

116:                                              ; preds = %112, %99
  br label %117

117:                                              ; preds = %116, %86
  br label %118

118:                                              ; preds = %117, %76
  %119 = load i8, i8* %20, align 1
  %120 = zext i8 %119 to i32
  %121 = shl i32 %120, 24
  %122 = load i8, i8* %21, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 16
  %125 = or i32 %121, %124
  %126 = load i8, i8* %22, align 1
  %127 = zext i8 %126 to i32
  %128 = shl i32 %127, 8
  %129 = or i32 %125, %128
  %130 = load i8, i8* %23, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %129, %131
  store i32 %132, i32* %17, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %134 = icmp ne %struct.TYPE_5__* %133, null
  br i1 %134, label %135, label %256

135:                                              ; preds = %118
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp sgt i32 %136, %137
  br i1 %138, label %139, label %256

139:                                              ; preds = %135
  %140 = load i8*, i8** %9, align 8
  store i8* %140, i8** %24, align 8
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %25, align 4
  %142 = load i32, i32* %18, align 4
  store i32 %142, i32* %26, align 4
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %10, align 4
  %145 = sub nsw i32 %144, %143
  store i32 %145, i32* %10, align 4
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @pg_utf_mblen(i8* %146)
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %18, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  br label %302

152:                                              ; preds = %139
  %153 = load i8*, i8** %9, align 8
  %154 = load i32, i32* %18, align 4
  %155 = call i32 @pg_utf8_islegal(i8* %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  br label %302

158:                                              ; preds = %152
  %159 = load i32, i32* %18, align 4
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %252

161:                                              ; preds = %158
  %162 = load i32, i32* %18, align 4
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %164, label %176

164:                                              ; preds = %161
  %165 = load i8*, i8** %9, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %9, align 8
  %167 = load i8, i8* %165, align 1
  %168 = zext i8 %167 to i32
  %169 = shl i32 %168, 8
  store i32 %169, i32* %27, align 4
  %170 = load i8*, i8** %9, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %9, align 8
  %172 = load i8, i8* %170, align 1
  %173 = zext i8 %172 to i32
  %174 = load i32, i32* %27, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %27, align 4
  br label %233

176:                                              ; preds = %161
  %177 = load i32, i32* %18, align 4
  %178 = icmp eq i32 %177, 3
  br i1 %178, label %179, label %198

179:                                              ; preds = %176
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %9, align 8
  %182 = load i8, i8* %180, align 1
  %183 = zext i8 %182 to i32
  %184 = shl i32 %183, 16
  store i32 %184, i32* %27, align 4
  %185 = load i8*, i8** %9, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %9, align 8
  %187 = load i8, i8* %185, align 1
  %188 = zext i8 %187 to i32
  %189 = shl i32 %188, 8
  %190 = load i32, i32* %27, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %27, align 4
  %192 = load i8*, i8** %9, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %9, align 8
  %194 = load i8, i8* %192, align 1
  %195 = zext i8 %194 to i32
  %196 = load i32, i32* %27, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %27, align 4
  br label %232

198:                                              ; preds = %176
  %199 = load i32, i32* %18, align 4
  %200 = icmp eq i32 %199, 4
  br i1 %200, label %201, label %227

201:                                              ; preds = %198
  %202 = load i8*, i8** %9, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %9, align 8
  %204 = load i8, i8* %202, align 1
  %205 = zext i8 %204 to i32
  %206 = shl i32 %205, 24
  store i32 %206, i32* %27, align 4
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %9, align 8
  %209 = load i8, i8* %207, align 1
  %210 = zext i8 %209 to i32
  %211 = shl i32 %210, 16
  %212 = load i32, i32* %27, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %27, align 4
  %214 = load i8*, i8** %9, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %9, align 8
  %216 = load i8, i8* %214, align 1
  %217 = zext i8 %216 to i32
  %218 = shl i32 %217, 8
  %219 = load i32, i32* %27, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %27, align 4
  %221 = load i8*, i8** %9, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %9, align 8
  %223 = load i8, i8* %221, align 1
  %224 = zext i8 %223 to i32
  %225 = load i32, i32* %27, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %27, align 4
  br label %231

227:                                              ; preds = %198
  %228 = load i32, i32* @ERROR, align 4
  %229 = load i32, i32* %18, align 4
  %230 = call i32 @elog(i32 %228, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %229)
  store i32 0, i32* %27, align 4
  br label %231

231:                                              ; preds = %227, %201
  br label %232

232:                                              ; preds = %231, %179
  br label %233

233:                                              ; preds = %232, %164
  %234 = load i32, i32* %17, align 4
  %235 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  store i32 %234, i32* %235, align 4
  %236 = load i32, i32* %27, align 4
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 1
  store i32 %236, i32* %237, align 4
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 0
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* @compare3, align 4
  %242 = call %struct.TYPE_5__* @bsearch(i32* %238, %struct.TYPE_5__* %239, i32 %240, i32 4, i32 %241)
  store %struct.TYPE_5__* %242, %struct.TYPE_5__** %19, align 8
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %244 = icmp ne %struct.TYPE_5__* %243, null
  br i1 %244, label %245, label %251

245:                                              ; preds = %233
  %246 = load i8*, i8** %11, align 8
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i8* @store_coded_char(i8* %246, i32 %249)
  store i8* %250, i8** %11, align 8
  br label %298

251:                                              ; preds = %233
  br label %252

252:                                              ; preds = %251, %158
  %253 = load i8*, i8** %24, align 8
  store i8* %253, i8** %9, align 8
  %254 = load i32, i32* %25, align 4
  store i32 %254, i32* %10, align 4
  %255 = load i32, i32* %26, align 4
  store i32 %255, i32* %18, align 4
  br label %256

256:                                              ; preds = %252, %135, %118
  %257 = load i32*, i32** %12, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %274

259:                                              ; preds = %256
  %260 = load i32*, i32** %12, align 8
  %261 = load i32, i32* %18, align 4
  %262 = load i8, i8* %20, align 1
  %263 = load i8, i8* %21, align 1
  %264 = load i8, i8* %22, align 1
  %265 = load i8, i8* %23, align 1
  %266 = call i32 @pg_mb_radix_conv(i32* %260, i32 %261, i8 zeroext %262, i8 zeroext %263, i8 zeroext %264, i8 zeroext %265)
  store i32 %266, i32* %29, align 4
  %267 = load i32, i32* %29, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %259
  %270 = load i8*, i8** %11, align 8
  %271 = load i32, i32* %29, align 4
  %272 = call i8* @store_coded_char(i8* %270, i32 %271)
  store i8* %272, i8** %11, align 8
  br label %298

273:                                              ; preds = %259
  br label %274

274:                                              ; preds = %273, %256
  %275 = load i32 (i32)*, i32 (i32)** %15, align 8
  %276 = icmp ne i32 (i32)* %275, null
  br i1 %276, label %277, label %288

277:                                              ; preds = %274
  %278 = load i32 (i32)*, i32 (i32)** %15, align 8
  %279 = load i32, i32* %17, align 4
  %280 = call i32 %278(i32 %279)
  store i32 %280, i32* %30, align 4
  %281 = load i32, i32* %30, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %277
  %284 = load i8*, i8** %11, align 8
  %285 = load i32, i32* %30, align 4
  %286 = call i8* @store_coded_char(i8* %284, i32 %285)
  store i8* %286, i8** %11, align 8
  br label %298

287:                                              ; preds = %277
  br label %288

288:                                              ; preds = %287, %274
  %289 = load i32, i32* @PG_UTF8, align 4
  %290 = load i32, i32* %16, align 4
  %291 = load i8*, i8** %9, align 8
  %292 = load i32, i32* %18, align 4
  %293 = sext i32 %292 to i64
  %294 = sub i64 0, %293
  %295 = getelementptr inbounds i8, i8* %291, i64 %294
  %296 = load i32, i32* %10, align 4
  %297 = call i32 @report_untranslatable_char(i32 %289, i32 %290, i8* %295, i32 %296)
  br label %298

298:                                              ; preds = %288, %283, %269, %245, %67
  %299 = load i32, i32* %18, align 4
  %300 = load i32, i32* %10, align 4
  %301 = sub nsw i32 %300, %299
  store i32 %301, i32* %10, align 4
  br label %42

302:                                              ; preds = %157, %151, %63, %57, %50, %42
  %303 = load i32, i32* %10, align 4
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %310

305:                                              ; preds = %302
  %306 = load i32, i32* @PG_UTF8, align 4
  %307 = load i8*, i8** %9, align 8
  %308 = load i32, i32* %10, align 4
  %309 = call i32 @report_invalid_encoding(i32 %306, i8* %307, i32 %308)
  br label %310

310:                                              ; preds = %305, %302
  %311 = load i8*, i8** %11, align 8
  store i8 0, i8* %311, align 1
  ret void
}

declare dso_local i32 @PG_VALID_ENCODING(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @pg_utf_mblen(i8*) #1

declare dso_local i32 @pg_utf8_islegal(i8*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local %struct.TYPE_5__* @bsearch(i32*, %struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i8* @store_coded_char(i8*, i32) #1

declare dso_local i32 @pg_mb_radix_conv(i32*, i32, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @report_untranslatable_char(i32, i32, i8*, i32) #1

declare dso_local i32 @report_invalid_encoding(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
