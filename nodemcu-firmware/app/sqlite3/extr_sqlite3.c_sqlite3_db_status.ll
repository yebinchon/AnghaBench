; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_db_status.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_sqlite3_db_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 (i32)* }
%struct.TYPE_24__ = type { i32, i32*, i32, i32, i32, %struct.TYPE_23__*, %struct.Vdbe*, %struct.TYPE_19__ }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_26__, %struct.TYPE_26__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.Vdbe = type { %struct.Vdbe* }
%struct.TYPE_19__ = type { i32, i32, i32* }

@SQLITE_OK = common dso_local global i32 0, align 4
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_db_status(%struct.TYPE_24__* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_25__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.Vdbe*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @sqlite3_mutex_enter(i32 %29)
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %350 [
    i32 130, label %32
    i32 133, label %54
    i32 131, label %54
    i32 132, label %54
    i32 136, label %100
    i32 137, label %100
    i32 129, label %146
    i32 128, label %268
    i32 139, label %294
    i32 138, label %294
    i32 135, label %294
    i32 134, label %335
  ]

32:                                               ; preds = %5
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %32
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %32
  br label %352

54:                                               ; preds = %5, %5, %5
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 133
  %57 = zext i1 %56 to i32
  %58 = call i32 @testcase(i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 131
  %61 = zext i1 %60 to i32
  %62 = call i32 @testcase(i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp eq i32 %63, 132
  %65 = zext i1 %64 to i32
  %66 = call i32 @testcase(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %67, 133
  %69 = icmp sge i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, 133
  %74 = icmp slt i32 %73, 3
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i32*, i32** %8, align 8
  store i32 0, i32* %77, align 4
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 %82, 133
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %54
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, 133
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %90, %54
  br label %352

100:                                              ; preds = %5, %5
  store i32 0, i32* %12, align 4
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %102 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_24__* %101)
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %137, %100
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %140

109:                                              ; preds = %103
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %14, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %136

120:                                              ; preds = %109
  %121 = load i32*, i32** %14, align 8
  %122 = call i32* @sqlite3BtreePager(i32* %121)
  store i32* %122, i32** %15, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 @sqlite3PagerMemUsed(i32* %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp eq i32 %125, 136
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load i32, i32* %16, align 4
  %129 = load i32*, i32** %14, align 8
  %130 = call i32 @sqlite3BtreeConnectionCount(i32* %129)
  %131 = sdiv i32 %128, %130
  store i32 %131, i32* %16, align 4
  br label %132

132:                                              ; preds = %127, %120
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %132, %109
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %103

140:                                              ; preds = %103
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %142 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_24__* %141)
  %143 = load i32, i32* %12, align 4
  %144 = load i32*, i32** %8, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32*, i32** %9, align 8
  store i32 0, i32* %145, align 4
  br label %352

146:                                              ; preds = %5
  store i32 0, i32* %18, align 4
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %148 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_24__* %147)
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 1
  store i32* %18, i32** %150, align 8
  store i32 0, i32* %17, align 4
  br label %151

151:                                              ; preds = %257, %146
  %152 = load i32, i32* %17, align 4
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %260

157:                                              ; preds = %151
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 5
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %159, align 8
  %161 = load i32, i32* %17, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %164, align 8
  store %struct.TYPE_25__* %165, %struct.TYPE_25__** %19, align 8
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %167 = icmp ne %struct.TYPE_25__* %166, null
  %168 = zext i1 %167 to i32
  %169 = call i32 @ALWAYS(i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %256

171:                                              ; preds = %157
  %172 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %173 = call i32 %172(i32 4)
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %177, %181
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %182, %186
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %187, %191
  %193 = mul nsw i32 %173, %192
  %194 = load i32, i32* %18, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %18, align 4
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @sqlite3_msize(i32 %199)
  %201 = load i32, i32* %18, align 4
  %202 = add nsw i32 %201, %200
  store i32 %202, i32* %18, align 4
  %203 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @sqlite3_msize(i32 %206)
  %208 = load i32, i32* %18, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %18, align 4
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @sqlite3_msize(i32 %213)
  %215 = load i32, i32* %18, align 4
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* %18, align 4
  %217 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @sqlite3_msize(i32 %220)
  %222 = load i32, i32* %18, align 4
  %223 = add nsw i32 %222, %221
  store i32 %223, i32* %18, align 4
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %225 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %224, i32 0, i32 1
  %226 = call i32* @sqliteHashFirst(%struct.TYPE_26__* %225)
  store i32* %226, i32** %20, align 8
  br label %227

227:                                              ; preds = %236, %171
  %228 = load i32*, i32** %20, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %239

230:                                              ; preds = %227
  %231 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %232 = load i32*, i32** %20, align 8
  %233 = call i64 @sqliteHashData(i32* %232)
  %234 = inttoptr i64 %233 to i32*
  %235 = call i32 @sqlite3DeleteTrigger(%struct.TYPE_24__* %231, i32* %234)
  br label %236

236:                                              ; preds = %230
  %237 = load i32*, i32** %20, align 8
  %238 = call i32* @sqliteHashNext(i32* %237)
  store i32* %238, i32** %20, align 8
  br label %227

239:                                              ; preds = %227
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %19, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 0
  %242 = call i32* @sqliteHashFirst(%struct.TYPE_26__* %241)
  store i32* %242, i32** %20, align 8
  br label %243

243:                                              ; preds = %252, %239
  %244 = load i32*, i32** %20, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %255

246:                                              ; preds = %243
  %247 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %248 = load i32*, i32** %20, align 8
  %249 = call i64 @sqliteHashData(i32* %248)
  %250 = inttoptr i64 %249 to i32*
  %251 = call i32 @sqlite3DeleteTable(%struct.TYPE_24__* %247, i32* %250)
  br label %252

252:                                              ; preds = %246
  %253 = load i32*, i32** %20, align 8
  %254 = call i32* @sqliteHashNext(i32* %253)
  store i32* %254, i32** %20, align 8
  br label %243

255:                                              ; preds = %243
  br label %256

256:                                              ; preds = %255, %157
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %17, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %17, align 4
  br label %151

260:                                              ; preds = %151
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 1
  store i32* null, i32** %262, align 8
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %264 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_24__* %263)
  %265 = load i32*, i32** %9, align 8
  store i32 0, i32* %265, align 4
  %266 = load i32, i32* %18, align 4
  %267 = load i32*, i32** %8, align 8
  store i32 %266, i32* %267, align 4
  br label %352

268:                                              ; preds = %5
  store i32 0, i32* %22, align 4
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 1
  store i32* %22, i32** %270, align 8
  %271 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %271, i32 0, i32 6
  %273 = load %struct.Vdbe*, %struct.Vdbe** %272, align 8
  store %struct.Vdbe* %273, %struct.Vdbe** %21, align 8
  br label %274

274:                                              ; preds = %284, %268
  %275 = load %struct.Vdbe*, %struct.Vdbe** %21, align 8
  %276 = icmp ne %struct.Vdbe* %275, null
  br i1 %276, label %277, label %288

277:                                              ; preds = %274
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %279 = load %struct.Vdbe*, %struct.Vdbe** %21, align 8
  %280 = call i32 @sqlite3VdbeClearObject(%struct.TYPE_24__* %278, %struct.Vdbe* %279)
  %281 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %282 = load %struct.Vdbe*, %struct.Vdbe** %21, align 8
  %283 = call i32 @sqlite3DbFree(%struct.TYPE_24__* %281, %struct.Vdbe* %282)
  br label %284

284:                                              ; preds = %277
  %285 = load %struct.Vdbe*, %struct.Vdbe** %21, align 8
  %286 = getelementptr inbounds %struct.Vdbe, %struct.Vdbe* %285, i32 0, i32 0
  %287 = load %struct.Vdbe*, %struct.Vdbe** %286, align 8
  store %struct.Vdbe* %287, %struct.Vdbe** %21, align 8
  br label %274

288:                                              ; preds = %274
  %289 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %289, i32 0, i32 1
  store i32* null, i32** %290, align 8
  %291 = load i32*, i32** %9, align 8
  store i32 0, i32* %291, align 4
  %292 = load i32, i32* %22, align 4
  %293 = load i32*, i32** %8, align 8
  store i32 %292, i32* %293, align 4
  br label %352

294:                                              ; preds = %5, %5, %5
  store i32 0, i32* %24, align 4
  %295 = call i32 @assert(i32 0)
  %296 = call i32 @assert(i32 0)
  store i32 0, i32* %23, align 4
  br label %297

297:                                              ; preds = %328, %294
  %298 = load i32, i32* %23, align 4
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp slt i32 %298, %301
  br i1 %302, label %303, label %331

303:                                              ; preds = %297
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %305, align 8
  %307 = load i32, i32* %23, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %327

313:                                              ; preds = %303
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 5
  %316 = load %struct.TYPE_23__*, %struct.TYPE_23__** %315, align 8
  %317 = load i32, i32* %23, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %316, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = call i32* @sqlite3BtreePager(i32* %321)
  store i32* %322, i32** %25, align 8
  %323 = load i32*, i32** %25, align 8
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* %10, align 4
  %326 = call i32 @sqlite3PagerCacheStat(i32* %323, i32 %324, i32 %325, i32* %24)
  br label %327

327:                                              ; preds = %313, %303
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %23, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %23, align 4
  br label %297

331:                                              ; preds = %297
  %332 = load i32*, i32** %9, align 8
  store i32 0, i32* %332, align 4
  %333 = load i32, i32* %24, align 4
  %334 = load i32*, i32** %8, align 8
  store i32 %333, i32* %334, align 4
  br label %352

335:                                              ; preds = %5
  %336 = load i32*, i32** %9, align 8
  store i32 0, i32* %336, align 4
  %337 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 8
  %340 = icmp sgt i32 %339, 0
  br i1 %340, label %346, label %341

341:                                              ; preds = %335
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = icmp sgt i32 %344, 0
  br label %346

346:                                              ; preds = %341, %335
  %347 = phi i1 [ true, %335 ], [ %345, %341 ]
  %348 = zext i1 %347 to i32
  %349 = load i32*, i32** %8, align 8
  store i32 %348, i32* %349, align 4
  br label %352

350:                                              ; preds = %5
  %351 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %351, i32* %11, align 4
  br label %352

352:                                              ; preds = %350, %346, %331, %288, %260, %140, %99, %53
  %353 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @sqlite3_mutex_leave(i32 %355)
  %357 = load i32, i32* %11, align 4
  ret i32 %357
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeEnterAll(%struct.TYPE_24__*) #1

declare dso_local i32* @sqlite3BtreePager(i32*) #1

declare dso_local i32 @sqlite3PagerMemUsed(i32*) #1

declare dso_local i32 @sqlite3BtreeConnectionCount(i32*) #1

declare dso_local i32 @sqlite3BtreeLeaveAll(%struct.TYPE_24__*) #1

declare dso_local i32 @ALWAYS(i32) #1

declare dso_local i32 @sqlite3_msize(i32) #1

declare dso_local i32* @sqliteHashFirst(%struct.TYPE_26__*) #1

declare dso_local i32 @sqlite3DeleteTrigger(%struct.TYPE_24__*, i32*) #1

declare dso_local i64 @sqliteHashData(i32*) #1

declare dso_local i32* @sqliteHashNext(i32*) #1

declare dso_local i32 @sqlite3DeleteTable(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @sqlite3VdbeClearObject(%struct.TYPE_24__*, %struct.Vdbe*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_24__*, %struct.Vdbe*) #1

declare dso_local i32 @sqlite3PagerCacheStat(i32*, i32, i32, i32*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
