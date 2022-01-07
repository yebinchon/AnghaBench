; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_func.c_func_select_candidate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_func.c_func_select_candidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64* }

@FUNC_MAX_ARGS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_TOO_MANY_ARGUMENTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"cannot pass more than %d argument to a function\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot pass more than %d arguments to a function\00", align 1
@UNKNOWNOID = common dso_local global i64 0, align 8
@TYPCATEGORY_INVALID = common dso_local global i64 0, align 8
@TYPCATEGORY_STRING = common dso_local global i64 0, align 8
@COERCION_IMPLICIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @func_select_candidate(i32 %0, i64* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %29 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %18, align 8
  %32 = alloca i64, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  %33 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i64, i64 %34, align 16
  store i64 %34, i64* %20, align 8
  %36 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %23, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %3
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i32, i32* @ERRCODE_TOO_MANY_ARGUMENTS, align 4
  %45 = call i32 @errcode(i32 %44)
  %46 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %47 = load i32, i32* @FUNC_MAX_ARGS, align 4
  %48 = call i32 @errmsg_plural(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = call i32 @ereport(i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %42, %3
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %81, %50
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %51
  %56 = load i64*, i64** %6, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UNKNOWNOID, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load i64*, i64** %6, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @getBaseType(i64 %68)
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %32, i64 %71
  store i64 %69, i64* %72, align 8
  br label %80

73:                                               ; preds = %55
  %74 = load i64, i64* @UNKNOWNOID, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %32, i64 %76
  store i64 %74, i64* %77, align 8
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %73, %63
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %51

84:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %85, %struct.TYPE_4__** %8, align 8
  br label %86

86:                                               ; preds = %146, %84
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = icmp ne %struct.TYPE_4__* %87, null
  br i1 %88, label %89, label %150

89:                                               ; preds = %86
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  store i64* %92, i64** %11, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %119, %89
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %93
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %32, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @UNKNOWNOID, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %97
  %105 = load i64*, i64** %11, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %32, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %109, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %118

118:                                              ; preds = %115, %104, %97
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %93

122:                                              ; preds = %93
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %128 = icmp eq %struct.TYPE_4__* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %126, %122
  %130 = load i32, i32* %16, align 4
  store i32 %130, i32* %15, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %131, %struct.TYPE_4__** %7, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %132, %struct.TYPE_4__** %10, align 8
  store i32 1, i32* %14, align 4
  br label %145

133:                                              ; preds = %126
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %15, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store %struct.TYPE_4__* %138, %struct.TYPE_4__** %140, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %141, %struct.TYPE_4__** %10, align 8
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %137, %133
  br label %145

145:                                              ; preds = %144, %129
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  store %struct.TYPE_4__* %149, %struct.TYPE_4__** %8, align 8
  br label %86

150:                                              ; preds = %86
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %152 = icmp ne %struct.TYPE_4__* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %155, align 8
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i32, i32* %14, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %160, %struct.TYPE_4__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %560

161:                                              ; preds = %156
  store i32 0, i32* %13, align 4
  br label %162

162:                                              ; preds = %175, %161
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %162
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %32, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @TypeCategory(i64 %170)
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %35, i64 %173
  store i64 %171, i64* %174, align 8
  br label %175

175:                                              ; preds = %166
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %162

178:                                              ; preds = %162
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %179, %struct.TYPE_4__** %8, align 8
  br label %180

180:                                              ; preds = %253, %178
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %182 = icmp ne %struct.TYPE_4__* %181, null
  br i1 %182, label %183, label %257

183:                                              ; preds = %180
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i64*, i64** %185, align 8
  store i64* %186, i64** %11, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %187

187:                                              ; preds = %226, %183
  %188 = load i32, i32* %13, align 4
  %189 = load i32, i32* %5, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %229

191:                                              ; preds = %187
  %192 = load i32, i32* %13, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %32, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @UNKNOWNOID, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %225

198:                                              ; preds = %191
  %199 = load i64*, i64** %11, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %32, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %203, %207
  br i1 %208, label %221, label %209

209:                                              ; preds = %198
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %35, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = load i64*, i64** %11, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @IsPreferredType(i64 %213, i64 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %209, %198
  %222 = load i32, i32* %16, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %16, align 4
  br label %224

224:                                              ; preds = %221, %209
  br label %225

225:                                              ; preds = %224, %191
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %13, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %13, align 4
  br label %187

229:                                              ; preds = %187
  %230 = load i32, i32* %16, align 4
  %231 = load i32, i32* %15, align 4
  %232 = icmp sgt i32 %230, %231
  br i1 %232, label %236, label %233

233:                                              ; preds = %229
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %235 = icmp eq %struct.TYPE_4__* %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %233, %229
  %237 = load i32, i32* %16, align 4
  store i32 %237, i32* %15, align 4
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %238, %struct.TYPE_4__** %7, align 8
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %239, %struct.TYPE_4__** %10, align 8
  store i32 1, i32* %14, align 4
  br label %252

240:                                              ; preds = %233
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %15, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %240
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i32 0, i32 0
  store %struct.TYPE_4__* %245, %struct.TYPE_4__** %247, align 8
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %248, %struct.TYPE_4__** %10, align 8
  %249 = load i32, i32* %14, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %14, align 4
  br label %251

251:                                              ; preds = %244, %240
  br label %252

252:                                              ; preds = %251, %236
  br label %253

253:                                              ; preds = %252
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_4__*, %struct.TYPE_4__** %255, align 8
  store %struct.TYPE_4__* %256, %struct.TYPE_4__** %8, align 8
  br label %180

257:                                              ; preds = %180
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %259 = icmp ne %struct.TYPE_4__* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %262, align 8
  br label %263

263:                                              ; preds = %260, %257
  %264 = load i32, i32* %14, align 4
  %265 = icmp eq i32 %264, 1
  br i1 %265, label %266, label %268

266:                                              ; preds = %263
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %267, %struct.TYPE_4__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %560

268:                                              ; preds = %263
  %269 = load i32, i32* %17, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %268
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %560

272:                                              ; preds = %268
  store i32 0, i32* %24, align 4
  store i32 0, i32* %13, align 4
  br label %273

273:                                              ; preds = %370, %272
  %274 = load i32, i32* %13, align 4
  %275 = load i32, i32* %5, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %373

277:                                              ; preds = %273
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %32, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @UNKNOWNOID, align 8
  %283 = icmp ne i64 %281, %282
  br i1 %283, label %284, label %285

284:                                              ; preds = %277
  br label %370

285:                                              ; preds = %277
  store i32 1, i32* %24, align 4
  %286 = load i64, i64* @TYPCATEGORY_INVALID, align 8
  %287 = load i32, i32* %13, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i64, i64* %35, i64 %288
  store i64 %286, i64* %289, align 8
  %290 = load i32, i32* %13, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %38, i64 %291
  store i32 0, i32* %292, align 4
  store i32 0, i32* %26, align 4
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %293, %struct.TYPE_4__** %8, align 8
  br label %294

294:                                              ; preds = %354, %285
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %296 = icmp ne %struct.TYPE_4__* %295, null
  br i1 %296, label %297, label %358

297:                                              ; preds = %294
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 1
  %300 = load i64*, i64** %299, align 8
  store i64* %300, i64** %11, align 8
  %301 = load i64*, i64** %11, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  %305 = load i64, i64* %304, align 8
  store i64 %305, i64* %12, align 8
  %306 = load i64, i64* %12, align 8
  %307 = call i32 @get_type_category_preferred(i64 %306, i64* %21, i32* %22)
  %308 = load i32, i32* %13, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i64, i64* %35, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @TYPCATEGORY_INVALID, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %323

314:                                              ; preds = %297
  %315 = load i64, i64* %21, align 8
  %316 = load i32, i32* %13, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64, i64* %35, i64 %317
  store i64 %315, i64* %318, align 8
  %319 = load i32, i32* %22, align 4
  %320 = load i32, i32* %13, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %38, i64 %321
  store i32 %319, i32* %322, align 4
  br label %353

323:                                              ; preds = %297
  %324 = load i64, i64* %21, align 8
  %325 = load i32, i32* %13, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %35, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = icmp eq i64 %324, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %323
  %331 = load i32, i32* %22, align 4
  %332 = load i32, i32* %13, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %38, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %331
  store i32 %336, i32* %334, align 4
  br label %352

337:                                              ; preds = %323
  %338 = load i64, i64* %21, align 8
  %339 = load i64, i64* @TYPCATEGORY_STRING, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %350

341:                                              ; preds = %337
  %342 = load i64, i64* %21, align 8
  %343 = load i32, i32* %13, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64, i64* %35, i64 %344
  store i64 %342, i64* %345, align 8
  %346 = load i32, i32* %22, align 4
  %347 = load i32, i32* %13, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %38, i64 %348
  store i32 %346, i32* %349, align 4
  br label %351

350:                                              ; preds = %337
  store i32 1, i32* %26, align 4
  br label %351

351:                                              ; preds = %350, %341
  br label %352

352:                                              ; preds = %351, %330
  br label %353

353:                                              ; preds = %352, %314
  br label %354

354:                                              ; preds = %353
  %355 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %356, align 8
  store %struct.TYPE_4__* %357, %struct.TYPE_4__** %8, align 8
  br label %294

358:                                              ; preds = %294
  %359 = load i32, i32* %26, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %369

361:                                              ; preds = %358
  %362 = load i32, i32* %13, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i64, i64* %35, i64 %363
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @TYPCATEGORY_STRING, align 8
  %367 = icmp ne i64 %365, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %361
  store i32 0, i32* %24, align 4
  br label %373

369:                                              ; preds = %361, %358
  br label %370

370:                                              ; preds = %369, %284
  %371 = load i32, i32* %13, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %13, align 4
  br label %273

373:                                              ; preds = %368, %273
  %374 = load i32, i32* %24, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %466

376:                                              ; preds = %373
  store i32 0, i32* %14, align 4
  %377 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %377, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %378, %struct.TYPE_4__** %8, align 8
  br label %379

379:                                              ; preds = %449, %376
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %381 = icmp ne %struct.TYPE_4__* %380, null
  br i1 %381, label %382, label %453

382:                                              ; preds = %379
  store i32 1, i32* %27, align 4
  %383 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 1
  %385 = load i64*, i64** %384, align 8
  store i64* %385, i64** %11, align 8
  store i32 0, i32* %13, align 4
  br label %386

386:                                              ; preds = %424, %382
  %387 = load i32, i32* %13, align 4
  %388 = load i32, i32* %5, align 4
  %389 = icmp slt i32 %387, %388
  br i1 %389, label %390, label %427

390:                                              ; preds = %386
  %391 = load i32, i32* %13, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i64, i64* %32, i64 %392
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @UNKNOWNOID, align 8
  %396 = icmp ne i64 %394, %395
  br i1 %396, label %397, label %398

397:                                              ; preds = %390
  br label %424

398:                                              ; preds = %390
  %399 = load i64*, i64** %11, align 8
  %400 = load i32, i32* %13, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i64, i64* %399, i64 %401
  %403 = load i64, i64* %402, align 8
  store i64 %403, i64* %12, align 8
  %404 = load i64, i64* %12, align 8
  %405 = call i32 @get_type_category_preferred(i64 %404, i64* %21, i32* %22)
  %406 = load i64, i64* %21, align 8
  %407 = load i32, i32* %13, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i64, i64* %35, i64 %408
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %406, %410
  br i1 %411, label %412, label %413

412:                                              ; preds = %398
  store i32 0, i32* %27, align 4
  br label %427

413:                                              ; preds = %398
  %414 = load i32, i32* %13, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32, i32* %38, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %423

419:                                              ; preds = %413
  %420 = load i32, i32* %22, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %423, label %422

422:                                              ; preds = %419
  store i32 0, i32* %27, align 4
  br label %427

423:                                              ; preds = %419, %413
  br label %424

424:                                              ; preds = %423, %397
  %425 = load i32, i32* %13, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %13, align 4
  br label %386

427:                                              ; preds = %422, %412, %386
  %428 = load i32, i32* %27, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %434

430:                                              ; preds = %427
  %431 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %431, %struct.TYPE_4__** %10, align 8
  %432 = load i32, i32* %14, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %14, align 4
  br label %448

434:                                              ; preds = %427
  %435 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %436 = icmp ne %struct.TYPE_4__* %435, null
  br i1 %436, label %437, label %443

437:                                              ; preds = %434
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i32 0, i32 0
  %440 = load %struct.TYPE_4__*, %struct.TYPE_4__** %439, align 8
  %441 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 0
  store %struct.TYPE_4__* %440, %struct.TYPE_4__** %442, align 8
  br label %447

443:                                              ; preds = %434
  %444 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %444, i32 0, i32 0
  %446 = load %struct.TYPE_4__*, %struct.TYPE_4__** %445, align 8
  store %struct.TYPE_4__* %446, %struct.TYPE_4__** %9, align 8
  br label %447

447:                                              ; preds = %443, %437
  br label %448

448:                                              ; preds = %447, %430
  br label %449

449:                                              ; preds = %448
  %450 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %451 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_4__*, %struct.TYPE_4__** %451, align 8
  store %struct.TYPE_4__* %452, %struct.TYPE_4__** %8, align 8
  br label %379

453:                                              ; preds = %379
  %454 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %455 = icmp ne %struct.TYPE_4__* %454, null
  br i1 %455, label %456, label %460

456:                                              ; preds = %453
  %457 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  store %struct.TYPE_4__* %457, %struct.TYPE_4__** %7, align 8
  %458 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %459, align 8
  br label %460

460:                                              ; preds = %456, %453
  %461 = load i32, i32* %14, align 4
  %462 = icmp eq i32 %461, 1
  br i1 %462, label %463, label %465

463:                                              ; preds = %460
  %464 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %464, %struct.TYPE_4__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %560

465:                                              ; preds = %460
  br label %466

466:                                              ; preds = %465, %373
  %467 = load i32, i32* %17, align 4
  %468 = load i32, i32* %5, align 4
  %469 = icmp slt i32 %467, %468
  br i1 %469, label %470, label %559

470:                                              ; preds = %466
  %471 = load i64, i64* @UNKNOWNOID, align 8
  store i64 %471, i64* %28, align 8
  store i32 0, i32* %13, align 4
  br label %472

472:                                              ; preds = %504, %470
  %473 = load i32, i32* %13, align 4
  %474 = load i32, i32* %5, align 4
  %475 = icmp slt i32 %473, %474
  br i1 %475, label %476, label %507

476:                                              ; preds = %472
  %477 = load i32, i32* %13, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i64, i64* %32, i64 %478
  %480 = load i64, i64* %479, align 8
  %481 = load i64, i64* @UNKNOWNOID, align 8
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %483, label %484

483:                                              ; preds = %476
  br label %504

484:                                              ; preds = %476
  %485 = load i64, i64* %28, align 8
  %486 = load i64, i64* @UNKNOWNOID, align 8
  %487 = icmp eq i64 %485, %486
  br i1 %487, label %488, label %493

488:                                              ; preds = %484
  %489 = load i32, i32* %13, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i64, i64* %32, i64 %490
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %28, align 8
  br label %503

493:                                              ; preds = %484
  %494 = load i64, i64* %28, align 8
  %495 = load i32, i32* %13, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i64, i64* %32, i64 %496
  %498 = load i64, i64* %497, align 8
  %499 = icmp ne i64 %494, %498
  br i1 %499, label %500, label %502

500:                                              ; preds = %493
  %501 = load i64, i64* @UNKNOWNOID, align 8
  store i64 %501, i64* %28, align 8
  br label %507

502:                                              ; preds = %493
  br label %503

503:                                              ; preds = %502, %488
  br label %504

504:                                              ; preds = %503, %483
  %505 = load i32, i32* %13, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %13, align 4
  br label %472

507:                                              ; preds = %500, %472
  %508 = load i64, i64* %28, align 8
  %509 = load i64, i64* @UNKNOWNOID, align 8
  %510 = icmp ne i64 %508, %509
  br i1 %510, label %511, label %558

511:                                              ; preds = %507
  store i32 0, i32* %13, align 4
  br label %512

512:                                              ; preds = %521, %511
  %513 = load i32, i32* %13, align 4
  %514 = load i32, i32* %5, align 4
  %515 = icmp slt i32 %513, %514
  br i1 %515, label %516, label %524

516:                                              ; preds = %512
  %517 = load i64, i64* %28, align 8
  %518 = load i32, i32* %13, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i64, i64* %32, i64 %519
  store i64 %517, i64* %520, align 8
  br label %521

521:                                              ; preds = %516
  %522 = load i32, i32* %13, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %13, align 4
  br label %512

524:                                              ; preds = %512
  store i32 0, i32* %14, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %10, align 8
  %525 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %525, %struct.TYPE_4__** %8, align 8
  br label %526

526:                                              ; preds = %546, %524
  %527 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %528 = icmp ne %struct.TYPE_4__* %527, null
  br i1 %528, label %529, label %550

529:                                              ; preds = %526
  %530 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %531 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %530, i32 0, i32 1
  %532 = load i64*, i64** %531, align 8
  store i64* %532, i64** %11, align 8
  %533 = load i32, i32* %5, align 4
  %534 = load i64*, i64** %11, align 8
  %535 = load i32, i32* @COERCION_IMPLICIT, align 4
  %536 = call i64 @can_coerce_type(i32 %533, i64* %32, i64* %534, i32 %535)
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %545

538:                                              ; preds = %529
  %539 = load i32, i32* %14, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %14, align 4
  %541 = icmp sgt i32 %540, 1
  br i1 %541, label %542, label %543

542:                                              ; preds = %538
  br label %550

543:                                              ; preds = %538
  %544 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %544, %struct.TYPE_4__** %10, align 8
  br label %545

545:                                              ; preds = %543, %529
  br label %546

546:                                              ; preds = %545
  %547 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %548 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %547, i32 0, i32 0
  %549 = load %struct.TYPE_4__*, %struct.TYPE_4__** %548, align 8
  store %struct.TYPE_4__* %549, %struct.TYPE_4__** %8, align 8
  br label %526

550:                                              ; preds = %542, %526
  %551 = load i32, i32* %14, align 4
  %552 = icmp eq i32 %551, 1
  br i1 %552, label %553, label %557

553:                                              ; preds = %550
  %554 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %555 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %554, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %555, align 8
  %556 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %556, %struct.TYPE_4__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %560

557:                                              ; preds = %550
  br label %558

558:                                              ; preds = %557, %507
  br label %559

559:                                              ; preds = %558, %466
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  store i32 1, i32* %25, align 4
  br label %560

560:                                              ; preds = %559, %553, %463, %271, %266, %159
  %561 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %561)
  %562 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %562
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode(i32) #2

declare dso_local i32 @errmsg_plural(i8*, i8*, i32, i32) #2

declare dso_local i64 @getBaseType(i64) #2

declare dso_local i64 @TypeCategory(i64) #2

declare dso_local i64 @IsPreferredType(i64, i64) #2

declare dso_local i32 @get_type_category_preferred(i64, i64*, i32*) #2

declare dso_local i64 @can_coerce_type(i32, i64*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
