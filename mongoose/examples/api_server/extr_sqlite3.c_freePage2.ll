; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_freePage2.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_freePage2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i32*, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@BTS_SECURE_DELETE = common dso_local global i32 0, align 4
@ISAUTOVACUUM = common dso_local global i64 0, align 8
@PTRMAP_FREEPAGE = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"FREE-PAGE: %d leaf on trunk page %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"FREE-PAGE: %d new trunk page replacing %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*, i32)* @freePage2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freePage2(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %9, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @sqlite3_mutex_held(i32 %19)
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 1
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %28, %3
  %35 = phi i1 [ true, %3 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %39 = icmp ne %struct.TYPE_14__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %10, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sqlite3PagerRef(i32 %44)
  br label %50

46:                                               ; preds = %34
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call %struct.TYPE_14__* @btreePageLookup(%struct.TYPE_15__* %47, i32 %48)
  store %struct.TYPE_14__* %49, %struct.TYPE_14__** %10, align 8
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @sqlite3PagerWrite(i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %257

58:                                               ; preds = %50
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 36
  %63 = call i32 @get4byte(i32* %62)
  store i32 %63, i32* %12, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 36
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @put4byte(i32* %67, i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @BTS_SECURE_DELETE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %102

77:                                               ; preds = %58
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %79 = icmp ne %struct.TYPE_14__* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @btreeGetPage(%struct.TYPE_15__* %81, i32 %82, %struct.TYPE_14__** %10, i32 0, i32 0)
  store i32 %83, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %80, %77
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @sqlite3PagerWrite(i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85, %80
  br label %257

92:                                               ; preds = %85
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @memset(i32* %95, i32 0, i32 %100)
  br label %102

102:                                              ; preds = %92, %58
  %103 = load i64, i64* @ISAUTOVACUUM, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @PTRMAP_FREEPAGE, align 4
  %109 = call i32 @ptrmapPut(%struct.TYPE_15__* %106, i32 %107, i32 %108, i32 0, i32* %11)
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %257

113:                                              ; preds = %105
  br label %114

114:                                              ; preds = %113, %102
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %214

117:                                              ; preds = %114
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 32
  %122 = call i32 @get4byte(i32* %121)
  store i32 %122, i32* %8, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @btreeGetPage(%struct.TYPE_15__* %123, i32 %124, %struct.TYPE_14__** %7, i32 0, i32 0)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @SQLITE_OK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  br label %257

130:                                              ; preds = %117
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  %135 = call i32 @get4byte(i32* %134)
  store i32 %135, i32* %13, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %138, 32
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sdiv i32 %145, 4
  %147 = sub nsw i32 %146, 2
  %148 = icmp sgt i32 %142, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %130
  %150 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %150, i32* %11, align 4
  br label %257

151:                                              ; preds = %130
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sdiv i32 %155, 4
  %157 = sub nsw i32 %156, 8
  %158 = icmp slt i32 %152, %157
  br i1 %158, label %159, label %213

159:                                              ; preds = %151
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @sqlite3PagerWrite(i32 %162)
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i32, i32* @SQLITE_OK, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %203

167:                                              ; preds = %159
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 4
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  %174 = call i32 @put4byte(i32* %171, i32 %173)
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = mul nsw i32 %178, 4
  %180 = add nsw i32 8, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %177, i64 %181
  %183 = load i32, i32* %6, align 4
  %184 = call i32 @put4byte(i32* %182, i32 %183)
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %186 = icmp ne %struct.TYPE_14__* %185, null
  br i1 %186, label %187, label %199

187:                                              ; preds = %167
  %188 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @BTS_SECURE_DELETE, align 4
  %192 = and i32 %190, %191
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @sqlite3PagerDontWrite(i32 %197)
  br label %199

199:                                              ; preds = %194, %187, %167
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @btreeSetHasContent(%struct.TYPE_15__* %200, i32 %201)
  store i32 %202, i32* %11, align 4
  br label %203

203:                                              ; preds = %199, %159
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sext i32 %209 to i64
  %211 = inttoptr i64 %210 to i8*
  %212 = call i32 @TRACE(i8* %211)
  br label %257

213:                                              ; preds = %151
  br label %214

214:                                              ; preds = %213, %114
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %216 = icmp eq %struct.TYPE_14__* %215, null
  br i1 %216, label %217, label %224

217:                                              ; preds = %214
  %218 = load i32, i32* @SQLITE_OK, align 4
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @btreeGetPage(%struct.TYPE_15__* %219, i32 %220, %struct.TYPE_14__** %10, i32 0, i32 0)
  store i32 %221, i32* %11, align 4
  %222 = icmp ne i32 %218, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %217
  br label %257

224:                                              ; preds = %217, %214
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @sqlite3PagerWrite(i32 %227)
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* @SQLITE_OK, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %224
  br label %257

233:                                              ; preds = %224
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @put4byte(i32* %236, i32 %237)
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 4
  %243 = call i32 @put4byte(i32* %242, i32 0)
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 32
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @put4byte(i32* %247, i32 %248)
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = inttoptr i64 %254 to i8*
  %256 = call i32 @TRACE(i8* %255)
  br label %257

257:                                              ; preds = %233, %232, %223, %203, %149, %129, %112, %91, %57
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %259 = icmp ne %struct.TYPE_14__* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  store i64 0, i64* %262, align 8
  br label %263

263:                                              ; preds = %260, %257
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %265 = call i32 @releasePage(%struct.TYPE_14__* %264)
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %267 = call i32 @releasePage(%struct.TYPE_14__* %266)
  %268 = load i32, i32* %11, align 4
  ret i32 %268
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3PagerRef(i32) #1

declare dso_local %struct.TYPE_14__* @btreePageLookup(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @sqlite3PagerWrite(i32) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @put4byte(i32*, i32) #1

declare dso_local i32 @btreeGetPage(%struct.TYPE_15__*, i32, %struct.TYPE_14__**, i32, i32) #1

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
