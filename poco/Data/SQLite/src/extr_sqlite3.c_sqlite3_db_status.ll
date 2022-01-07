; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3_db_status.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_sqlite3_db_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 (i32)* }
%struct.TYPE_26__ = type { i32, i32*, i32, i32, i32, %struct.TYPE_25__*, %struct.Vdbe*, %struct.TYPE_21__ }
%struct.TYPE_25__ = type { i32*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_29__, %struct.TYPE_29__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.Vdbe = type { %struct.Vdbe* }
%struct.TYPE_21__ = type { i32*, %struct.TYPE_28__*, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_28__* }

@SQLITE_OK = common dso_local global i32 0, align 4
@sqlite3GlobalConfig = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@SQLITE_ERROR = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_db_status(%struct.TYPE_26__* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_27__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.Vdbe*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %27 = load i32, i32* @SQLITE_OK, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sqlite3_mutex_enter(i32 %30)
  %32 = load i32, i32* %7, align 4
  switch i32 %32, label %373 [
    i32 130, label %33
    i32 133, label %76
    i32 131, label %76
    i32 132, label %76
    i32 136, label %122
    i32 137, label %122
    i32 129, label %168
    i32 128, label %290
    i32 138, label %316
    i32 140, label %317
    i32 139, label %317
    i32 135, label %317
    i32 134, label %358
  ]

33:                                               ; preds = %5
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @sqlite3LookasideUsed(%struct.TYPE_26__* %34, i32* %35)
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %33
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %43, align 8
  store %struct.TYPE_28__* %44, %struct.TYPE_28__** %12, align 8
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %46 = icmp ne %struct.TYPE_28__* %45, null
  br i1 %46, label %47, label %74

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %53, %47
  %49 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %50, align 8
  %52 = icmp ne %struct.TYPE_28__* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_28__*, %struct.TYPE_28__** %55, align 8
  store %struct.TYPE_28__* %56, %struct.TYPE_28__** %12, align 8
  br label %48

57:                                               ; preds = %48
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 7
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %60, align 8
  %62 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 0
  store %struct.TYPE_28__* %61, %struct.TYPE_28__** %63, align 8
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %66, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 7
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  store %struct.TYPE_28__* %67, %struct.TYPE_28__** %70, align 8
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 1
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %73, align 8
  br label %74

74:                                               ; preds = %57, %40
  br label %75

75:                                               ; preds = %74, %33
  br label %375

76:                                               ; preds = %5, %5, %5
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %77, 133
  %79 = zext i1 %78 to i32
  %80 = call i32 @testcase(i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 131
  %83 = zext i1 %82 to i32
  %84 = call i32 @testcase(i32 %83)
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 132
  %87 = zext i1 %86 to i32
  %88 = call i32 @testcase(i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = sub nsw i32 %89, 133
  %91 = icmp sge i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %94, 133
  %96 = icmp slt i32 %95, 3
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32*, i32** %8, align 8
  store i32 0, i32* %99, align 4
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %104, 133
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %76
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sub nsw i32 %117, 133
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 0, i32* %120, align 4
  br label %121

121:                                              ; preds = %112, %76
  br label %375

122:                                              ; preds = %5, %5
  store i32 0, i32* %13, align 4
  %123 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %124 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_26__* %123)
  store i32 0, i32* %14, align 4
  br label %125

125:                                              ; preds = %159, %122
  %126 = load i32, i32* %14, align 4
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %162

131:                                              ; preds = %125
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %133, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %15, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %158

142:                                              ; preds = %131
  %143 = load i32*, i32** %15, align 8
  %144 = call i32* @sqlite3BtreePager(i32* %143)
  store i32* %144, i32** %16, align 8
  %145 = load i32*, i32** %16, align 8
  %146 = call i32 @sqlite3PagerMemUsed(i32* %145)
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %7, align 4
  %148 = icmp eq i32 %147, 136
  br i1 %148, label %149, label %154

149:                                              ; preds = %142
  %150 = load i32, i32* %17, align 4
  %151 = load i32*, i32** %15, align 8
  %152 = call i32 @sqlite3BtreeConnectionCount(i32* %151)
  %153 = sdiv i32 %150, %152
  store i32 %153, i32* %17, align 4
  br label %154

154:                                              ; preds = %149, %142
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %13, align 4
  br label %158

158:                                              ; preds = %154, %131
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %14, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %14, align 4
  br label %125

162:                                              ; preds = %125
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %164 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_26__* %163)
  %165 = load i32, i32* %13, align 4
  %166 = load i32*, i32** %8, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32*, i32** %9, align 8
  store i32 0, i32* %167, align 4
  br label %375

168:                                              ; preds = %5
  store i32 0, i32* %19, align 4
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %170 = call i32 @sqlite3BtreeEnterAll(%struct.TYPE_26__* %169)
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 1
  store i32* %19, i32** %172, align 8
  store i32 0, i32* %18, align 4
  br label %173

173:                                              ; preds = %279, %168
  %174 = load i32, i32* %18, align 4
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %282

179:                                              ; preds = %173
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %181, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %186, align 8
  store %struct.TYPE_27__* %187, %struct.TYPE_27__** %20, align 8
  %188 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %189 = icmp ne %struct.TYPE_27__* %188, null
  %190 = zext i1 %189 to i32
  %191 = call i32 @ALWAYS(i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %278

193:                                              ; preds = %179
  %194 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @sqlite3GlobalConfig, i32 0, i32 0, i32 0), align 8
  %195 = call i32 %194(i32 4)
  %196 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %197 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %199, %203
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %204, %208
  %210 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %211 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %209, %213
  %215 = mul nsw i32 %195, %214
  %216 = load i32, i32* %19, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %19, align 4
  %218 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %219 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @sqlite3_msize(i32 %221)
  %223 = load i32, i32* %19, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %19, align 4
  %225 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %226 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @sqlite3_msize(i32 %228)
  %230 = load i32, i32* %19, align 4
  %231 = add nsw i32 %230, %229
  store i32 %231, i32* %19, align 4
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @sqlite3_msize(i32 %235)
  %237 = load i32, i32* %19, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %19, align 4
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @sqlite3_msize(i32 %242)
  %244 = load i32, i32* %19, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %19, align 4
  %246 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %247 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %246, i32 0, i32 1
  %248 = call i32* @sqliteHashFirst(%struct.TYPE_29__* %247)
  store i32* %248, i32** %21, align 8
  br label %249

249:                                              ; preds = %258, %193
  %250 = load i32*, i32** %21, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %261

252:                                              ; preds = %249
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %254 = load i32*, i32** %21, align 8
  %255 = call i64 @sqliteHashData(i32* %254)
  %256 = inttoptr i64 %255 to i32*
  %257 = call i32 @sqlite3DeleteTrigger(%struct.TYPE_26__* %253, i32* %256)
  br label %258

258:                                              ; preds = %252
  %259 = load i32*, i32** %21, align 8
  %260 = call i32* @sqliteHashNext(i32* %259)
  store i32* %260, i32** %21, align 8
  br label %249

261:                                              ; preds = %249
  %262 = load %struct.TYPE_27__*, %struct.TYPE_27__** %20, align 8
  %263 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %262, i32 0, i32 0
  %264 = call i32* @sqliteHashFirst(%struct.TYPE_29__* %263)
  store i32* %264, i32** %21, align 8
  br label %265

265:                                              ; preds = %274, %261
  %266 = load i32*, i32** %21, align 8
  %267 = icmp ne i32* %266, null
  br i1 %267, label %268, label %277

268:                                              ; preds = %265
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %270 = load i32*, i32** %21, align 8
  %271 = call i64 @sqliteHashData(i32* %270)
  %272 = inttoptr i64 %271 to i32*
  %273 = call i32 @sqlite3DeleteTable(%struct.TYPE_26__* %269, i32* %272)
  br label %274

274:                                              ; preds = %268
  %275 = load i32*, i32** %21, align 8
  %276 = call i32* @sqliteHashNext(i32* %275)
  store i32* %276, i32** %21, align 8
  br label %265

277:                                              ; preds = %265
  br label %278

278:                                              ; preds = %277, %179
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %18, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %18, align 4
  br label %173

282:                                              ; preds = %173
  %283 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %283, i32 0, i32 1
  store i32* null, i32** %284, align 8
  %285 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %286 = call i32 @sqlite3BtreeLeaveAll(%struct.TYPE_26__* %285)
  %287 = load i32*, i32** %9, align 8
  store i32 0, i32* %287, align 4
  %288 = load i32, i32* %19, align 4
  %289 = load i32*, i32** %8, align 8
  store i32 %288, i32* %289, align 4
  br label %375

290:                                              ; preds = %5
  store i32 0, i32* %23, align 4
  %291 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %291, i32 0, i32 1
  store i32* %23, i32** %292, align 8
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %294 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %293, i32 0, i32 6
  %295 = load %struct.Vdbe*, %struct.Vdbe** %294, align 8
  store %struct.Vdbe* %295, %struct.Vdbe** %22, align 8
  br label %296

296:                                              ; preds = %306, %290
  %297 = load %struct.Vdbe*, %struct.Vdbe** %22, align 8
  %298 = icmp ne %struct.Vdbe* %297, null
  br i1 %298, label %299, label %310

299:                                              ; preds = %296
  %300 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %301 = load %struct.Vdbe*, %struct.Vdbe** %22, align 8
  %302 = call i32 @sqlite3VdbeClearObject(%struct.TYPE_26__* %300, %struct.Vdbe* %301)
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %304 = load %struct.Vdbe*, %struct.Vdbe** %22, align 8
  %305 = call i32 @sqlite3DbFree(%struct.TYPE_26__* %303, %struct.Vdbe* %304)
  br label %306

306:                                              ; preds = %299
  %307 = load %struct.Vdbe*, %struct.Vdbe** %22, align 8
  %308 = getelementptr inbounds %struct.Vdbe, %struct.Vdbe* %307, i32 0, i32 0
  %309 = load %struct.Vdbe*, %struct.Vdbe** %308, align 8
  store %struct.Vdbe* %309, %struct.Vdbe** %22, align 8
  br label %296

310:                                              ; preds = %296
  %311 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %311, i32 0, i32 1
  store i32* null, i32** %312, align 8
  %313 = load i32*, i32** %9, align 8
  store i32 0, i32* %313, align 4
  %314 = load i32, i32* %23, align 4
  %315 = load i32*, i32** %8, align 8
  store i32 %314, i32* %315, align 4
  br label %375

316:                                              ; preds = %5
  store i32 136, i32* %7, align 4
  br label %317

317:                                              ; preds = %5, %5, %5, %316
  store i32 0, i32* %25, align 4
  %318 = call i32 @assert(i32 0)
  %319 = call i32 @assert(i32 0)
  store i32 0, i32* %24, align 4
  br label %320

320:                                              ; preds = %351, %317
  %321 = load i32, i32* %24, align 4
  %322 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = icmp slt i32 %321, %324
  br i1 %325, label %326, label %354

326:                                              ; preds = %320
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 5
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %328, align 8
  %330 = load i32, i32* %24, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %332, i32 0, i32 0
  %334 = load i32*, i32** %333, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %350

336:                                              ; preds = %326
  %337 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %337, i32 0, i32 5
  %339 = load %struct.TYPE_25__*, %struct.TYPE_25__** %338, align 8
  %340 = load i32, i32* %24, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  %345 = call i32* @sqlite3BtreePager(i32* %344)
  store i32* %345, i32** %26, align 8
  %346 = load i32*, i32** %26, align 8
  %347 = load i32, i32* %7, align 4
  %348 = load i32, i32* %10, align 4
  %349 = call i32 @sqlite3PagerCacheStat(i32* %346, i32 %347, i32 %348, i32* %25)
  br label %350

350:                                              ; preds = %336, %326
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %24, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %24, align 4
  br label %320

354:                                              ; preds = %320
  %355 = load i32*, i32** %9, align 8
  store i32 0, i32* %355, align 4
  %356 = load i32, i32* %25, align 4
  %357 = load i32*, i32** %8, align 8
  store i32 %356, i32* %357, align 4
  br label %375

358:                                              ; preds = %5
  %359 = load i32*, i32** %9, align 8
  store i32 0, i32* %359, align 4
  %360 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %360, i32 0, i32 4
  %362 = load i32, i32* %361, align 8
  %363 = icmp sgt i32 %362, 0
  br i1 %363, label %369, label %364

364:                                              ; preds = %358
  %365 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %365, i32 0, i32 3
  %367 = load i32, i32* %366, align 4
  %368 = icmp sgt i32 %367, 0
  br label %369

369:                                              ; preds = %364, %358
  %370 = phi i1 [ true, %358 ], [ %368, %364 ]
  %371 = zext i1 %370 to i32
  %372 = load i32*, i32** %8, align 8
  store i32 %371, i32* %372, align 4
  br label %375

373:                                              ; preds = %5
  %374 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %374, i32* %11, align 4
  br label %375

375:                                              ; preds = %373, %369, %354, %310, %282, %162, %121, %75
  %376 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %376, i32 0, i32 2
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @sqlite3_mutex_leave(i32 %378)
  %380 = load i32, i32* %11, align 4
  ret i32 %380
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3LookasideUsed(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeEnterAll(%struct.TYPE_26__*) #1

declare dso_local i32* @sqlite3BtreePager(i32*) #1

declare dso_local i32 @sqlite3PagerMemUsed(i32*) #1

declare dso_local i32 @sqlite3BtreeConnectionCount(i32*) #1

declare dso_local i32 @sqlite3BtreeLeaveAll(%struct.TYPE_26__*) #1

declare dso_local i32 @ALWAYS(i32) #1

declare dso_local i32 @sqlite3_msize(i32) #1

declare dso_local i32* @sqliteHashFirst(%struct.TYPE_29__*) #1

declare dso_local i32 @sqlite3DeleteTrigger(%struct.TYPE_26__*, i32*) #1

declare dso_local i64 @sqliteHashData(i32*) #1

declare dso_local i32* @sqliteHashNext(i32*) #1

declare dso_local i32 @sqlite3DeleteTable(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @sqlite3VdbeClearObject(%struct.TYPE_26__*, %struct.Vdbe*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_26__*, %struct.Vdbe*) #1

declare dso_local i32 @sqlite3PagerCacheStat(i32*, i32, i32, i32*) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
