; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3_exec.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_sqlite3_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_NullCallback = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_ABORT = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_exec(%struct.TYPE_11__* %0, i8* %1, i64 (i8*, i32, i8**, i8**)* %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64 (i8*, i32, i8**, i8**)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 (i8*, i32, i8**, i8**)* %2, i64 (i8*, i32, i8**, i8**)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %21 = load i32, i32* @SQLITE_OK, align 4
  store i32 %21, i32* %12, align 4
  store i32* null, i32** %14, align 8
  store i8** null, i8*** %15, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = call i32 @sqlite3SafetyCheckOk(%struct.TYPE_11__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %26, i32* %6, align 4
  br label %295

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %31

31:                                               ; preds = %30, %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sqlite3_mutex_enter(i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = call i32 @sqlite3Error(%struct.TYPE_11__* %36, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %218, %72, %68, %31
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @SQLITE_OK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %43, %39
  %50 = phi i1 [ false, %39 ], [ %48, %43 ]
  br i1 %50, label %51, label %222

51:                                               ; preds = %49
  store i8** null, i8*** %18, align 8
  store i32* null, i32** %14, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @sqlite3_prepare_v2(%struct.TYPE_11__* %52, i8* %53, i32 -1, i32** %14, i8** %13)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @SQLITE_OK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32*, i32** %14, align 8
  %60 = icmp eq i32* %59, null
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi i1 [ true, %51 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @SQLITE_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %39

69:                                               ; preds = %61
  %70 = load i32*, i32** %14, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i8*, i8** %13, align 8
  store i8* %73, i8** %8, align 8
  br label %39

74:                                               ; preds = %69
  store i32 0, i32* %16, align 4
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @sqlite3_column_count(i32* %75)
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %74, %217
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @sqlite3_step(i32* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i64 (i8*, i32, i8**, i8**)*, i64 (i8*, i32, i8**, i8**)** %9, align 8
  %81 = icmp ne i64 (i8*, i32, i8**, i8**)* %80, null
  br i1 %81, label %82, label %199

82:                                               ; preds = %77
  %83 = load i32, i32* @SQLITE_ROW, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %100, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @SQLITE_DONE, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %199

90:                                               ; preds = %86
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %199, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SQLITE_NullCallback, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %199

100:                                              ; preds = %93, %82
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %141, label %103

103:                                              ; preds = %100
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = load i32, i32* %17, align 4
  %106 = mul nsw i32 2, %105
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 8
  %109 = add i64 %108, 1
  %110 = trunc i64 %109 to i32
  %111 = call i8** @sqlite3DbMallocZero(%struct.TYPE_11__* %104, i32 %110)
  store i8** %111, i8*** %15, align 8
  %112 = load i8**, i8*** %15, align 8
  %113 = icmp eq i8** %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %223

115:                                              ; preds = %103
  store i32 0, i32* %19, align 4
  br label %116

116:                                              ; preds = %137, %115
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %116
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* %19, align 4
  %123 = call i64 @sqlite3_column_name(i32* %121, i32 %122)
  %124 = inttoptr i64 %123 to i8*
  %125 = load i8**, i8*** %15, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* %124, i8** %128, align 8
  %129 = load i8**, i8*** %15, align 8
  %130 = load i32, i32* %19, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  br label %137

137:                                              ; preds = %120
  %138 = load i32, i32* %19, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %19, align 4
  br label %116

140:                                              ; preds = %116
  store i32 1, i32* %16, align 4
  br label %141

141:                                              ; preds = %140, %100
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @SQLITE_ROW, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %183

145:                                              ; preds = %141
  %146 = load i8**, i8*** %15, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %146, i64 %148
  store i8** %149, i8*** %18, align 8
  store i32 0, i32* %19, align 4
  br label %150

150:                                              ; preds = %179, %145
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %182

154:                                              ; preds = %150
  %155 = load i32*, i32** %14, align 8
  %156 = load i32, i32* %19, align 4
  %157 = call i64 @sqlite3_column_text(i32* %155, i32 %156)
  %158 = inttoptr i64 %157 to i8*
  %159 = load i8**, i8*** %18, align 8
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  store i8* %158, i8** %162, align 8
  %163 = load i8**, i8*** %18, align 8
  %164 = load i32, i32* %19, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %178, label %169

169:                                              ; preds = %154
  %170 = load i32*, i32** %14, align 8
  %171 = load i32, i32* %19, align 4
  %172 = call i64 @sqlite3_column_type(i32* %170, i32 %171)
  %173 = load i64, i64* @SQLITE_NULL, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  store i32 1, i32* %177, align 4
  br label %223

178:                                              ; preds = %169, %154
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %19, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %19, align 4
  br label %150

182:                                              ; preds = %150
  br label %183

183:                                              ; preds = %182, %141
  %184 = load i64 (i8*, i32, i8**, i8**)*, i64 (i8*, i32, i8**, i8**)** %9, align 8
  %185 = load i8*, i8** %10, align 8
  %186 = load i32, i32* %17, align 4
  %187 = load i8**, i8*** %18, align 8
  %188 = load i8**, i8*** %15, align 8
  %189 = call i64 %184(i8* %185, i32 %186, i8** %187, i8** %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %183
  %192 = load i32, i32* @SQLITE_ABORT, align 4
  store i32 %192, i32* %12, align 4
  %193 = load i32*, i32** %14, align 8
  %194 = call i32 @sqlite3VdbeFinalize(i32* %193)
  store i32* null, i32** %14, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %196 = load i32, i32* @SQLITE_ABORT, align 4
  %197 = call i32 @sqlite3Error(%struct.TYPE_11__* %195, i32 %196, i32 0)
  br label %223

198:                                              ; preds = %183
  br label %199

199:                                              ; preds = %198, %93, %90, %86, %77
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @SQLITE_ROW, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %217

203:                                              ; preds = %199
  %204 = load i32*, i32** %14, align 8
  %205 = call i32 @sqlite3VdbeFinalize(i32* %204)
  store i32 %205, i32* %12, align 4
  store i32* null, i32** %14, align 8
  %206 = load i8*, i8** %13, align 8
  store i8* %206, i8** %8, align 8
  br label %207

207:                                              ; preds = %213, %203
  %208 = load i8*, i8** %8, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 0
  %210 = load i8, i8* %209, align 1
  %211 = call i64 @sqlite3Isspace(i8 signext %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load i8*, i8** %8, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %8, align 8
  br label %207

216:                                              ; preds = %207
  br label %218

217:                                              ; preds = %199
  br label %77

218:                                              ; preds = %216
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %220 = load i8**, i8*** %15, align 8
  %221 = call i32 @sqlite3DbFree(%struct.TYPE_11__* %219, i8** %220)
  store i8** null, i8*** %15, align 8
  br label %39

222:                                              ; preds = %49
  br label %223

223:                                              ; preds = %222, %191, %175, %114
  %224 = load i32*, i32** %14, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i32*, i32** %14, align 8
  %228 = call i32 @sqlite3VdbeFinalize(i32* %227)
  br label %229

229:                                              ; preds = %226, %223
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %231 = load i8**, i8*** %15, align 8
  %232 = call i32 @sqlite3DbFree(%struct.TYPE_11__* %230, i8** %231)
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %234 = load i32, i32* %12, align 4
  %235 = call i32 @sqlite3ApiExit(%struct.TYPE_11__* %233, i32 %234)
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* @SQLITE_OK, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %274

239:                                              ; preds = %229
  %240 = load i32, i32* %12, align 4
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %242 = call i32 @sqlite3_errcode(%struct.TYPE_11__* %241)
  %243 = icmp eq i32 %240, %242
  %244 = zext i1 %243 to i32
  %245 = call i64 @ALWAYS(i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %274

247:                                              ; preds = %239
  %248 = load i8**, i8*** %11, align 8
  %249 = icmp ne i8** %248, null
  br i1 %249, label %250, label %274

250:                                              ; preds = %247
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %252 = call i32 @sqlite3_errmsg(%struct.TYPE_11__* %251)
  %253 = call i32 @sqlite3Strlen30(i32 %252)
  %254 = add nsw i32 1, %253
  store i32 %254, i32* %20, align 4
  %255 = load i32, i32* %20, align 4
  %256 = call i8* @sqlite3Malloc(i32 %255)
  %257 = load i8**, i8*** %11, align 8
  store i8* %256, i8** %257, align 8
  %258 = load i8**, i8*** %11, align 8
  %259 = load i8*, i8** %258, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %268

261:                                              ; preds = %250
  %262 = load i8**, i8*** %11, align 8
  %263 = load i8*, i8** %262, align 8
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %265 = call i32 @sqlite3_errmsg(%struct.TYPE_11__* %264)
  %266 = load i32, i32* %20, align 4
  %267 = call i32 @memcpy(i8* %263, i32 %265, i32 %266)
  br label %273

268:                                              ; preds = %250
  %269 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %269, i32* %12, align 4
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %271 = load i32, i32* @SQLITE_NOMEM, align 4
  %272 = call i32 @sqlite3Error(%struct.TYPE_11__* %270, i32 %271, i32 0)
  br label %273

273:                                              ; preds = %268, %261
  br label %280

274:                                              ; preds = %247, %239, %229
  %275 = load i8**, i8*** %11, align 8
  %276 = icmp ne i8** %275, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = load i8**, i8*** %11, align 8
  store i8* null, i8** %278, align 8
  br label %279

279:                                              ; preds = %277, %274
  br label %280

280:                                              ; preds = %279, %273
  %281 = load i32, i32* %12, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %281, %284
  %286 = load i32, i32* %12, align 4
  %287 = icmp eq i32 %285, %286
  %288 = zext i1 %287 to i32
  %289 = call i32 @assert(i32 %288)
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @sqlite3_mutex_leave(i32 %292)
  %294 = load i32, i32* %12, align 4
  store i32 %294, i32* %6, align 4
  br label %295

295:                                              ; preds = %280, %25
  %296 = load i32, i32* %6, align 4
  ret i32 %296
}

declare dso_local i32 @sqlite3SafetyCheckOk(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @sqlite3_prepare_v2(%struct.TYPE_11__*, i8*, i32, i32**, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i8** @sqlite3DbMallocZero(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @sqlite3_column_name(i32*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeFinalize(i32*) #1

declare dso_local i64 @sqlite3Isspace(i8 signext) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_11__*, i8**) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i32 @sqlite3_errcode(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3Strlen30(i32) #1

declare dso_local i32 @sqlite3_errmsg(%struct.TYPE_11__*) #1

declare dso_local i8* @sqlite3Malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
