; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeIndexscan.c_IndexNextWithReorder.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeIndexscan.c_IndexNextWithReorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_25__*, i32, %struct.TYPE_22__ }
%struct.TYPE_25__ = type { i32*, i32*, i64, i64 }
%struct.TYPE_22__ = type { i32, i32*, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_27__*, i64, %struct.TYPE_28__* }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32*, i32* }
%struct.TYPE_26__ = type { i32 }

@ForwardScanDirection = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"index returned tuples in wrong order\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_24__*)* @IndexNextWithReorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @IndexNextWithReorder(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %8, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 13
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  store %struct.TYPE_28__* %18, %struct.TYPE_28__** %4, align 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 13
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_26__*
  %25 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ScanDirectionIsBackward(i32 %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ScanDirectionIsForward(i32 %34)
  %36 = call i32 @Assert(i32 %35)
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 11
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %38, align 8
  store %struct.TYPE_25__* %39, %struct.TYPE_25__** %6, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 13
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %43, align 8
  store %struct.TYPE_27__* %44, %struct.TYPE_27__** %5, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 13
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %7, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %50 = icmp eq %struct.TYPE_25__* %49, null
  br i1 %50, label %51, label %97

51:                                               ; preds = %1
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 13
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_25__* @index_beginscan(i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  store %struct.TYPE_25__* %68, %struct.TYPE_25__** %6, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 11
  store %struct.TYPE_25__* %69, %struct.TYPE_25__** %71, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %51
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 10
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %76, %51
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @index_rescan(%struct.TYPE_25__* %82, i32 %85, i32 %88, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %81, %76
  br label %97

97:                                               ; preds = %96, %1
  br label %98

98:                                               ; preds = %249, %155, %97
  %99 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pairingheap_is_empty(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %139, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @pairingheap_first(i32 %108)
  %110 = inttoptr i64 %109 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %110, %struct.TYPE_23__** %8, align 8
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %131, label %115

115:                                              ; preds = %105
  %116 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %129 = call i32 @cmp_orderbyvals(i32* %118, i32* %121, i32* %124, i32* %127, %struct.TYPE_24__* %128)
  %130 = icmp sle i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %115, %105
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %133 = call i32 @reorderqueue_pop(%struct.TYPE_24__* %132)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32*, i32** %7, align 8
  %136 = call i32 @ExecForceStoreHeapTuple(i32 %134, i32* %135, i32 1)
  %137 = load i32*, i32** %7, align 8
  store i32* %137, i32** %2, align 8
  br label %257

138:                                              ; preds = %115
  br label %148

139:                                              ; preds = %98
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32*, i32** %7, align 8
  %146 = call i32* @ExecClearTuple(i32* %145)
  store i32* %146, i32** %2, align 8
  br label %257

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %138
  br label %149

149:                                              ; preds = %173, %148
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %151 = load i32, i32* @ForwardScanDirection, align 4
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 @index_getnext_slot(%struct.TYPE_25__* %150, i32 %151, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 1
  store i32 1, i32* %157, align 8
  br label %98

158:                                              ; preds = %149
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %158
  %164 = load i32*, i32** %7, align 8
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  store i32* %164, i32** %166, align 8
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %171 = call i32 @ExecQualAndReset(i32 %169, %struct.TYPE_27__* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %163
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %175 = call i32 @InstrCountFiltered2(%struct.TYPE_24__* %174, i32 1)
  %176 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %149

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %177, %158
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %224

183:                                              ; preds = %178
  %184 = load i32*, i32** %7, align 8
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %185, i32 0, i32 0
  store i32* %184, i32** %186, align 8
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %188 = call i32 @ResetExprContext(%struct.TYPE_27__* %187)
  %189 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %191 = call i32 @EvalOrderByExpressions(%struct.TYPE_24__* %189, %struct.TYPE_27__* %190)
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %205 = call i32 @cmp_orderbyvals(i32* %194, i32* %197, i32* %200, i32* %203, %struct.TYPE_24__* %204)
  store i32 %205, i32* %12, align 4
  %206 = load i32, i32* %12, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %183
  %209 = load i32, i32* @ERROR, align 4
  %210 = call i32 @elog(i32 %209, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %217

211:                                              ; preds = %183
  %212 = load i32, i32* %12, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store i32 1, i32* %9, align 4
  br label %216

215:                                              ; preds = %211
  store i32 0, i32* %9, align 4
  br label %216

216:                                              ; preds = %215, %214
  br label %217

217:                                              ; preds = %216, %208
  %218 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %218, i32 0, i32 3
  %220 = load i32*, i32** %219, align 8
  store i32* %220, i32** %10, align 8
  %221 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %222 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  store i32* %223, i32** %11, align 8
  br label %231

224:                                              ; preds = %178
  store i32 1, i32* %9, align 4
  %225 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  store i32* %227, i32** %10, align 8
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  store i32* %230, i32** %11, align 8
  br label %231

231:                                              ; preds = %224, %217
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %249

234:                                              ; preds = %231
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %236 = icmp ne %struct.TYPE_23__* %235, null
  br i1 %236, label %237, label %255

237:                                              ; preds = %234
  %238 = load i32*, i32** %10, align 8
  %239 = load i32*, i32** %11, align 8
  %240 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %247 = call i32 @cmp_orderbyvals(i32* %238, i32* %239, i32* %242, i32* %245, %struct.TYPE_24__* %246)
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %237, %231
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %251 = load i32*, i32** %7, align 8
  %252 = load i32*, i32** %10, align 8
  %253 = load i32*, i32** %11, align 8
  %254 = call i32 @reorderqueue_push(%struct.TYPE_24__* %250, i32* %251, i32* %252, i32* %253)
  br label %98

255:                                              ; preds = %237, %234
  %256 = load i32*, i32** %7, align 8
  store i32* %256, i32** %2, align 8
  br label %257

257:                                              ; preds = %255, %144, %131
  %258 = load i32*, i32** %2, align 8
  ret i32* %258
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ScanDirectionIsBackward(i32) #1

declare dso_local i32 @ScanDirectionIsForward(i32) #1

declare dso_local %struct.TYPE_25__* @index_beginscan(i32, i32, i32, i32, i32) #1

declare dso_local i32 @index_rescan(%struct.TYPE_25__*, i32, i32, i32, i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @pairingheap_is_empty(i32) #1

declare dso_local i64 @pairingheap_first(i32) #1

declare dso_local i32 @cmp_orderbyvals(i32*, i32*, i32*, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @reorderqueue_pop(%struct.TYPE_24__*) #1

declare dso_local i32 @ExecForceStoreHeapTuple(i32, i32*, i32) #1

declare dso_local i32* @ExecClearTuple(i32*) #1

declare dso_local i32 @index_getnext_slot(%struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @ExecQualAndReset(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @InstrCountFiltered2(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ResetExprContext(%struct.TYPE_27__*) #1

declare dso_local i32 @EvalOrderByExpressions(%struct.TYPE_24__*, %struct.TYPE_27__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @reorderqueue_push(%struct.TYPE_24__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
