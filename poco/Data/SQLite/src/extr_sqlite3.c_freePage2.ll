; ModuleID = '/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_freePage2.c'
source_filename = "/home/carl/AnghaBench/poco/Data/SQLite/src/extr_sqlite3.c_freePage2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i32*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@CORRUPT_DB = common dso_local global i64 0, align 8
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@BTS_SECURE_DELETE = common dso_local global i32 0, align 4
@ISAUTOVACUUM = common dso_local global i64 0, align 8
@PTRMAP_FREEPAGE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"FREE-PAGE: %d leaf on trunk page %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"FREE-PAGE: %d new trunk page replacing %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)* @freePage2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freePage2(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %10, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sqlite3_mutex_held(i32 %20)
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* @CORRUPT_DB, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 1
  br label %28

28:                                               ; preds = %25, %3
  %29 = phi i1 [ true, %3 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br label %40

40:                                               ; preds = %34, %28
  %41 = phi i1 [ true, %28 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 2
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %40
  %53 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %53, i32* %4, align 4
  br label %292

54:                                               ; preds = %46
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = icmp ne %struct.TYPE_14__* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %11, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sqlite3PagerRef(i32 %61)
  br label %67

63:                                               ; preds = %54
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call %struct.TYPE_14__* @btreePageLookup(%struct.TYPE_15__* %64, i32 %65)
  store %struct.TYPE_14__* %66, %struct.TYPE_14__** %11, align 8
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @sqlite3PagerWrite(i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %280

75:                                               ; preds = %67
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 36
  %80 = call i8* @get4byte(i32* %79)
  %81 = ptrtoint i8* %80 to i64
  store i64 %81, i64* %13, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 36
  %86 = load i64, i64* %13, align 8
  %87 = add nsw i64 %86, 1
  %88 = trunc i64 %87 to i32
  %89 = call i32 @put4byte(i32* %85, i32 %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @BTS_SECURE_DELETE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %75
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %98 = icmp ne %struct.TYPE_14__* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @btreeGetPage(%struct.TYPE_15__* %100, i32 %101, %struct.TYPE_14__** %11, i32 0)
  store i32 %102, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %99, %96
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @sqlite3PagerWrite(i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104, %99
  br label %280

111:                                              ; preds = %104
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @memset(i32* %114, i32 0, i32 %119)
  br label %121

121:                                              ; preds = %111, %75
  %122 = load i64, i64* @ISAUTOVACUUM, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %121
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @PTRMAP_FREEPAGE, align 4
  %128 = call i32 @ptrmapPut(%struct.TYPE_15__* %125, i32 %126, i32 %127, i32 0, i32* %12)
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %280

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %121
  %134 = load i64, i64* %13, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %237

136:                                              ; preds = %133
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 32
  %141 = call i8* @get4byte(i32* %140)
  %142 = ptrtoint i8* %141 to i32
  store i32 %142, i32* %9, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @btreeGetPage(%struct.TYPE_15__* %143, i32 %144, %struct.TYPE_14__** %8, i32 0)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @SQLITE_OK, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  br label %280

150:                                              ; preds = %136
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 4
  %155 = call i8* @get4byte(i32* %154)
  %156 = ptrtoint i8* %155 to i64
  store i64 %156, i64* %14, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %159, 32
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load i64, i64* %14, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = sdiv i64 %167, 4
  %169 = sub nsw i64 %168, 2
  %170 = icmp sgt i64 %163, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %150
  %172 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %172, i32* %12, align 4
  br label %280

173:                                              ; preds = %150
  %174 = load i64, i64* %14, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = sdiv i64 %178, 4
  %180 = sub nsw i64 %179, 8
  %181 = icmp slt i64 %174, %180
  br i1 %181, label %182, label %236

182:                                              ; preds = %173
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @sqlite3PagerWrite(i32 %185)
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = load i32, i32* @SQLITE_OK, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %226

190:                                              ; preds = %182
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 4
  %195 = load i64, i64* %14, align 8
  %196 = add nsw i64 %195, 1
  %197 = trunc i64 %196 to i32
  %198 = call i32 @put4byte(i32* %194, i32 %197)
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* %14, align 8
  %203 = mul nsw i64 %202, 4
  %204 = add nsw i64 8, %203
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %7, align 4
  %207 = call i32 @put4byte(i32* %205, i32 %206)
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %209 = icmp ne %struct.TYPE_14__* %208, null
  br i1 %209, label %210, label %222

210:                                              ; preds = %190
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @BTS_SECURE_DELETE, align 4
  %215 = and i32 %213, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %210
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @sqlite3PagerDontWrite(i32 %220)
  br label %222

222:                                              ; preds = %217, %210, %190
  %223 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @btreeSetHasContent(%struct.TYPE_15__* %223, i32 %224)
  store i32 %225, i32* %12, align 4
  br label %226

226:                                              ; preds = %222, %182
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = inttoptr i64 %233 to i8*
  %235 = call i32 @TRACE(i8* %234)
  br label %280

236:                                              ; preds = %173
  br label %237

237:                                              ; preds = %236, %133
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %239 = icmp eq %struct.TYPE_14__* %238, null
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = load i32, i32* @SQLITE_OK, align 4
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @btreeGetPage(%struct.TYPE_15__* %242, i32 %243, %struct.TYPE_14__** %11, i32 0)
  store i32 %244, i32* %12, align 4
  %245 = icmp ne i32 %241, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %240
  br label %280

247:                                              ; preds = %240, %237
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @sqlite3PagerWrite(i32 %250)
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %12, align 4
  %253 = load i32, i32* @SQLITE_OK, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %247
  br label %280

256:                                              ; preds = %247
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = call i32 @put4byte(i32* %259, i32 %260)
  %262 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 2
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 4
  %266 = call i32 @put4byte(i32* %265, i32 0)
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 2
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 32
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @put4byte(i32* %270, i32 %271)
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* %9, align 4
  %277 = sext i32 %276 to i64
  %278 = inttoptr i64 %277 to i8*
  %279 = call i32 @TRACE(i8* %278)
  br label %280

280:                                              ; preds = %256, %255, %246, %226, %171, %149, %131, %110, %74
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %282 = icmp ne %struct.TYPE_14__* %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 1
  store i64 0, i64* %285, align 8
  br label %286

286:                                              ; preds = %283, %280
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %288 = call i32 @releasePage(%struct.TYPE_14__* %287)
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %290 = call i32 @releasePage(%struct.TYPE_14__* %289)
  %291 = load i32, i32* %12, align 4
  store i32 %291, i32* %4, align 4
  br label %292

292:                                              ; preds = %286, %52
  %293 = load i32, i32* %4, align 4
  ret i32 %293
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3PagerRef(i32) #1

declare dso_local %struct.TYPE_14__* @btreePageLookup(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3PagerWrite(i32) #1

declare dso_local i8* @get4byte(i32*) #1

declare dso_local i32 @put4byte(i32*, i32) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_15__*, i32, %struct.TYPE_14__**, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ptrmapPut(%struct.TYPE_15__*, i32, i32, i32, i32*) #1

declare dso_local i32 @sqlite3PagerDontWrite(i32) #1

declare dso_local i32 @btreeSetHasContent(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @releasePage(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
