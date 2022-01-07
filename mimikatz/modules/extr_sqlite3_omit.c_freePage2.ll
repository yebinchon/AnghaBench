; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_freePage2.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_freePage2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__* }
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %10, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
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
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %47, i32* %4, align 4
  br label %280

48:                                               ; preds = %40
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = icmp ne %struct.TYPE_14__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %11, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @sqlite3PagerRef(i32 %55)
  br label %61

57:                                               ; preds = %48
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call %struct.TYPE_14__* @btreePageLookup(%struct.TYPE_15__* %58, i32 %59)
  store %struct.TYPE_14__* %60, %struct.TYPE_14__** %11, align 8
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sqlite3PagerWrite(i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %268

69:                                               ; preds = %61
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 36
  %74 = call i32 @get4byte(i32* %73)
  store i32 %74, i32* %13, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 36
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @put4byte(i32* %78, i32 %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @BTS_SECURE_DELETE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %113

88:                                               ; preds = %69
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %90 = icmp ne %struct.TYPE_14__* %89, null
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @btreeGetPage(%struct.TYPE_15__* %92, i32 %93, %struct.TYPE_14__** %11, i32 0)
  store i32 %94, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91, %88
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @sqlite3PagerWrite(i32 %99)
  store i32 %100, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96, %91
  br label %268

103:                                              ; preds = %96
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 4
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memset(i32* %106, i32 0, i32 %111)
  br label %113

113:                                              ; preds = %103, %69
  %114 = load i64, i64* @ISAUTOVACUUM, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @PTRMAP_FREEPAGE, align 4
  %120 = call i32 @ptrmapPut(%struct.TYPE_15__* %117, i32 %118, i32 %119, i32 0, i32* %12)
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %268

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %113
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %225

128:                                              ; preds = %125
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 32
  %133 = call i32 @get4byte(i32* %132)
  store i32 %133, i32* %9, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @btreeGetPage(%struct.TYPE_15__* %134, i32 %135, %struct.TYPE_14__** %8, i32 0)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = load i32, i32* @SQLITE_OK, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  br label %268

141:                                              ; preds = %128
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  %146 = call i32 @get4byte(i32* %145)
  store i32 %146, i32* %14, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 32
  %151 = zext i1 %150 to i32
  %152 = call i32 @assert(i32 %151)
  %153 = load i32, i32* %14, align 4
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sdiv i32 %156, 4
  %158 = sub nsw i32 %157, 2
  %159 = icmp sgt i32 %153, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %141
  %161 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %161, i32* %12, align 4
  br label %268

162:                                              ; preds = %141
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = sdiv i32 %166, 4
  %168 = sub nsw i32 %167, 8
  %169 = icmp slt i32 %163, %168
  br i1 %169, label %170, label %224

170:                                              ; preds = %162
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @sqlite3PagerWrite(i32 %173)
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* @SQLITE_OK, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %214

178:                                              ; preds = %170
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 4
  %183 = load i32, i32* %14, align 4
  %184 = add nsw i32 %183, 1
  %185 = call i32 @put4byte(i32* %182, i32 %184)
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = mul nsw i32 %189, 4
  %191 = add nsw i32 8, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @put4byte(i32* %193, i32 %194)
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %197 = icmp ne %struct.TYPE_14__* %196, null
  br i1 %197, label %198, label %210

198:                                              ; preds = %178
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @BTS_SECURE_DELETE, align 4
  %203 = and i32 %201, %202
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @sqlite3PagerDontWrite(i32 %208)
  br label %210

210:                                              ; preds = %205, %198, %178
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @btreeSetHasContent(%struct.TYPE_15__* %211, i32 %212)
  store i32 %213, i32* %12, align 4
  br label %214

214:                                              ; preds = %210, %170
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sext i32 %220 to i64
  %222 = inttoptr i64 %221 to i8*
  %223 = call i32 @TRACE(i8* %222)
  br label %268

224:                                              ; preds = %162
  br label %225

225:                                              ; preds = %224, %125
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %227 = icmp eq %struct.TYPE_14__* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = load i32, i32* @SQLITE_OK, align 4
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %231 = load i32, i32* %7, align 4
  %232 = call i32 @btreeGetPage(%struct.TYPE_15__* %230, i32 %231, %struct.TYPE_14__** %11, i32 0)
  store i32 %232, i32* %12, align 4
  %233 = icmp ne i32 %229, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  br label %268

235:                                              ; preds = %228, %225
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @sqlite3PagerWrite(i32 %238)
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* @SQLITE_OK, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  br label %268

244:                                              ; preds = %235
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %9, align 4
  %249 = call i32 @put4byte(i32* %247, i32 %248)
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 4
  %254 = call i32 @put4byte(i32* %253, i32 0)
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 32
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @put4byte(i32* %258, i32 %259)
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = inttoptr i64 %265 to i8*
  %267 = call i32 @TRACE(i8* %266)
  br label %268

268:                                              ; preds = %244, %243, %234, %214, %160, %140, %123, %102, %68
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %270 = icmp ne %struct.TYPE_14__* %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  store i64 0, i64* %273, align 8
  br label %274

274:                                              ; preds = %271, %268
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %276 = call i32 @releasePage(%struct.TYPE_14__* %275)
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %278 = call i32 @releasePage(%struct.TYPE_14__* %277)
  %279 = load i32, i32* %12, align 4
  store i32 %279, i32* %4, align 4
  br label %280

280:                                              ; preds = %274, %46
  %281 = load i32, i32* %4, align 4
  ret i32 %281
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3PagerRef(i32) #1

declare dso_local %struct.TYPE_14__* @btreePageLookup(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3PagerWrite(i32) #1

declare dso_local i32 @get4byte(i32*) #1

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
