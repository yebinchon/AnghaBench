; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_get_docrep.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_get_docrep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_27__** }
%struct.TYPE_27__ = type { i64, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i64 }

@QI_VAL = common dso_local global i64 0, align 8
@compareDocR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_28__* (i32, %struct.TYPE_25__*, i32*)* @get_docrep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_28__* @get_docrep(i32 %0, %struct.TYPE_25__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca %struct.TYPE_28__*, align 8
  %21 = alloca %struct.TYPE_28__*, align 8
  %22 = alloca %struct.TYPE_28__, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %26 = call %struct.TYPE_27__* @GETQUERY(%struct.TYPE_20__* %25)
  store %struct.TYPE_27__* %26, %struct.TYPE_27__** %8, align 8
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 4
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 40, %34
  %36 = trunc i64 %35 to i32
  %37 = call i8* @palloc(i32 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %38, %struct.TYPE_28__** %18, align 8
  store i64 0, i64* %14, align 8
  br label %39

39:                                               ; preds = %175, %3
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %40, %46
  br i1 %47, label %48, label %178

48:                                               ; preds = %39
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @QI_VAL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %175

57:                                               ; preds = %48
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 1
  store %struct.TYPE_26__* %61, %struct.TYPE_26__** %19, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %67 = call %struct.TYPE_24__* @find_wordentry(i32 %62, %struct.TYPE_20__* %65, %struct.TYPE_26__* %66, i64* %15)
  store %struct.TYPE_24__* %67, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* %67, %struct.TYPE_24__** %10, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %69 = icmp ne %struct.TYPE_24__* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %57
  br label %175

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %171, %93, %71
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %75 = ptrtoint %struct.TYPE_24__* %73 to i64
  %76 = ptrtoint %struct.TYPE_24__* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 8
  %79 = load i64, i64* %15, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %174

81:                                               ; preds = %72
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %89 = call i64 @POSDATALEN(i32 %87, %struct.TYPE_24__* %88)
  store i64 %89, i64* %12, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %92 = call i64* @POSDATAPTR(i32 %90, %struct.TYPE_24__* %91)
  store i64* %92, i64** %11, align 8
  br label %96

93:                                               ; preds = %81
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 1
  store %struct.TYPE_24__* %95, %struct.TYPE_24__** %9, align 8
  br label %72

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %105, %96
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %12, align 8
  %101 = add i64 %99, %100
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp uge i64 %101, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %97
  %106 = load i32, i32* %16, align 4
  %107 = mul nsw i32 %106, 2
  store i32 %107, i32* %16, align 4
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %109 = load i32, i32* %16, align 4
  %110 = sext i32 %109 to i64
  %111 = mul i64 40, %110
  %112 = trunc i64 %111 to i32
  %113 = call i64 @repalloc(%struct.TYPE_28__* %108, i32 %112)
  %114 = inttoptr i64 %113 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %114, %struct.TYPE_28__** %18, align 8
  br label %97

115:                                              ; preds = %97
  store i64 0, i64* %13, align 8
  br label %116

116:                                              ; preds = %168, %115
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* %12, align 8
  %119 = icmp ult i64 %117, %118
  br i1 %119, label %120, label %171

120:                                              ; preds = %116
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i64*, i64** %11, align 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @WEP_GETWEIGHT(i64 %132)
  %134 = shl i32 1, %133
  %135 = and i32 %128, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %167

137:                                              ; preds = %125, %120
  %138 = load i64*, i64** %11, align 8
  %139 = load i64, i64* %13, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  store i64 %141, i64* %146, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %148 = ptrtoint %struct.TYPE_24__* %147 to i64
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  store i64 %148, i64* %155, align 8
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %157 = bitcast %struct.TYPE_26__* %156 to %struct.TYPE_27__*
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  store %struct.TYPE_27__* %157, %struct.TYPE_27__** %164, align 8
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %17, align 4
  br label %167

167:                                              ; preds = %137, %125
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %13, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %13, align 8
  br label %116

171:                                              ; preds = %116
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 1
  store %struct.TYPE_24__* %173, %struct.TYPE_24__** %9, align 8
  br label %72

174:                                              ; preds = %72
  br label %175

175:                                              ; preds = %174, %70, %56
  %176 = load i64, i64* %14, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %14, align 8
  br label %39

178:                                              ; preds = %39
  %179 = load i32, i32* %17, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %327

181:                                              ; preds = %178
  %182 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %183 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %182, i64 1
  store %struct.TYPE_28__* %183, %struct.TYPE_28__** %20, align 8
  %184 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  store %struct.TYPE_28__* %184, %struct.TYPE_28__** %21, align 8
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %186 = bitcast %struct.TYPE_28__* %185 to i8*
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* @compareDocR, align 4
  %189 = call i32 @qsort(i8* %186, i32 %187, i32 40, i32 %188)
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  store i64 %192, i64* %193, align 8
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 8, %199
  %201 = trunc i64 %200 to i32
  %202 = call i8* @palloc(i32 %201)
  %203 = bitcast i8* %202 to %struct.TYPE_27__**
  %204 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  store %struct.TYPE_27__** %203, %struct.TYPE_27__*** %206, align 8
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %215, i64 0
  store %struct.TYPE_27__* %211, %struct.TYPE_27__** %216, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  store i32 1, i32* %219, align 8
  br label %220

220:                                              ; preds = %309, %181
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %223 = ptrtoint %struct.TYPE_28__* %221 to i64
  %224 = ptrtoint %struct.TYPE_28__* %222 to i64
  %225 = sub i64 %223, %224
  %226 = sdiv exact i64 %225, 40
  %227 = load i32, i32* %17, align 4
  %228 = sext i32 %227 to i64
  %229 = icmp slt i64 %226, %228
  br i1 %229, label %230, label %312

230:                                              ; preds = %220
  %231 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i64 -1
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %233, %237
  br i1 %238, label %239, label %273

239:                                              ; preds = %230
  %240 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %241 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %246 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %245, i64 -1
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %244, %250
  br i1 %251, label %252, label %273

252:                                              ; preds = %239
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %254 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %261, i64 %266
  store %struct.TYPE_27__* %257, %struct.TYPE_27__** %267, align 8
  %268 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  br label %309

273:                                              ; preds = %239, %230
  %274 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %275 = bitcast %struct.TYPE_28__* %274 to i8*
  %276 = bitcast %struct.TYPE_28__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %275, i8* align 8 %276, i64 40, i1 false)
  %277 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %278 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %277, i32 1
  store %struct.TYPE_28__* %278, %struct.TYPE_28__** %21, align 8
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 0
  store i64 %281, i64* %282, align 8
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = mul i64 8, %288
  %290 = trunc i64 %289 to i32
  %291 = call i8* @palloc(i32 %290)
  %292 = bitcast i8* %291 to %struct.TYPE_27__**
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %294, i32 0, i32 1
  store %struct.TYPE_27__** %292, %struct.TYPE_27__*** %295, align 8
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %297 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_27__*, %struct.TYPE_27__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %304, i64 0
  store %struct.TYPE_27__* %300, %struct.TYPE_27__** %305, align 8
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %22, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 0
  store i32 1, i32* %308, align 8
  br label %309

309:                                              ; preds = %273, %252
  %310 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %311 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %310, i32 1
  store %struct.TYPE_28__* %311, %struct.TYPE_28__** %20, align 8
  br label %220

312:                                              ; preds = %220
  %313 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %314 = bitcast %struct.TYPE_28__* %313 to i8*
  %315 = bitcast %struct.TYPE_28__* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %314, i8* align 8 %315, i64 40, i1 false)
  %316 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %317 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %316, i32 1
  store %struct.TYPE_28__* %317, %struct.TYPE_28__** %21, align 8
  %318 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  %319 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %320 = ptrtoint %struct.TYPE_28__* %318 to i64
  %321 = ptrtoint %struct.TYPE_28__* %319 to i64
  %322 = sub i64 %320, %321
  %323 = sdiv exact i64 %322, 40
  %324 = trunc i64 %323 to i32
  %325 = load i32*, i32** %7, align 8
  store i32 %324, i32* %325, align 4
  %326 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  store %struct.TYPE_28__* %326, %struct.TYPE_28__** %4, align 8
  br label %330

327:                                              ; preds = %178
  %328 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %329 = call i32 @pfree(%struct.TYPE_28__* %328)
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %4, align 8
  br label %330

330:                                              ; preds = %327, %312
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  ret %struct.TYPE_28__* %331
}

declare dso_local %struct.TYPE_27__* @GETQUERY(%struct.TYPE_20__*) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local %struct.TYPE_24__* @find_wordentry(i32, %struct.TYPE_20__*, %struct.TYPE_26__*, i64*) #1

declare dso_local i64 @POSDATALEN(i32, %struct.TYPE_24__*) #1

declare dso_local i64* @POSDATAPTR(i32, %struct.TYPE_24__*) #1

declare dso_local i64 @repalloc(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @WEP_GETWEIGHT(i64) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pfree(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
