; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_NIImportAffixes.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_spell.c_NIImportAffixes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_CONFIG_FILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not open affix file \22%s\22: %m\00", align 1
@FM_CHAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"compoundwords\00", align 1
@FF_COMPOUNDFLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"suffixes\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"prefixes\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"flag\00", align 1
@FF_CROSSPRODUCT = common dso_local global i8 0, align 1
@FF_COMPOUNDONLY = common dso_local global i8 0, align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"COMPOUNDFLAG\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"COMPOUNDMIN\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"PFX\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"SFX\00", align 1
@FF_SUFFIX = common dso_local global i32 0, align 4
@FF_PREFIX = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [58 x i8] c"affix file contains both old-style and new-style commands\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NIImportAffixes(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %19 = load i32, i32* @BUFSIZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load i32, i32* @BUFSIZ, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %8, align 8
  %26 = load i32, i32* @BUFSIZ, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  %29 = load i32, i32* @BUFSIZ, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i8 0, i8* %14, align 1
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @tsearch_readline_begin(i32* %15, i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @ERROR, align 4
  %37 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %38 = call i32 @errcode(i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = call i32 @ereport(i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %35, %2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* @FM_CHAR, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %283, %42
  %51 = call i8* @tsearch_readline(i32* %15)
  store i8* %51, i8** %17, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %288

53:                                               ; preds = %50
  %54 = load i8*, i8** %17, align 8
  %55 = call i8* @lowerstr(i8* %54)
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 35
  br i1 %59, label %65, label %60

60:                                               ; preds = %53
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %53
  br label %283

66:                                               ; preds = %60
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @STRNCMP(i8* %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %130

70:                                               ; preds = %66
  %71 = load i8*, i8** %17, align 8
  %72 = call i8* @findchar2(i8* %71, i8 signext 108, i8 signext 76)
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %129

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %88, %75
  %77 = load i8*, i8** %11, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i8*, i8** %11, align 8
  %83 = call i64 @t_isspace(i8* %82)
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i1 [ false, %76 ], [ %85, %81 ]
  br i1 %87, label %88, label %94

88:                                               ; preds = %86
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @pg_mblen(i8* %89)
  %91 = load i8*, i8** %11, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %11, align 8
  br label %76

94:                                               ; preds = %86
  br label %95

95:                                               ; preds = %106, %94
  %96 = load i8*, i8** %11, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i8*, i8** %11, align 8
  %102 = call i64 @t_isspace(i8* %101)
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %100, %95
  %105 = phi i1 [ false, %95 ], [ %103, %100 ]
  br i1 %105, label %106, label %112

106:                                              ; preds = %104
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @pg_mblen(i8* %107)
  %109 = load i8*, i8** %11, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %11, align 8
  br label %95

112:                                              ; preds = %104
  %113 = load i8*, i8** %11, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load i8*, i8** %11, align 8
  %119 = call i32 @pg_mblen(i8* %118)
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = load i32, i32* @FF_COMPOUNDFLAG, align 4
  %125 = call i32 @addCompoundAffixFlagValue(%struct.TYPE_6__* %122, i8* %123, i32 %124)
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %121, %117, %112
  store i32 1, i32* %16, align 4
  br label %283

129:                                              ; preds = %70
  br label %130

130:                                              ; preds = %129, %66
  %131 = load i8*, i8** %5, align 8
  %132 = call i64 @STRNCMP(i8* %131, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %16, align 4
  br label %283

135:                                              ; preds = %130
  %136 = load i8*, i8** %5, align 8
  %137 = call i64 @STRNCMP(i8* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %16, align 4
  br label %283

140:                                              ; preds = %135
  %141 = load i8*, i8** %5, align 8
  %142 = call i64 @STRNCMP(i8* %141, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %242

144:                                              ; preds = %140
  %145 = load i8*, i8** %17, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 4
  store i8* %146, i8** %11, align 8
  store i8 0, i8* %14, align 1
  br label %147

147:                                              ; preds = %158, %144
  %148 = load i8*, i8** %11, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i8*, i8** %11, align 8
  %154 = call i64 @t_isspace(i8* %153)
  %155 = icmp ne i64 %154, 0
  br label %156

156:                                              ; preds = %152, %147
  %157 = phi i1 [ false, %147 ], [ %155, %152 ]
  br i1 %157, label %158, label %164

158:                                              ; preds = %156
  %159 = load i8*, i8** %11, align 8
  %160 = call i32 @pg_mblen(i8* %159)
  %161 = load i8*, i8** %11, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %11, align 8
  br label %147

164:                                              ; preds = %156
  %165 = load i8*, i8** %11, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 42
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load i8, i8* @FF_CROSSPRODUCT, align 1
  %171 = sext i8 %170 to i32
  %172 = load i8, i8* %14, align 1
  %173 = sext i8 %172 to i32
  %174 = or i32 %173, %171
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %14, align 1
  %176 = load i8*, i8** %11, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %11, align 8
  br label %193

178:                                              ; preds = %164
  %179 = load i8*, i8** %11, align 8
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 126
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = load i8, i8* @FF_COMPOUNDONLY, align 1
  %185 = sext i8 %184 to i32
  %186 = load i8, i8* %14, align 1
  %187 = sext i8 %186 to i32
  %188 = or i32 %187, %185
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %14, align 1
  %190 = load i8*, i8** %11, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %11, align 8
  br label %192

192:                                              ; preds = %183, %178
  br label %193

193:                                              ; preds = %192, %169
  %194 = load i8*, i8** %11, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 92
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load i8*, i8** %11, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %11, align 8
  br label %201

201:                                              ; preds = %198, %193
  %202 = load i8*, i8** %11, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %241

206:                                              ; preds = %201
  %207 = load i8*, i8** %11, align 8
  %208 = call i32 @pg_mblen(i8* %207)
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %241

210:                                              ; preds = %206
  %211 = load i8*, i8** %11, align 8
  %212 = call i32 @COPYCHAR(i8* %22, i8* %211)
  %213 = getelementptr inbounds i8, i8* %22, i64 1
  store i8 0, i8* %213, align 1
  %214 = load i8*, i8** %11, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %11, align 8
  %216 = load i8*, i8** %11, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %239, label %220

220:                                              ; preds = %210
  %221 = load i8*, i8** %11, align 8
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 35
  br i1 %224, label %239, label %225

225:                                              ; preds = %220
  %226 = load i8*, i8** %11, align 8
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 10
  br i1 %229, label %239, label %230

230:                                              ; preds = %225
  %231 = load i8*, i8** %11, align 8
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp eq i32 %233, 58
  br i1 %234, label %239, label %235

235:                                              ; preds = %230
  %236 = load i8*, i8** %11, align 8
  %237 = call i64 @t_isspace(i8* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %235, %230, %225, %220, %210
  store i32 1, i32* %16, align 4
  br label %283

240:                                              ; preds = %235
  br label %241

241:                                              ; preds = %240, %206, %201
  br label %290

242:                                              ; preds = %140
  %243 = load i8*, i8** %17, align 8
  %244 = call i64 @STRNCMP(i8* %243, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %258, label %246

246:                                              ; preds = %242
  %247 = load i8*, i8** %17, align 8
  %248 = call i64 @STRNCMP(i8* %247, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %258, label %250

250:                                              ; preds = %246
  %251 = load i8*, i8** %17, align 8
  %252 = call i64 @STRNCMP(i8* %251, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %250
  %255 = load i8*, i8** %17, align 8
  %256 = call i64 @STRNCMP(i8* %255, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %254, %250, %246, %242
  br label %290

259:                                              ; preds = %254
  %260 = load i32, i32* %12, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* %13, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  br label %283

266:                                              ; preds = %262, %259
  %267 = load i8*, i8** %5, align 8
  %268 = call i32 @parse_affentry(i8* %267, i8* %25, i8* %28, i8* %31)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %266
  br label %283

271:                                              ; preds = %266
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %273 = load i8, i8* %14, align 1
  %274 = load i32, i32* %12, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load i32, i32* @FF_SUFFIX, align 4
  br label %280

278:                                              ; preds = %271
  %279 = load i32, i32* @FF_PREFIX, align 4
  br label %280

280:                                              ; preds = %278, %276
  %281 = phi i32 [ %277, %276 ], [ %279, %278 ]
  %282 = call i32 @NIAddAffix(%struct.TYPE_6__* %272, i8* %22, i8 signext %273, i8* %25, i8* %28, i8* %31, i32 %281)
  br label %283

283:                                              ; preds = %280, %270, %265, %239, %139, %134, %128, %65
  %284 = load i8*, i8** %17, align 8
  %285 = call i32 @pfree(i8* %284)
  %286 = load i8*, i8** %5, align 8
  %287 = call i32 @pfree(i8* %286)
  br label %50

288:                                              ; preds = %50
  %289 = call i32 @tsearch_readline_end(i32* %15)
  store i32 1, i32* %18, align 4
  br label %304

290:                                              ; preds = %258, %241
  %291 = load i32, i32* %16, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %290
  %294 = load i32, i32* @ERROR, align 4
  %295 = load i32, i32* @ERRCODE_CONFIG_FILE_ERROR, align 4
  %296 = call i32 @errcode(i32 %295)
  %297 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0))
  %298 = call i32 @ereport(i32 %294, i32 %297)
  br label %299

299:                                              ; preds = %293, %290
  %300 = call i32 @tsearch_readline_end(i32* %15)
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %302 = load i8*, i8** %4, align 8
  %303 = call i32 @NIImportOOAffixes(%struct.TYPE_6__* %301, i8* %302)
  store i32 0, i32* %18, align 4
  br label %304

304:                                              ; preds = %299, %288
  %305 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %305)
  %306 = load i32, i32* %18, align 4
  switch i32 %306, label %308 [
    i32 0, label %307
    i32 1, label %307
  ]

307:                                              ; preds = %304, %304
  ret void

308:                                              ; preds = %304
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @tsearch_readline_begin(i32*, i8*) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg(i8*, ...) #2

declare dso_local i8* @tsearch_readline(i32*) #2

declare dso_local i8* @lowerstr(i8*) #2

declare dso_local i64 @STRNCMP(i8*, i8*) #2

declare dso_local i8* @findchar2(i8*, i8 signext, i8 signext) #2

declare dso_local i64 @t_isspace(i8*) #2

declare dso_local i32 @pg_mblen(i8*) #2

declare dso_local i32 @addCompoundAffixFlagValue(%struct.TYPE_6__*, i8*, i32) #2

declare dso_local i32 @COPYCHAR(i8*, i8*) #2

declare dso_local i32 @parse_affentry(i8*, i8*, i8*, i8*) #2

declare dso_local i32 @NIAddAffix(%struct.TYPE_6__*, i8*, i8 signext, i8*, i8*, i8*, i32) #2

declare dso_local i32 @pfree(i8*) #2

declare dso_local i32 @tsearch_readline_end(i32*) #2

declare dso_local i32 @NIImportOOAffixes(%struct.TYPE_6__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
