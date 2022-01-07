; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_preprocess_array_keys.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_preprocess_array_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i8* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_17__*, %struct.TYPE_14__*, i32* }
%struct.TYPE_17__ = type { i32, i32, i32* }

@SK_SEARCHARRAY = common dso_local global i32 0, align 4
@SK_ROW_HEADER = common dso_local global i32 0, align 4
@SK_SEARCHNULL = common dso_local global i32 0, align 4
@SK_SEARCHNOTNULL = common dso_local global i32 0, align 4
@SK_ISNULL = common dso_local global i32 0, align 4
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"BTree array context\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unrecognized StrategyNumber: %d\00", align 1
@INDOPTION_DESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bt_preprocess_array_keys(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %3, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %78, %1
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %81

36:                                               ; preds = %32
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i64 %41
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %7, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SK_SEARCHARRAY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %36
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @SK_ROW_HEADER, align 4
  %56 = load i32, i32* @SK_SEARCHNULL, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SK_SEARCHNOTNULL, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %54, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @Assert(i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SK_ISNULL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %49
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  store i32 -1, i32* %73, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %75, align 8
  br label %284

76:                                               ; preds = %49
  br label %77

77:                                               ; preds = %76, %36
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %32

81:                                               ; preds = %32
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %88, align 8
  br label %284

89:                                               ; preds = %81
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @CurrentMemoryContext, align 4
  %96 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %97 = call i32* @AllocSetContextCreate(i32 %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 3
  store i32* %97, i32** %99, align 8
  br label %105

100:                                              ; preds = %89
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @MemoryContextReset(i32* %103)
  br label %105

105:                                              ; preds = %100, %94
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = call i32* @MemoryContextSwitchTo(i32* %108)
  store i32* %109, i32** %9, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = mul i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i64 @palloc(i32 %115)
  %117 = inttoptr i64 %116 to %struct.TYPE_14__*
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 2
  store %struct.TYPE_14__* %117, %struct.TYPE_14__** %119, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %121, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memcpy(%struct.TYPE_14__* %122, %struct.TYPE_14__* %125, i32 %131)
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 16
  %136 = trunc i64 %135 to i32
  %137 = call i64 @palloc0(i32 %136)
  %138 = inttoptr i64 %137 to %struct.TYPE_17__*
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  store %struct.TYPE_17__* %138, %struct.TYPE_17__** %140, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %275, %105
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %4, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %278

145:                                              ; preds = %141
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %147, align 8
  %149 = load i32, i32* %8, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i64 %150
  store %struct.TYPE_14__* %151, %struct.TYPE_14__** %7, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @SK_SEARCHARRAY, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %145
  br label %275

159:                                              ; preds = %145
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 3
  %162 = load i8*, i8** %161, align 8
  %163 = call i32* @DatumGetArrayTypeP(i8* %162)
  store i32* %163, i32** %10, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @ARR_ELEMTYPE(i32* %164)
  %166 = call i32 @get_typlenbyvalalign(i32 %165, i32* %11, i32* %12, i8* %13)
  %167 = load i32*, i32** %10, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = call i32 @ARR_ELEMTYPE(i32* %168)
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %12, align 4
  %172 = load i8, i8* %13, align 1
  %173 = call i32 @deconstruct_array(i32* %167, i32 %169, i32 %170, i32 %171, i8 signext %172, i32** %15, i32** %16, i32* %14)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %174

174:                                              ; preds = %197, %159
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %200

178:                                              ; preds = %174
  %179 = load i32*, i32** %16, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %196, label %185

185:                                              ; preds = %178
  %186 = load i32*, i32** %15, align 8
  %187 = load i32, i32* %18, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32*, i32** %15, align 8
  %192 = load i32, i32* %17, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %17, align 4
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  store i32 %190, i32* %195, align 4
  br label %196

196:                                              ; preds = %185, %178
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %18, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %18, align 4
  br label %174

200:                                              ; preds = %174
  %201 = load i32, i32* %17, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  store i32 -1, i32* %6, align 4
  br label %278

204:                                              ; preds = %200
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  switch i32 %207, label %225 [
    i32 128, label %208
    i32 129, label %208
    i32 132, label %216
    i32 131, label %217
    i32 130, label %217
  ]

208:                                              ; preds = %204, %204
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %211 = load i32*, i32** %15, align 8
  %212 = load i32, i32* %17, align 4
  %213 = call i8* @_bt_find_extreme_element(%struct.TYPE_15__* %209, %struct.TYPE_14__* %210, i32 130, i32* %211, i32 %212)
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 3
  store i8* %213, i8** %215, align 8
  br label %275

216:                                              ; preds = %204
  br label %231

217:                                              ; preds = %204, %204
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %219 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %220 = load i32*, i32** %15, align 8
  %221 = load i32, i32* %17, align 4
  %222 = call i8* @_bt_find_extreme_element(%struct.TYPE_15__* %218, %struct.TYPE_14__* %219, i32 128, i32* %220, i32 %221)
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 3
  store i8* %222, i8** %224, align 8
  br label %275

225:                                              ; preds = %204
  %226 = load i32, i32* @ERROR, align 4
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @elog(i32 %226, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %229)
  br label %231

231:                                              ; preds = %225, %216
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %234 = load i32*, i32** %5, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %234, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @INDOPTION_DESC, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  %245 = zext i1 %244 to i32
  %246 = load i32*, i32** %15, align 8
  %247 = load i32, i32* %17, align 4
  %248 = call i32 @_bt_sort_array_elements(%struct.TYPE_15__* %232, %struct.TYPE_14__* %233, i32 %245, i32* %246, i32 %247)
  store i32 %248, i32* %14, align 4
  %249 = load i32, i32* %8, align 4
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 1
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %251, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 0
  store i32 %249, i32* %256, align 8
  %257 = load i32, i32* %14, align 4
  %258 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %259, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 1
  store i32 %257, i32* %264, align 4
  %265 = load i32*, i32** %15, align 8
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %267, align 8
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 2
  store i32* %265, i32** %272, align 8
  %273 = load i32, i32* %6, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %6, align 4
  br label %275

275:                                              ; preds = %231, %217, %208, %158
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %8, align 4
  br label %141

278:                                              ; preds = %203, %141
  %279 = load i32, i32* %6, align 4
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 8
  %282 = load i32*, i32** %9, align 8
  %283 = call i32* @MemoryContextSwitchTo(i32* %282)
  br label %284

284:                                              ; preds = %278, %84, %71
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @MemoryContextReset(i32*) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32* @DatumGetArrayTypeP(i8*) #1

declare dso_local i32 @get_typlenbyvalalign(i32, i32*, i32*, i8*) #1

declare dso_local i32 @ARR_ELEMTYPE(i32*) #1

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i8 signext, i32**, i32**, i32*) #1

declare dso_local i8* @_bt_find_extreme_element(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32*, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @_bt_sort_array_elements(%struct.TYPE_15__*, %struct.TYPE_14__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
