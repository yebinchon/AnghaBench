; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3_exec.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3_exec.c"
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
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 (i8*, i32, i8**, i8**)* %2, i64 (i8*, i32, i8**, i8**)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %20 = load i32, i32* @SQLITE_OK, align 4
  store i32 %20, i32* %12, align 4
  store i32* null, i32** %14, align 8
  store i8** null, i8*** %15, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %22 = call i32 @sqlite3SafetyCheckOk(%struct.TYPE_11__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %25, i32* %6, align 4
  br label %280

26:                                               ; preds = %5
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %30

30:                                               ; preds = %29, %26
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sqlite3_mutex_enter(i32 %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = load i32, i32* @SQLITE_OK, align 4
  %37 = call i32 @sqlite3Error(%struct.TYPE_11__* %35, i32 %36)
  br label %38

38:                                               ; preds = %221, %71, %67, %30
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @SQLITE_OK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %42, %38
  %49 = phi i1 [ false, %38 ], [ %47, %42 ]
  br i1 %49, label %50, label %225

50:                                               ; preds = %48
  store i32 0, i32* %17, align 4
  store i8** null, i8*** %18, align 8
  store i32* null, i32** %14, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @sqlite3_prepare_v2(%struct.TYPE_11__* %51, i8* %52, i32 -1, i32** %14, i8** %13)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @SQLITE_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load i32*, i32** %14, align 8
  %59 = icmp eq i32* %58, null
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi i1 [ true, %50 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @SQLITE_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %38

68:                                               ; preds = %60
  %69 = load i32*, i32** %14, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %68
  %72 = load i8*, i8** %13, align 8
  store i8* %72, i8** %8, align 8
  br label %38

73:                                               ; preds = %68
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %73, %220
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @sqlite3_step(i32* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i64 (i8*, i32, i8**, i8**)*, i64 (i8*, i32, i8**, i8**)** %9, align 8
  %78 = icmp ne i64 (i8*, i32, i8**, i8**)* %77, null
  br i1 %78, label %79, label %202

79:                                               ; preds = %74
  %80 = load i32, i32* @SQLITE_ROW, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* @SQLITE_DONE, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %202

87:                                               ; preds = %83
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %202, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SQLITE_NullCallback, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %202

97:                                               ; preds = %90, %79
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %140, label %100

100:                                              ; preds = %97
  %101 = load i32*, i32** %14, align 8
  %102 = call i32 @sqlite3_column_count(i32* %101)
  store i32 %102, i32* %17, align 4
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %104 = load i32, i32* %17, align 4
  %105 = mul nsw i32 2, %104
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 8
  %109 = trunc i64 %108 to i32
  %110 = call i8** @sqlite3DbMallocRaw(%struct.TYPE_11__* %103, i32 %109)
  store i8** %110, i8*** %15, align 8
  %111 = load i8**, i8*** %15, align 8
  %112 = icmp eq i8** %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %100
  br label %226

114:                                              ; preds = %100
  store i32 0, i32* %19, align 4
  br label %115

115:                                              ; preds = %136, %114
  %116 = load i32, i32* %19, align 4
  %117 = load i32, i32* %17, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %115
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* %19, align 4
  %122 = call i64 @sqlite3_column_name(i32* %120, i32 %121)
  %123 = inttoptr i64 %122 to i8*
  %124 = load i8**, i8*** %15, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  store i8* %123, i8** %127, align 8
  %128 = load i8**, i8*** %15, align 8
  %129 = load i32, i32* %19, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8*, i8** %128, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  br label %136

136:                                              ; preds = %119
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %19, align 4
  br label %115

139:                                              ; preds = %115
  store i32 1, i32* %16, align 4
  br label %140

140:                                              ; preds = %139, %97
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @SQLITE_ROW, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %186

144:                                              ; preds = %140
  %145 = load i8**, i8*** %15, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  store i8** %148, i8*** %18, align 8
  store i32 0, i32* %19, align 4
  br label %149

149:                                              ; preds = %178, %144
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* %17, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %181

153:                                              ; preds = %149
  %154 = load i32*, i32** %14, align 8
  %155 = load i32, i32* %19, align 4
  %156 = call i64 @sqlite3_column_text(i32* %154, i32 %155)
  %157 = inttoptr i64 %156 to i8*
  %158 = load i8**, i8*** %18, align 8
  %159 = load i32, i32* %19, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  store i8* %157, i8** %161, align 8
  %162 = load i8**, i8*** %18, align 8
  %163 = load i32, i32* %19, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %162, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %177, label %168

168:                                              ; preds = %153
  %169 = load i32*, i32** %14, align 8
  %170 = load i32, i32* %19, align 4
  %171 = call i64 @sqlite3_column_type(i32* %169, i32 %170)
  %172 = load i64, i64* @SQLITE_NULL, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %176 = call i32 @sqlite3OomFault(%struct.TYPE_11__* %175)
  br label %226

177:                                              ; preds = %168, %153
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %19, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %19, align 4
  br label %149

181:                                              ; preds = %149
  %182 = load i8**, i8*** %18, align 8
  %183 = load i32, i32* %19, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  store i8* null, i8** %185, align 8
  br label %186

186:                                              ; preds = %181, %140
  %187 = load i64 (i8*, i32, i8**, i8**)*, i64 (i8*, i32, i8**, i8**)** %9, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = load i32, i32* %17, align 4
  %190 = load i8**, i8*** %18, align 8
  %191 = load i8**, i8*** %15, align 8
  %192 = call i64 %187(i8* %188, i32 %189, i8** %190, i8** %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %186
  %195 = load i32, i32* @SQLITE_ABORT, align 4
  store i32 %195, i32* %12, align 4
  %196 = load i32*, i32** %14, align 8
  %197 = call i32 @sqlite3VdbeFinalize(i32* %196)
  store i32* null, i32** %14, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %199 = load i32, i32* @SQLITE_ABORT, align 4
  %200 = call i32 @sqlite3Error(%struct.TYPE_11__* %198, i32 %199)
  br label %226

201:                                              ; preds = %186
  br label %202

202:                                              ; preds = %201, %90, %87, %83, %74
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @SQLITE_ROW, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %220

206:                                              ; preds = %202
  %207 = load i32*, i32** %14, align 8
  %208 = call i32 @sqlite3VdbeFinalize(i32* %207)
  store i32 %208, i32* %12, align 4
  store i32* null, i32** %14, align 8
  %209 = load i8*, i8** %13, align 8
  store i8* %209, i8** %8, align 8
  br label %210

210:                                              ; preds = %216, %206
  %211 = load i8*, i8** %8, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  %213 = load i8, i8* %212, align 1
  %214 = call i64 @sqlite3Isspace(i8 signext %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load i8*, i8** %8, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %8, align 8
  br label %210

219:                                              ; preds = %210
  br label %221

220:                                              ; preds = %202
  br label %74

221:                                              ; preds = %219
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %223 = load i8**, i8*** %15, align 8
  %224 = call i32 @sqlite3DbFree(%struct.TYPE_11__* %222, i8** %223)
  store i8** null, i8*** %15, align 8
  br label %38

225:                                              ; preds = %48
  br label %226

226:                                              ; preds = %225, %194, %174, %113
  %227 = load i32*, i32** %14, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i32*, i32** %14, align 8
  %231 = call i32 @sqlite3VdbeFinalize(i32* %230)
  br label %232

232:                                              ; preds = %229, %226
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %234 = load i8**, i8*** %15, align 8
  %235 = call i32 @sqlite3DbFree(%struct.TYPE_11__* %233, i8** %234)
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %237 = load i32, i32* %12, align 4
  %238 = call i32 @sqlite3ApiExit(%struct.TYPE_11__* %236, i32 %237)
  store i32 %238, i32* %12, align 4
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* @SQLITE_OK, align 4
  %241 = icmp ne i32 %239, %240
  br i1 %241, label %242, label %259

242:                                              ; preds = %232
  %243 = load i8**, i8*** %11, align 8
  %244 = icmp ne i8** %243, null
  br i1 %244, label %245, label %259

245:                                              ; preds = %242
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %247 = call i32 @sqlite3_errmsg(%struct.TYPE_11__* %246)
  %248 = call i8* @sqlite3DbStrDup(i32 0, i32 %247)
  %249 = load i8**, i8*** %11, align 8
  store i8* %248, i8** %249, align 8
  %250 = load i8**, i8*** %11, align 8
  %251 = load i8*, i8** %250, align 8
  %252 = icmp eq i8* %251, null
  br i1 %252, label %253, label %258

253:                                              ; preds = %245
  %254 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %254, i32* %12, align 4
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %256 = load i32, i32* @SQLITE_NOMEM, align 4
  %257 = call i32 @sqlite3Error(%struct.TYPE_11__* %255, i32 %256)
  br label %258

258:                                              ; preds = %253, %245
  br label %265

259:                                              ; preds = %242, %232
  %260 = load i8**, i8*** %11, align 8
  %261 = icmp ne i8** %260, null
  br i1 %261, label %262, label %264

262:                                              ; preds = %259
  %263 = load i8**, i8*** %11, align 8
  store i8* null, i8** %263, align 8
  br label %264

264:                                              ; preds = %262, %259
  br label %265

265:                                              ; preds = %264, %258
  %266 = load i32, i32* %12, align 4
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %266, %269
  %271 = load i32, i32* %12, align 4
  %272 = icmp eq i32 %270, %271
  %273 = zext i1 %272 to i32
  %274 = call i32 @assert(i32 %273)
  %275 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @sqlite3_mutex_leave(i32 %277)
  %279 = load i32, i32* %12, align 4
  store i32 %279, i32* %6, align 4
  br label %280

280:                                              ; preds = %265, %24
  %281 = load i32, i32* %6, align 4
  ret i32 %281
}

declare dso_local i32 @sqlite3SafetyCheckOk(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @sqlite3_prepare_v2(%struct.TYPE_11__*, i8*, i32, i32**, i8**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_step(i32*) #1

declare dso_local i32 @sqlite3_column_count(i32*) #1

declare dso_local i8** @sqlite3DbMallocRaw(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @sqlite3_column_name(i32*, i32) #1

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i64 @sqlite3_column_type(i32*, i32) #1

declare dso_local i32 @sqlite3OomFault(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3VdbeFinalize(i32*) #1

declare dso_local i64 @sqlite3Isspace(i8 signext) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_11__*, i8**) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_11__*, i32) #1

declare dso_local i8* @sqlite3DbStrDup(i32, i32) #1

declare dso_local i32 @sqlite3_errmsg(%struct.TYPE_11__*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
