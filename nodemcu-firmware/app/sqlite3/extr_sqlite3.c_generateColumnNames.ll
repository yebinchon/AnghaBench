; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_generateColumnNames.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_generateColumnNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i8*, i8*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }

@SQLITE_FullColNames = common dso_local global i32 0, align 4
@SQLITE_ShortColNames = common dso_local global i32 0, align 4
@COLNAME_NAME = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@TK_AGG_COLUMN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@SQLITE_DYNAMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"column%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32*, %struct.TYPE_20__*)* @generateColumnNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateColumnNames(%struct.TYPE_19__* %0, i32* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %10, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %261

30:                                               ; preds = %3
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30
  br label %261

41:                                               ; preds = %35
  %42 = load i32*, i32** %7, align 8
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32*, i32** %5, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SQLITE_FullColNames, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SQLITE_ShortColNames, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %12, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @sqlite3VdbeSetNumCols(i32* %66, i32 %69)
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %253, %41
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %256

77:                                               ; preds = %71
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  store %struct.TYPE_21__* %85, %struct.TYPE_21__** %13, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %87 = icmp eq %struct.TYPE_21__* %86, null
  %88 = zext i1 %87 to i32
  %89 = call i64 @NEVER(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %253

92:                                               ; preds = %77
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %117

102:                                              ; preds = %92
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  store i8* %110, i8** %14, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @COLNAME_NAME, align 4
  %114 = load i8*, i8** %14, align 8
  %115 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %116 = call i32 @sqlite3VdbeSetColName(i32* %111, i32 %112, i32 %113, i8* %114, i32 %115)
  br label %252

117:                                              ; preds = %92
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @TK_COLUMN, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @TK_AGG_COLUMN, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %223

129:                                              ; preds = %123, %117
  %130 = load i32*, i32** %5, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.TYPE_18__* @tableWithCursor(i32* %130, i32 %133)
  store %struct.TYPE_18__* %134, %struct.TYPE_18__** %9, align 8
  %135 = icmp ne %struct.TYPE_18__* %134, null
  br i1 %135, label %136, label %223

136:                                              ; preds = %129
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  store i32 %145, i32* %16, align 4
  br label %146

146:                                              ; preds = %142, %136
  %147 = load i32, i32* %16, align 4
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %160, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %16, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  %153 = load i32, i32* %16, align 4
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %153, %156
  br label %158

158:                                              ; preds = %152, %149
  %159 = phi i1 [ false, %149 ], [ %157, %152 ]
  br label %160

160:                                              ; preds = %158, %146
  %161 = phi i1 [ true, %146 ], [ %159, %158 ]
  %162 = zext i1 %161 to i32
  %163 = call i32 @assert(i32 %162)
  %164 = load i32, i32* %16, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %176

167:                                              ; preds = %160
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %169, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  store i8* %175, i8** %15, align 8
  br label %176

176:                                              ; preds = %167, %166
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %198, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %198, label %182

182:                                              ; preds = %179
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* @COLNAME_NAME, align 4
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_16__*, %struct.TYPE_16__** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = call i8* @sqlite3DbStrDup(%struct.TYPE_17__* %186, i8* %194)
  %196 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %197 = call i32 @sqlite3VdbeSetColName(i32* %183, i32 %184, i32 %185, i8* %195, i32 %196)
  br label %222

198:                                              ; preds = %179, %176
  %199 = load i32, i32* %11, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %198
  store i8* null, i8** %17, align 8
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load i8*, i8** %15, align 8
  %207 = call i8* (%struct.TYPE_17__*, i8*, i32, ...) @sqlite3MPrintf(%struct.TYPE_17__* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %205, i8* %206)
  store i8* %207, i8** %17, align 8
  %208 = load i32*, i32** %7, align 8
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* @COLNAME_NAME, align 4
  %211 = load i8*, i8** %17, align 8
  %212 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %213 = call i32 @sqlite3VdbeSetColName(i32* %208, i32 %209, i32 %210, i8* %211, i32 %212)
  br label %221

214:                                              ; preds = %198
  %215 = load i32*, i32** %7, align 8
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @COLNAME_NAME, align 4
  %218 = load i8*, i8** %15, align 8
  %219 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %220 = call i32 @sqlite3VdbeSetColName(i32* %215, i32 %216, i32 %217, i8* %218, i32 %219)
  br label %221

221:                                              ; preds = %214, %201
  br label %222

222:                                              ; preds = %221, %182
  br label %251

223:                                              ; preds = %129, %123
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  store i8* %231, i8** %18, align 8
  %232 = load i8*, i8** %18, align 8
  %233 = icmp eq i8* %232, null
  br i1 %233, label %234, label %239

234:                                              ; preds = %223
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, 1
  %238 = call i8* (%struct.TYPE_17__*, i8*, i32, ...) @sqlite3MPrintf(%struct.TYPE_17__* %235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %237)
  br label %243

239:                                              ; preds = %223
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %241 = load i8*, i8** %18, align 8
  %242 = call i8* @sqlite3DbStrDup(%struct.TYPE_17__* %240, i8* %241)
  br label %243

243:                                              ; preds = %239, %234
  %244 = phi i8* [ %238, %234 ], [ %242, %239 ]
  store i8* %244, i8** %18, align 8
  %245 = load i32*, i32** %7, align 8
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @COLNAME_NAME, align 4
  %248 = load i8*, i8** %18, align 8
  %249 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %250 = call i32 @sqlite3VdbeSetColName(i32* %245, i32 %246, i32 %247, i8* %248, i32 %249)
  br label %251

251:                                              ; preds = %243, %222
  br label %252

252:                                              ; preds = %251, %102
  br label %253

253:                                              ; preds = %252, %91
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %71

256:                                              ; preds = %71
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %258 = load i32*, i32** %5, align 8
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %260 = call i32 @generateColumnTypes(%struct.TYPE_19__* %257, i32* %258, %struct.TYPE_20__* %259)
  br label %261

261:                                              ; preds = %256, %40, %29
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3VdbeSetNumCols(i32*, i32) #1

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3VdbeSetColName(i32*, i32, i32, i8*, i32) #1

declare dso_local %struct.TYPE_18__* @tableWithCursor(i32*, i32) #1

declare dso_local i8* @sqlite3DbStrDup(%struct.TYPE_17__*, i8*) #1

declare dso_local i8* @sqlite3MPrintf(%struct.TYPE_17__*, i8*, i32, ...) #1

declare dso_local i32 @generateColumnTypes(%struct.TYPE_19__*, i32*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
