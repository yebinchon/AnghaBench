; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_generateColumnNames.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_generateColumnNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i64, %struct.TYPE_21__*, i32* }
%struct.TYPE_21__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_25__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i32, i64 }

@SQLITE_FullColNames = common dso_local global i32 0, align 4
@SQLITE_ShortColNames = common dso_local global i32 0, align 4
@COLNAME_NAME = common dso_local global i32 0, align 4
@SQLITE_TRANSIENT = common dso_local global i32 0, align 4
@TK_COLUMN = common dso_local global i64 0, align 8
@TK_AGG_COLUMN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"rowid\00", align 1
@SQLITE_DYNAMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_25__*)* @generateColumnNames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generateColumnNames(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1, %struct.TYPE_25__* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %6, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %7, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  store %struct.TYPE_21__* %24, %struct.TYPE_21__** %10, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %286

30:                                               ; preds = %3
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %7, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i64 @NEVER(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41, %35, %30
  br label %286

47:                                               ; preds = %41
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SQLITE_FullColNames, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %11, align 4
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SQLITE_ShortColNames, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sqlite3VdbeSetNumCols(i32* %64, i32 %67)
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %278, %47
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %281

75:                                               ; preds = %69
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %82, align 8
  store %struct.TYPE_26__* %83, %struct.TYPE_26__** %13, align 8
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %85 = icmp eq %struct.TYPE_26__* %84, null
  %86 = zext i1 %85 to i32
  %87 = call i64 @NEVER(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %278

90:                                               ; preds = %75
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %115

100:                                              ; preds = %90
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %14, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @COLNAME_NAME, align 4
  %112 = load i8*, i8** %14, align 8
  %113 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %114 = call i32 @sqlite3VdbeSetColName(i32* %109, i32 %110, i32 %111, i8* %112, i32 %113)
  br label %277

115:                                              ; preds = %90
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @TK_COLUMN, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @TK_AGG_COLUMN, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %260

127:                                              ; preds = %121, %115
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %129 = icmp ne %struct.TYPE_23__* %128, null
  br i1 %129, label %130, label %260

130:                                              ; preds = %127
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %134

134:                                              ; preds = %158, %130
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  %140 = zext i1 %139 to i32
  %141 = call i64 @ALWAYS(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %134
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %143
  br label %161

157:                                              ; preds = %143
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %134

161:                                              ; preds = %156, %134
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %170, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  store %struct.TYPE_22__* %176, %struct.TYPE_22__** %15, align 8
  %177 = load i32, i32* %17, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %161
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  store i32 %182, i32* %17, align 4
  br label %183

183:                                              ; preds = %179, %161
  %184 = load i32, i32* %17, align 4
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %197, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %17, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load i32, i32* %17, align 4
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %190, %193
  br label %195

195:                                              ; preds = %189, %186
  %196 = phi i1 [ false, %186 ], [ %194, %189 ]
  br label %197

197:                                              ; preds = %195, %183
  %198 = phi i1 [ true, %183 ], [ %196, %195 ]
  %199 = zext i1 %198 to i32
  %200 = call i32 @assert(i32 %199)
  %201 = load i32, i32* %17, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %197
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  br label %213

204:                                              ; preds = %197
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %206, align 8
  %208 = load i32, i32* %17, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  store i8* %212, i8** %16, align 8
  br label %213

213:                                              ; preds = %204, %203
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %235, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %11, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %235, label %219

219:                                              ; preds = %216
  %220 = load i32*, i32** %7, align 8
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @COLNAME_NAME, align 4
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = call i8* @sqlite3DbStrDup(%struct.TYPE_21__* %223, i32 %231)
  %233 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %234 = call i32 @sqlite3VdbeSetColName(i32* %220, i32 %221, i32 %222, i8* %232, i32 %233)
  br label %259

235:                                              ; preds = %216, %213
  %236 = load i32, i32* %11, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %235
  store i8* null, i8** %18, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i8*, i8** %16, align 8
  %244 = call i8* @sqlite3MPrintf(%struct.TYPE_21__* %239, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %242, i8* %243)
  store i8* %244, i8** %18, align 8
  %245 = load i32*, i32** %7, align 8
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* @COLNAME_NAME, align 4
  %248 = load i8*, i8** %18, align 8
  %249 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %250 = call i32 @sqlite3VdbeSetColName(i32* %245, i32 %246, i32 %247, i8* %248, i32 %249)
  br label %258

251:                                              ; preds = %235
  %252 = load i32*, i32** %7, align 8
  %253 = load i32, i32* %8, align 4
  %254 = load i32, i32* @COLNAME_NAME, align 4
  %255 = load i8*, i8** %16, align 8
  %256 = load i32, i32* @SQLITE_TRANSIENT, align 4
  %257 = call i32 @sqlite3VdbeSetColName(i32* %252, i32 %253, i32 %254, i8* %255, i32 %256)
  br label %258

258:                                              ; preds = %251, %238
  br label %259

259:                                              ; preds = %258, %219
  br label %276

260:                                              ; preds = %127, %121
  %261 = load i32*, i32** %7, align 8
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* @COLNAME_NAME, align 4
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = call i8* @sqlite3DbStrDup(%struct.TYPE_21__* %264, i32 %272)
  %274 = load i32, i32* @SQLITE_DYNAMIC, align 4
  %275 = call i32 @sqlite3VdbeSetColName(i32* %261, i32 %262, i32 %263, i8* %273, i32 %274)
  br label %276

276:                                              ; preds = %260, %259
  br label %277

277:                                              ; preds = %276, %100
  br label %278

278:                                              ; preds = %277, %89
  %279 = load i32, i32* %8, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %8, align 4
  br label %69

281:                                              ; preds = %69
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %284 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %285 = call i32 @generateColumnTypes(%struct.TYPE_24__* %282, %struct.TYPE_23__* %283, %struct.TYPE_25__* %284)
  br label %286

286:                                              ; preds = %281, %46, %29
  ret void
}

declare dso_local i64 @NEVER(i32) #1

declare dso_local i32 @sqlite3VdbeSetNumCols(i32*, i32) #1

declare dso_local i32 @sqlite3VdbeSetColName(i32*, i32, i32, i8*, i32) #1

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @sqlite3DbStrDup(%struct.TYPE_21__*, i32) #1

declare dso_local i8* @sqlite3MPrintf(%struct.TYPE_21__*, i8*, i32, i8*) #1

declare dso_local i32 @generateColumnTypes(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
