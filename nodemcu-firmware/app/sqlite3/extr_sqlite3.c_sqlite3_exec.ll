; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_exec.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SQLITE_ROW = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SQLITE_NullCallback = common dso_local global i32 0, align 4
@SQLITE_NULL = common dso_local global i64 0, align 8
@SQLITE_ABORT = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
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
  br label %291

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %31

31:                                               ; preds = %30, %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sqlite3_mutex_enter(i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = call i32 @sqlite3Error(%struct.TYPE_11__* %36, i32 %37)
  br label %39

39:                                               ; preds = %222, %72, %68, %31
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
  br i1 %50, label %51, label %226

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

77:                                               ; preds = %74, %221
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @sqlite3_step(i32* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i64 (i8*, i32, i8**, i8**)*, i64 (i8*, i32, i8**, i8**)** %9, align 8
  %81 = icmp ne i64 (i8*, i32, i8**, i8**)* %80, null
  br i1 %81, label %82, label %203

82:                                               ; preds = %77
  %83 = load i32, i32* @SQLITE_ROW, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %100, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @SQLITE_DONE, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %203

90:                                               ; preds = %86
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %203, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SQLITE_NullCallback, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %203

100:                                              ; preds = %93, %82
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %141, label %103

103:                                              ; preds = %100
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %105 = load i32, i32* %17, align 4
  %106 = mul nsw i32 2, %105
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 8
  %110 = trunc i64 %109 to i32
  %111 = call i8** @sqlite3DbMallocRaw(%struct.TYPE_11__* %104, i32 %110)
  store i8** %111, i8*** %15, align 8
  %112 = load i8**, i8*** %15, align 8
  %113 = icmp eq i8** %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %227

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
  br i1 %144, label %145, label %187

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
  %177 = call i32 @sqlite3OomFault(%struct.TYPE_11__* %176)
  br label %227

178:                                              ; preds = %169, %154
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %19, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %19, align 4
  br label %150

182:                                              ; preds = %150
  %183 = load i8**, i8*** %18, align 8
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8*, i8** %183, i64 %185
  store i8* null, i8** %186, align 8
  br label %187

187:                                              ; preds = %182, %141
  %188 = load i64 (i8*, i32, i8**, i8**)*, i64 (i8*, i32, i8**, i8**)** %9, align 8
  %189 = load i8*, i8** %10, align 8
  %190 = load i32, i32* %17, align 4
  %191 = load i8**, i8*** %18, align 8
  %192 = load i8**, i8*** %15, align 8
  %193 = call i64 %188(i8* %189, i32 %190, i8** %191, i8** %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %187
  %196 = load i32, i32* @SQLITE_ABORT, align 4
  store i32 %196, i32* %12, align 4
  %197 = load i32*, i32** %14, align 8
  %198 = call i32 @sqlite3VdbeFinalize(i32* %197)
  store i32* null, i32** %14, align 8
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %200 = load i32, i32* @SQLITE_ABORT, align 4
  %201 = call i32 @sqlite3Error(%struct.TYPE_11__* %199, i32 %200)
  br label %227

202:                                              ; preds = %187
  br label %203

203:                                              ; preds = %202, %93, %90, %86, %77
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* @SQLITE_ROW, align 4
  %206 = icmp ne i32 %204, %205
  br i1 %206, label %207, label %221

207:                                              ; preds = %203
  %208 = load i32*, i32** %14, align 8
  %209 = call i32 @sqlite3VdbeFinalize(i32* %208)
  store i32 %209, i32* %12, align 4
  store i32* null, i32** %14, align 8
  %210 = load i8*, i8** %13, align 8
  store i8* %210, i8** %8, align 8
  br label %211

211:                                              ; preds = %217, %207
  %212 = load i8*, i8** %8, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 0
  %214 = load i8, i8* %213, align 1
  %215 = call i64 @sqlite3Isspace(i8 signext %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %211
  %218 = load i8*, i8** %8, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %8, align 8
  br label %211

220:                                              ; preds = %211
  br label %222

221:                                              ; preds = %203
  br label %77

222:                                              ; preds = %220
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %224 = load i8**, i8*** %15, align 8
  %225 = call i32 @sqlite3DbFree(%struct.TYPE_11__* %223, i8** %224)
  store i8** null, i8*** %15, align 8
  br label %39

226:                                              ; preds = %49
  br label %227

227:                                              ; preds = %226, %195, %175, %114
  %228 = load i32*, i32** %14, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i32*, i32** %14, align 8
  %232 = call i32 @sqlite3VdbeFinalize(i32* %231)
  br label %233

233:                                              ; preds = %230, %227
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %235 = load i8**, i8*** %15, align 8
  %236 = call i32 @sqlite3DbFree(%struct.TYPE_11__* %234, i8** %235)
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %238 = load i32, i32* %12, align 4
  %239 = call i32 @sqlite3ApiExit(%struct.TYPE_11__* %237, i32 %238)
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* @SQLITE_OK, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %270

243:                                              ; preds = %233
  %244 = load i8**, i8*** %11, align 8
  %245 = icmp ne i8** %244, null
  br i1 %245, label %246, label %270

246:                                              ; preds = %243
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %248 = call i32 @sqlite3_errmsg(%struct.TYPE_11__* %247)
  %249 = call i32 @sqlite3Strlen30(i32 %248)
  %250 = add nsw i32 1, %249
  store i32 %250, i32* %20, align 4
  %251 = load i32, i32* %20, align 4
  %252 = call i8* @sqlite3Malloc(i32 %251)
  %253 = load i8**, i8*** %11, align 8
  store i8* %252, i8** %253, align 8
  %254 = load i8**, i8*** %11, align 8
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %264

257:                                              ; preds = %246
  %258 = load i8**, i8*** %11, align 8
  %259 = load i8*, i8** %258, align 8
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %261 = call i32 @sqlite3_errmsg(%struct.TYPE_11__* %260)
  %262 = load i32, i32* %20, align 4
  %263 = call i32 @memcpy(i8* %259, i32 %261, i32 %262)
  br label %269

264:                                              ; preds = %246
  %265 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %265, i32* %12, align 4
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %267 = load i32, i32* @SQLITE_NOMEM, align 4
  %268 = call i32 @sqlite3Error(%struct.TYPE_11__* %266, i32 %267)
  br label %269

269:                                              ; preds = %264, %257
  br label %276

270:                                              ; preds = %243, %233
  %271 = load i8**, i8*** %11, align 8
  %272 = icmp ne i8** %271, null
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = load i8**, i8*** %11, align 8
  store i8* null, i8** %274, align 8
  br label %275

275:                                              ; preds = %273, %270
  br label %276

276:                                              ; preds = %275, %269
  %277 = load i32, i32* %12, align 4
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %277, %280
  %282 = load i32, i32* %12, align 4
  %283 = icmp eq i32 %281, %282
  %284 = zext i1 %283 to i32
  %285 = call i32 @assert(i32 %284)
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @sqlite3_mutex_leave(i32 %288)
  %290 = load i32, i32* %12, align 4
  store i32 %290, i32* %6, align 4
  br label %291

291:                                              ; preds = %276, %25
  %292 = load i32, i32* %6, align 4
  ret i32 %292
}

declare dso_local i32 @sqlite3SafetyCheckOk(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sqlite3_prepare_v2(%struct.TYPE_11__*, i8*, i32, i32**, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i8** @sqlite3DbMallocRaw(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @sqlite3_column_name(i32*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @sqlite3OomFault(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3VdbeFinalize(i32*) #1

declare dso_local i64 @sqlite3Isspace(i8 signext) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_11__*, i8**) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_11__*, i32) #1

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
