; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execSRF.c_ExecMakeFunctionResultSet.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execSRF.c_ExecMakeFunctionResultSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_16__, i32, i32*, %struct.TYPE_21__*, i32*, %struct.TYPE_18__*, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_17__*, i32* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i64, i32*, i32*, i32, i32*, i32 }

@ExprMultipleResult = common dso_local global i64 0, align 8
@ExprEndResult = common dso_local global i64 0, align 8
@T_ReturnSetInfo = common dso_local global i32 0, align 4
@SFRM_ValuePerCall = common dso_local global i32 0, align 4
@SFRM_Materialize = common dso_local global i32 0, align 4
@ExprSingleResult = common dso_local global i64 0, align 8
@ShutdownSetExpr = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_E_R_I_E_SRF_PROTOCOL_VIOLATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"table-function protocol for materialize mode was not followed\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"unrecognized table-function returnMode: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ExecMakeFunctionResultSet(%struct.TYPE_19__* %0, i32* %1, i32 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_18__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  br label %23

23:                                               ; preds = %230, %5
  %24 = call i32 (...) @check_stack_depth()
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 6
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %77

29:                                               ; preds = %23
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 7
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  store %struct.TYPE_18__* %32, %struct.TYPE_18__** %19, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MemoryContextSwitchTo(i32 %35)
  store i32 %36, i32* %20, align 4
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 6
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 7
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = call i32 @tuplestore_gettupleslot(i32* %39, i32 1, i32 0, %struct.TYPE_18__* %42)
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %20, align 4
  %45 = call i32 @MemoryContextSwitchTo(i32 %44)
  %46 = load i32, i32* %21, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %29
  %49 = load i64, i64* @ExprMultipleResult, align 8
  %50 = load i64*, i64** %11, align 8
  store i64 %49, i64* %50, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 8
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32*, i32** %10, align 8
  store i32 0, i32* %56, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %58, align 8
  %60 = call i64 @ExecFetchSlotHeapTupleDatum(%struct.TYPE_18__* %59)
  store i64 %60, i64* %6, align 8
  br label %253

61:                                               ; preds = %48
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 7
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = call i64 @slot_getattr(%struct.TYPE_18__* %64, i32 1, i32* %65)
  store i64 %66, i64* %6, align 8
  br label %253

67:                                               ; preds = %29
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 6
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @tuplestore_end(i32* %70)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 6
  store i32* null, i32** %73, align 8
  %74 = load i64, i64* @ExprEndResult, align 8
  %75 = load i64*, i64** %11, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i32*, i32** %10, align 8
  store i32 1, i32* %76, align 4
  store i64 0, i64* %6, align 8
  br label %253

77:                                               ; preds = %23
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 5
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  store %struct.TYPE_21__* %80, %struct.TYPE_21__** %14, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %12, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %77
  %89 = load i32, i32* %9, align 4
  %90 = call i32 @MemoryContextSwitchTo(i32 %89)
  store i32 %90, i32* %22, align 4
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @ExecEvalFuncArgs(%struct.TYPE_21__* %91, i32* %92, i32* %93)
  %95 = load i32, i32* %22, align 4
  %96 = call i32 @MemoryContextSwitchTo(i32 %95)
  br label %100

97:                                               ; preds = %77
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %88
  %101 = bitcast %struct.TYPE_20__* %16 to i32*
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 3
  store i32* %101, i32** %103, align 8
  %104 = load i32, i32* @T_ReturnSetInfo, align 4
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 7
  store i32 %104, i32* %105, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 6
  store i32* %106, i32** %107, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 5
  store i32 %110, i32* %111, align 8
  %112 = load i32, i32* @SFRM_ValuePerCall, align 4
  %113 = load i32, i32* @SFRM_Materialize, align 4
  %114 = or i32 %112, %113
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  store i32 %114, i32* %115, align 8
  %116 = load i32, i32* @SFRM_ValuePerCall, align 4
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 4
  store i32* null, i32** %118, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 3
  store i32* null, i32** %119, align 8
  store i32 1, i32* %17, align 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %148

125:                                              ; preds = %100
  store i32 0, i32* %18, align 4
  br label %126

126:                                              ; preds = %144, %125
  %127 = load i32, i32* %18, align 4
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %126
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  store i32 0, i32* %17, align 4
  br label %147

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %18, align 4
  br label %126

147:                                              ; preds = %142, %126
  br label %148

148:                                              ; preds = %147, %100
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %173

151:                                              ; preds = %148
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %153 = call i32 @pgstat_init_function_usage(%struct.TYPE_21__* %152, i32* %15)
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 1
  store i32 0, i32* %155, align 4
  %156 = load i64, i64* @ExprSingleResult, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  store i64 %156, i64* %157, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %159 = call i64 @FunctionCallInvoke(%struct.TYPE_21__* %158)
  store i64 %159, i64* %13, align 8
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %10, align 8
  store i32 %162, i32* %163, align 4
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64*, i64** %11, align 8
  store i64 %165, i64* %166, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @ExprMultipleResult, align 8
  %170 = icmp ne i64 %168, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @pgstat_end_function_usage(i32* %15, i32 %171)
  br label %177

173:                                              ; preds = %148
  store i64 0, i64* %13, align 8
  %174 = load i32*, i32** %10, align 8
  store i32 1, i32* %174, align 4
  %175 = load i64, i64* @ExprEndResult, align 8
  %176 = load i64*, i64** %11, align 8
  store i64 %175, i64* %176, align 8
  br label %177

177:                                              ; preds = %173, %151
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @SFRM_ValuePerCall, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %210

182:                                              ; preds = %177
  %183 = load i64*, i64** %11, align 8
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @ExprEndResult, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %209

187:                                              ; preds = %182
  %188 = load i64*, i64** %11, align 8
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @ExprMultipleResult, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %208

192:                                              ; preds = %187
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  store i32 1, i32* %194, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %207, label %199

199:                                              ; preds = %192
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* @ShutdownSetExpr, align 4
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %203 = call i32 @PointerGetDatum(%struct.TYPE_19__* %202)
  %204 = call i32 @RegisterExprContextCallback(i32* %200, i32 %201, i32 %203)
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 1
  store i32 1, i32* %206, align 4
  br label %207

207:                                              ; preds = %199, %192
  br label %208

208:                                              ; preds = %207, %187
  br label %209

209:                                              ; preds = %208, %182
  br label %251

210:                                              ; preds = %177
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @SFRM_Materialize, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %242

215:                                              ; preds = %210
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @ExprSingleResult, align 8
  %219 = icmp ne i64 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load i32, i32* @ERROR, align 4
  %222 = load i32, i32* @ERRCODE_E_R_I_E_SRF_PROTOCOL_VIOLATED, align 4
  %223 = call i32 @errcode(i32 %222)
  %224 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %225 = call i32 @ereport(i32 %221, i32 %224)
  br label %226

226:                                              ; preds = %220, %215
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %238

230:                                              ; preds = %226
  %231 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %232 = load i32*, i32** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 4
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 3
  %236 = load i32*, i32** %235, align 8
  %237 = call i32 @ExecPrepareTuplestoreResult(%struct.TYPE_19__* %231, i32* %232, i32* %234, i32* %236)
  br label %23

238:                                              ; preds = %226
  %239 = load i64, i64* @ExprEndResult, align 8
  %240 = load i64*, i64** %11, align 8
  store i64 %239, i64* %240, align 8
  %241 = load i32*, i32** %10, align 8
  store i32 1, i32* %241, align 4
  store i64 0, i64* %13, align 8
  br label %250

242:                                              ; preds = %210
  %243 = load i32, i32* @ERROR, align 4
  %244 = load i32, i32* @ERRCODE_E_R_I_E_SRF_PROTOCOL_VIOLATED, align 4
  %245 = call i32 @errcode(i32 %244)
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 (i8*, ...) @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %247)
  %249 = call i32 @ereport(i32 %243, i32 %248)
  br label %250

250:                                              ; preds = %242, %238
  br label %251

251:                                              ; preds = %250, %209
  %252 = load i64, i64* %13, align 8
  store i64 %252, i64* %6, align 8
  br label %253

253:                                              ; preds = %251, %67, %61, %55
  %254 = load i64, i64* %6, align 8
  ret i64 %254
}

declare dso_local i32 @check_stack_depth(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @tuplestore_gettupleslot(i32*, i32, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @ExecFetchSlotHeapTupleDatum(%struct.TYPE_18__*) #1

declare dso_local i64 @slot_getattr(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @tuplestore_end(i32*) #1

declare dso_local i32 @ExecEvalFuncArgs(%struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @pgstat_init_function_usage(%struct.TYPE_21__*, i32*) #1

declare dso_local i64 @FunctionCallInvoke(%struct.TYPE_21__*) #1

declare dso_local i32 @pgstat_end_function_usage(i32*, i32) #1

declare dso_local i32 @RegisterExprContextCallback(i32*, i32, i32) #1

declare dso_local i32 @PointerGetDatum(%struct.TYPE_19__*) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, ...) #1

declare dso_local i32 @ExecPrepareTuplestoreResult(%struct.TYPE_19__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
