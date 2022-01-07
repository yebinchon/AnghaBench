; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_json_lex_string.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_json.c_json_lex_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i8*, i8*, i32* }

@ERROR = common dso_local global i32 0, align 4
@ERRCODE_INVALID_TEXT_REPRESENTATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"invalid input syntax for type %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Character with value 0x%02x must be escaped.\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"\22\\u\22 must be followed by four hexadecimal digits.\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"Unicode high surrogate must not follow a high surrogate.\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Unicode low surrogate must follow a high surrogate.\00", align 1
@ERRCODE_UNTRANSLATABLE_CHARACTER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"unsupported Unicode escape sequence\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"\\u0000 cannot be converted to text.\00", align 1
@PG_UTF8 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [108 x i8] c"Unicode escape values cannot be used for code point values above 007F when the server encoding is not UTF8.\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Escape sequence \22\\%s\22 is invalid.\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\22\\/bfnrt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @json_lex_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_lex_string(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  store i32 -1, i32* %5, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @resetStringInfo(i32* %17)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %3, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = ptrtoint i8* %31 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %448, %229, %19
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sge i32 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %39
  %50 = load i8*, i8** %3, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %54 = call i32 @report_invalid_token(%struct.TYPE_5__* %53)
  br label %448

55:                                               ; preds = %39
  %56 = load i8*, i8** %3, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 34
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %449

61:                                               ; preds = %55
  %62 = load i8*, i8** %3, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp slt i32 %64, 32
  br i1 %65, label %66, label %81

66:                                               ; preds = %61
  %67 = load i8*, i8** %3, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @ERROR, align 4
  %71 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %72 = call i32 @errcode(i32 %71)
  %73 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i8*, i8** %3, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %79 = call i32 @report_json_context(%struct.TYPE_5__* %78)
  %80 = call i32 @ereport(i32 %70, i32 %79)
  br label %446

81:                                               ; preds = %61
  %82 = load i8*, i8** %3, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 92
  br i1 %85, label %86, label %420

86:                                               ; preds = %81
  %87 = load i8*, i8** %3, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sge i32 %91, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %86
  %97 = load i8*, i8** %3, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %101 = call i32 @report_invalid_token(%struct.TYPE_5__* %100)
  br label %419

102:                                              ; preds = %86
  %103 = load i8*, i8** %3, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 117
  br i1 %106, label %107, label %321

107:                                              ; preds = %102
  store i32 0, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %108

108:                                              ; preds = %203, %107
  %109 = load i32, i32* %6, align 4
  %110 = icmp sle i32 %109, 4
  br i1 %110, label %111, label %206

111:                                              ; preds = %108
  %112 = load i8*, i8** %3, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %3, align 8
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %116, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %111
  %122 = load i8*, i8** %3, align 8
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %126 = call i32 @report_invalid_token(%struct.TYPE_5__* %125)
  br label %202

127:                                              ; preds = %111
  %128 = load i8*, i8** %3, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp sge i32 %130, 48
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load i8*, i8** %3, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp sle i32 %135, 57
  br i1 %136, label %137, label %145

137:                                              ; preds = %132
  %138 = load i32, i32* %7, align 4
  %139 = mul nsw i32 %138, 16
  %140 = load i8*, i8** %3, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = sub nsw i32 %142, 48
  %144 = add nsw i32 %139, %143
  store i32 %144, i32* %7, align 4
  br label %201

145:                                              ; preds = %132, %127
  %146 = load i8*, i8** %3, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp sge i32 %148, 97
  br i1 %149, label %150, label %164

150:                                              ; preds = %145
  %151 = load i8*, i8** %3, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp sle i32 %153, 102
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load i32, i32* %7, align 4
  %157 = mul nsw i32 %156, 16
  %158 = load i8*, i8** %3, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = sub nsw i32 %160, 97
  %162 = add nsw i32 %157, %161
  %163 = add nsw i32 %162, 10
  store i32 %163, i32* %7, align 4
  br label %200

164:                                              ; preds = %150, %145
  %165 = load i8*, i8** %3, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp sge i32 %167, 65
  br i1 %168, label %169, label %183

169:                                              ; preds = %164
  %170 = load i8*, i8** %3, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp sle i32 %172, 70
  br i1 %173, label %174, label %183

174:                                              ; preds = %169
  %175 = load i32, i32* %7, align 4
  %176 = mul nsw i32 %175, 16
  %177 = load i8*, i8** %3, align 8
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = sub nsw i32 %179, 65
  %181 = add nsw i32 %176, %180
  %182 = add nsw i32 %181, 10
  store i32 %182, i32* %7, align 4
  br label %199

183:                                              ; preds = %169, %164
  %184 = load i8*, i8** %3, align 8
  %185 = load i8*, i8** %3, align 8
  %186 = call i32 @pg_mblen(i8* %185)
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %184, i64 %187
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  store i8* %188, i8** %190, align 8
  %191 = load i32, i32* @ERROR, align 4
  %192 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %193 = call i32 @errcode(i32 %192)
  %194 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %195 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %197 = call i32 @report_json_context(%struct.TYPE_5__* %196)
  %198 = call i32 @ereport(i32 %191, i32 %197)
  br label %199

199:                                              ; preds = %183, %174
  br label %200

200:                                              ; preds = %199, %155
  br label %201

201:                                              ; preds = %200, %137
  br label %202

202:                                              ; preds = %201, %121
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %6, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %6, align 4
  br label %108

206:                                              ; preds = %108
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 5
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %320

211:                                              ; preds = %206
  %212 = load i32, i32* %7, align 4
  %213 = icmp sge i32 %212, 55296
  br i1 %213, label %214, label %233

214:                                              ; preds = %211
  %215 = load i32, i32* %7, align 4
  %216 = icmp sle i32 %215, 56319
  br i1 %216, label %217, label %233

217:                                              ; preds = %214
  %218 = load i32, i32* %5, align 4
  %219 = icmp ne i32 %218, -1
  br i1 %219, label %220, label %229

220:                                              ; preds = %217
  %221 = load i32, i32* @ERROR, align 4
  %222 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %223 = call i32 @errcode(i32 %222)
  %224 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %225 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %227 = call i32 @report_json_context(%struct.TYPE_5__* %226)
  %228 = call i32 @ereport(i32 %221, i32 %227)
  br label %229

229:                                              ; preds = %220, %217
  %230 = load i32, i32* %7, align 4
  %231 = and i32 %230, 1023
  %232 = shl i32 %231, 10
  store i32 %232, i32* %5, align 4
  br label %39

233:                                              ; preds = %214, %211
  %234 = load i32, i32* %7, align 4
  %235 = icmp sge i32 %234, 56320
  br i1 %235, label %236, label %257

236:                                              ; preds = %233
  %237 = load i32, i32* %7, align 4
  %238 = icmp sle i32 %237, 57343
  br i1 %238, label %239, label %257

239:                                              ; preds = %236
  %240 = load i32, i32* %5, align 4
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %242, label %251

242:                                              ; preds = %239
  %243 = load i32, i32* @ERROR, align 4
  %244 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %245 = call i32 @errcode(i32 %244)
  %246 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %247 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %249 = call i32 @report_json_context(%struct.TYPE_5__* %248)
  %250 = call i32 @ereport(i32 %243, i32 %249)
  br label %251

251:                                              ; preds = %242, %239
  %252 = load i32, i32* %5, align 4
  %253 = add nsw i32 65536, %252
  %254 = load i32, i32* %7, align 4
  %255 = and i32 %254, 1023
  %256 = add nsw i32 %253, %255
  store i32 %256, i32* %7, align 4
  store i32 -1, i32* %5, align 4
  br label %257

257:                                              ; preds = %251, %236, %233
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %5, align 4
  %260 = icmp ne i32 %259, -1
  br i1 %260, label %261, label %270

261:                                              ; preds = %258
  %262 = load i32, i32* @ERROR, align 4
  %263 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %264 = call i32 @errcode(i32 %263)
  %265 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %266 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %268 = call i32 @report_json_context(%struct.TYPE_5__* %267)
  %269 = call i32 @ereport(i32 %262, i32 %268)
  br label %270

270:                                              ; preds = %261, %258
  %271 = load i32, i32* %7, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %270
  %274 = load i32, i32* @ERROR, align 4
  %275 = load i32, i32* @ERRCODE_UNTRANSLATABLE_CHARACTER, align 4
  %276 = call i32 @errcode(i32 %275)
  %277 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %278 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %280 = call i32 @report_json_context(%struct.TYPE_5__* %279)
  %281 = call i32 @ereport(i32 %274, i32 %280)
  br label %319

282:                                              ; preds = %270
  %283 = call i64 (...) @GetDatabaseEncoding()
  %284 = load i64, i64* @PG_UTF8, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %298

286:                                              ; preds = %282
  %287 = load i32, i32* %7, align 4
  %288 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %289 = call i32 @unicode_to_utf8(i32 %287, i8* %288)
  %290 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %291 = call i32 @pg_utf_mblen(i8* %290)
  store i32 %291, i32* %9, align 4
  %292 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 5
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %296 = load i32, i32* %9, align 4
  %297 = call i32 @appendBinaryStringInfo(i32* %294, i8* %295, i32 %296)
  br label %318

298:                                              ; preds = %282
  %299 = load i32, i32* %7, align 4
  %300 = icmp sle i32 %299, 127
  br i1 %300, label %301, label %308

301:                                              ; preds = %298
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 5
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %7, align 4
  %306 = trunc i32 %305 to i8
  %307 = call i32 @appendStringInfoChar(i32* %304, i8 signext %306)
  br label %317

308:                                              ; preds = %298
  %309 = load i32, i32* @ERROR, align 4
  %310 = load i32, i32* @ERRCODE_UNTRANSLATABLE_CHARACTER, align 4
  %311 = call i32 @errcode(i32 %310)
  %312 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %313 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.8, i64 0, i64 0))
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %315 = call i32 @report_json_context(%struct.TYPE_5__* %314)
  %316 = call i32 @ereport(i32 %309, i32 %315)
  br label %317

317:                                              ; preds = %308, %301
  br label %318

318:                                              ; preds = %317, %286
  br label %319

319:                                              ; preds = %318, %273
  br label %320

320:                                              ; preds = %319, %206
  br label %418

321:                                              ; preds = %102
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 5
  %324 = load i32*, i32** %323, align 8
  %325 = icmp ne i32* %324, null
  br i1 %325, label %326, label %393

326:                                              ; preds = %321
  %327 = load i32, i32* %5, align 4
  %328 = icmp ne i32 %327, -1
  br i1 %328, label %329, label %338

329:                                              ; preds = %326
  %330 = load i32, i32* @ERROR, align 4
  %331 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %332 = call i32 @errcode(i32 %331)
  %333 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %334 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %335 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %336 = call i32 @report_json_context(%struct.TYPE_5__* %335)
  %337 = call i32 @ereport(i32 %330, i32 %336)
  br label %338

338:                                              ; preds = %329, %326
  %339 = load i8*, i8** %3, align 8
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  switch i32 %341, label %374 [
    i32 34, label %342
    i32 92, label %342
    i32 47, label %342
    i32 98, label %349
    i32 102, label %354
    i32 110, label %359
    i32 114, label %364
    i32 116, label %369
  ]

342:                                              ; preds = %338, %338, %338
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 5
  %345 = load i32*, i32** %344, align 8
  %346 = load i8*, i8** %3, align 8
  %347 = load i8, i8* %346, align 1
  %348 = call i32 @appendStringInfoChar(i32* %345, i8 signext %347)
  br label %392

349:                                              ; preds = %338
  %350 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 5
  %352 = load i32*, i32** %351, align 8
  %353 = call i32 @appendStringInfoChar(i32* %352, i8 signext 8)
  br label %392

354:                                              ; preds = %338
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 5
  %357 = load i32*, i32** %356, align 8
  %358 = call i32 @appendStringInfoChar(i32* %357, i8 signext 12)
  br label %392

359:                                              ; preds = %338
  %360 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 5
  %362 = load i32*, i32** %361, align 8
  %363 = call i32 @appendStringInfoChar(i32* %362, i8 signext 10)
  br label %392

364:                                              ; preds = %338
  %365 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 5
  %367 = load i32*, i32** %366, align 8
  %368 = call i32 @appendStringInfoChar(i32* %367, i8 signext 13)
  br label %392

369:                                              ; preds = %338
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 5
  %372 = load i32*, i32** %371, align 8
  %373 = call i32 @appendStringInfoChar(i32* %372, i8 signext 9)
  br label %392

374:                                              ; preds = %338
  %375 = load i8*, i8** %3, align 8
  %376 = load i8*, i8** %3, align 8
  %377 = call i32 @pg_mblen(i8* %376)
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, i8* %375, i64 %378
  %380 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %381 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %380, i32 0, i32 3
  store i8* %379, i8** %381, align 8
  %382 = load i32, i32* @ERROR, align 4
  %383 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %384 = call i32 @errcode(i32 %383)
  %385 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %386 = load i8*, i8** %3, align 8
  %387 = call i32 @extract_mb_char(i8* %386)
  %388 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %387)
  %389 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %390 = call i32 @report_json_context(%struct.TYPE_5__* %389)
  %391 = call i32 @ereport(i32 %382, i32 %390)
  br label %392

392:                                              ; preds = %374, %369, %364, %359, %354, %349, %342
  br label %417

393:                                              ; preds = %321
  %394 = load i8*, i8** %3, align 8
  %395 = load i8, i8* %394, align 1
  %396 = call i32* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8 signext %395)
  %397 = icmp eq i32* %396, null
  br i1 %397, label %398, label %416

398:                                              ; preds = %393
  %399 = load i8*, i8** %3, align 8
  %400 = load i8*, i8** %3, align 8
  %401 = call i32 @pg_mblen(i8* %400)
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8, i8* %399, i64 %402
  %404 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %404, i32 0, i32 3
  store i8* %403, i8** %405, align 8
  %406 = load i32, i32* @ERROR, align 4
  %407 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %408 = call i32 @errcode(i32 %407)
  %409 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %410 = load i8*, i8** %3, align 8
  %411 = call i32 @extract_mb_char(i8* %410)
  %412 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %411)
  %413 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %414 = call i32 @report_json_context(%struct.TYPE_5__* %413)
  %415 = call i32 @ereport(i32 %406, i32 %414)
  br label %416

416:                                              ; preds = %398, %393
  br label %417

417:                                              ; preds = %416, %392
  br label %418

418:                                              ; preds = %417, %320
  br label %419

419:                                              ; preds = %418, %96
  br label %445

420:                                              ; preds = %81
  %421 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %422 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %421, i32 0, i32 5
  %423 = load i32*, i32** %422, align 8
  %424 = icmp ne i32* %423, null
  br i1 %424, label %425, label %444

425:                                              ; preds = %420
  %426 = load i32, i32* %5, align 4
  %427 = icmp ne i32 %426, -1
  br i1 %427, label %428, label %437

428:                                              ; preds = %425
  %429 = load i32, i32* @ERROR, align 4
  %430 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %431 = call i32 @errcode(i32 %430)
  %432 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %433 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %434 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %435 = call i32 @report_json_context(%struct.TYPE_5__* %434)
  %436 = call i32 @ereport(i32 %429, i32 %435)
  br label %437

437:                                              ; preds = %428, %425
  %438 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %439 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %438, i32 0, i32 5
  %440 = load i32*, i32** %439, align 8
  %441 = load i8*, i8** %3, align 8
  %442 = load i8, i8* %441, align 1
  %443 = call i32 @appendStringInfoChar(i32* %440, i8 signext %442)
  br label %444

444:                                              ; preds = %437, %420
  br label %445

445:                                              ; preds = %444, %419
  br label %446

446:                                              ; preds = %445, %66
  br label %447

447:                                              ; preds = %446
  br label %448

448:                                              ; preds = %447, %49
  br label %39

449:                                              ; preds = %60
  %450 = load i32, i32* %5, align 4
  %451 = icmp ne i32 %450, -1
  br i1 %451, label %452, label %461

452:                                              ; preds = %449
  %453 = load i32, i32* @ERROR, align 4
  %454 = load i32, i32* @ERRCODE_INVALID_TEXT_REPRESENTATION, align 4
  %455 = call i32 @errcode(i32 %454)
  %456 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %457 = call i32 (i8*, ...) @errdetail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %458 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %459 = call i32 @report_json_context(%struct.TYPE_5__* %458)
  %460 = call i32 @ereport(i32 %453, i32 %459)
  br label %461

461:                                              ; preds = %452, %449
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %463 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i32 0, i32 3
  %464 = load i8*, i8** %463, align 8
  %465 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %466 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %465, i32 0, i32 4
  store i8* %464, i8** %466, align 8
  %467 = load i8*, i8** %3, align 8
  %468 = getelementptr inbounds i8, i8* %467, i64 1
  %469 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 3
  store i8* %468, i8** %470, align 8
  ret void
}

declare dso_local i32 @resetStringInfo(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @report_invalid_token(%struct.TYPE_5__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @errdetail(i8*, ...) #1

declare dso_local i32 @report_json_context(%struct.TYPE_5__*) #1

declare dso_local i32 @pg_mblen(i8*) #1

declare dso_local i64 @GetDatabaseEncoding(...) #1

declare dso_local i32 @unicode_to_utf8(i32, i8*) #1

declare dso_local i32 @pg_utf_mblen(i8*) #1

declare dso_local i32 @appendBinaryStringInfo(i32*, i8*, i32) #1

declare dso_local i32 @appendStringInfoChar(i32*, i8 signext) #1

declare dso_local i32 @extract_mb_char(i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
