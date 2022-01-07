; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_SPI_execute_plan.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/tcl/extr_pltcl.c_pltcl_SPI_execute_plan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32*, i32* }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@pltcl_SPI_execute_plan.options = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"-array\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-count\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"-nulls\00", align 1
@TCL_EXACT = common dso_local global i32 0, align 4
@TCL_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"missing argument to -array, -count or -nulls\00", align 1
@TCL_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"missing argument to -count or -array\00", align 1
@pltcl_current_call_state = common dso_local global %struct.TYPE_8__* null, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"invalid queryid '\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"length of nulls string doesn't match number of arguments\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c"argument list length doesn't match number of arguments for query\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"?-count n? ?-array name? ?-nulls string? query ?args? ?loop body?\00", align 1
@UTF_BEGIN = common dso_local global i32 0, align 4
@UTF_END = common dso_local global i32 0, align 4
@SPI_tuptable = common dso_local global i32 0, align 4
@SPI_processed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32**)* @pltcl_SPI_execute_plan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pltcl_SPI_execute_plan(i32 %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32**, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i32* null, i32** %19, align 8
  store i32 0, i32* %20, align 4
  store i32** null, i32*** %22, align 8
  %27 = load i32, i32* @CurrentMemoryContext, align 4
  store i32 %27, i32* %24, align 4
  %28 = load i32, i32* @CurrentResourceOwner, align 4
  store i32 %28, i32* %25, align 4
  store i32 1, i32* %12, align 4
  br label %29

29:                                               ; preds = %86, %4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %29
  %34 = load i32**, i32*** %9, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @TCL_EXACT, align 4
  %40 = call i64 @Tcl_GetIndexFromObj(i32* null, i32* %38, i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @pltcl_SPI_execute_plan.options, i64 0, i64 0), i32* null, i32 %39, i32* %14)
  %41 = load i64, i64* @TCL_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %87

44:                                               ; preds = %33
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %52 = call i32 @Tcl_SetObjResult(i32* %50, i32 %51)
  %53 = load i32, i32* @TCL_ERROR, align 4
  store i32 %53, i32* %5, align 4
  br label %310

54:                                               ; preds = %44
  %55 = load i32, i32* %14, align 4
  switch i32 %55, label %86 [
    i32 0, label %56
    i32 1, label %64
    i32 2, label %78
  ]

56:                                               ; preds = %54
  %57 = load i32**, i32*** %9, align 8
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = call i8* @Tcl_GetString(i32* %62)
  store i8* %63, i8** %18, align 8
  br label %86

64:                                               ; preds = %54
  %65 = load i32*, i32** %7, align 8
  %66 = load i32**, i32*** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32*, i32** %66, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @Tcl_GetIntFromObj(i32* %65, i32* %71, i32* %20)
  %73 = load i64, i64* @TCL_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* @TCL_ERROR, align 4
  store i32 %76, i32* %5, align 4
  br label %310

77:                                               ; preds = %64
  br label %86

78:                                               ; preds = %54
  %79 = load i32**, i32*** %9, align 8
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32*, i32** %79, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = call i8* @Tcl_GetString(i32* %84)
  store i8* %85, i8** %17, align 8
  br label %86

86:                                               ; preds = %54, %78, %77, %56
  br label %29

87:                                               ; preds = %43, %29
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %94 = call i32 @Tcl_SetObjResult(i32* %92, i32 %93)
  %95 = load i32, i32* @TCL_ERROR, align 4
  store i32 %95, i32* %5, align 4
  br label %310

96:                                               ; preds = %87
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pltcl_current_call_state, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32* %102, i32** %26, align 8
  %103 = load i32*, i32** %26, align 8
  %104 = load i32**, i32*** %9, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = call i8* @Tcl_GetString(i32* %108)
  %110 = call i32* @Tcl_FindHashEntry(i32* %103, i8* %109)
  store i32* %110, i32** %15, align 8
  %111 = load i32*, i32** %15, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %96
  %114 = load i32*, i32** %7, align 8
  %115 = load i32**, i32*** %9, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = call i8* @Tcl_GetString(i32* %119)
  %121 = call i32 @Tcl_AppendResult(i32* %114, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %122 = load i32, i32* @TCL_ERROR, align 4
  store i32 %122, i32* %5, align 4
  br label %310

123:                                              ; preds = %96
  %124 = load i32*, i32** %15, align 8
  %125 = call i64 @Tcl_GetHashValue(i32* %124)
  %126 = inttoptr i64 %125 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %126, %struct.TYPE_7__** %16, align 8
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  %129 = load i8*, i8** %17, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %144

131:                                              ; preds = %123
  %132 = load i8*, i8** %17, align 8
  %133 = call i32 @strlen(i8* %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %133, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 -1)
  %141 = call i32 @Tcl_SetObjResult(i32* %139, i32 %140)
  %142 = load i32, i32* @TCL_ERROR, align 4
  store i32 %142, i32* %5, align 4
  br label %310

143:                                              ; preds = %131
  br label %144

144:                                              ; preds = %143, %123
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %183

149:                                              ; preds = %144
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %8, align 4
  %152 = icmp sge i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load i32*, i32** %7, align 8
  %155 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i32 -1)
  %156 = call i32 @Tcl_SetObjResult(i32* %154, i32 %155)
  %157 = load i32, i32* @TCL_ERROR, align 4
  store i32 %157, i32* %5, align 4
  br label %310

158:                                              ; preds = %149
  %159 = load i32*, i32** %7, align 8
  %160 = load i32**, i32*** %9, align 8
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32*, i32** %160, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = call i64 @Tcl_ListObjGetElements(i32* %159, i32* %165, i32* %21, i32*** %22)
  %167 = load i64, i64* @TCL_OK, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %158
  %170 = load i32, i32* @TCL_ERROR, align 4
  store i32 %170, i32* %5, align 4
  br label %310

171:                                              ; preds = %158
  %172 = load i32, i32* %21, align 4
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp ne i32 %172, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load i32*, i32** %7, align 8
  %179 = call i32 @Tcl_NewStringObj(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0), i32 -1)
  %180 = call i32 @Tcl_SetObjResult(i32* %178, i32 %179)
  %181 = load i32, i32* @TCL_ERROR, align 4
  store i32 %181, i32* %5, align 4
  br label %310

182:                                              ; preds = %171
  br label %184

183:                                              ; preds = %144
  store i32 0, i32* %21, align 4
  br label %184

184:                                              ; preds = %183, %182
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load i32**, i32*** %9, align 8
  %190 = load i32, i32* %12, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %12, align 4
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32*, i32** %189, i64 %192
  %194 = load i32*, i32** %193, align 8
  store i32* %194, i32** %19, align 8
  br label %195

195:                                              ; preds = %188, %184
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = load i32*, i32** %7, align 8
  %201 = load i32**, i32*** %9, align 8
  %202 = call i32 @Tcl_WrongNumArgs(i32* %200, i32 1, i32** %201, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.9, i64 0, i64 0))
  %203 = load i32, i32* @TCL_ERROR, align 4
  store i32 %203, i32* %5, align 4
  br label %310

204:                                              ; preds = %195
  %205 = load i32, i32* %24, align 4
  %206 = load i32, i32* %25, align 4
  %207 = call i32 @pltcl_subtrans_begin(i32 %205, i32 %206)
  %208 = call i32 (...) @PG_TRY()
  %209 = load i32, i32* %21, align 4
  %210 = sext i32 %209 to i64
  %211 = mul i64 %210, 4
  %212 = trunc i64 %211 to i32
  %213 = call i64 @palloc(i32 %212)
  %214 = inttoptr i64 %213 to i32*
  store i32* %214, i32** %23, align 8
  store i32 0, i32* %13, align 4
  br label %215

215:                                              ; preds = %278, %204
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* %21, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %281

219:                                              ; preds = %215
  %220 = load i8*, i8** %17, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %249

222:                                              ; preds = %219
  %223 = load i8*, i8** %17, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp eq i32 %228, 110
  br i1 %229, label %230, label %249

230:                                              ; preds = %222
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %13, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @InputFunctionCall(i32* %236, i32* null, i32 %243, i32 -1)
  %245 = load i32*, i32** %23, align 8
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  store i32 %244, i32* %248, align 4
  br label %277

249:                                              ; preds = %222, %219
  %250 = load i32, i32* @UTF_BEGIN, align 4
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 3
  %253 = load i32*, i32** %252, align 8
  %254 = load i32, i32* %13, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32**, i32*** %22, align 8
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32*, i32** %257, i64 %259
  %261 = load i32*, i32** %260, align 8
  %262 = call i8* @Tcl_GetString(i32* %261)
  %263 = call i32* @UTF_U2E(i8* %262)
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 2
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @InputFunctionCall(i32* %256, i32* %263, i32 %270, i32 -1)
  %272 = load i32*, i32** %23, align 8
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %271, i32* %275, align 4
  %276 = load i32, i32* @UTF_END, align 4
  br label %277

277:                                              ; preds = %249, %230
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %13, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %13, align 4
  br label %215

281:                                              ; preds = %215
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32*, i32** %23, align 8
  %286 = load i8*, i8** %17, align 8
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pltcl_current_call_state, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* %20, align 4
  %293 = call i32 @SPI_execute_plan(i32 %284, i32* %285, i8* %286, i32 %291, i32 %292)
  store i32 %293, i32* %11, align 4
  %294 = load i32*, i32** %7, align 8
  %295 = load i8*, i8** %18, align 8
  %296 = load i32*, i32** %19, align 8
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* @SPI_tuptable, align 4
  %299 = load i32, i32* @SPI_processed, align 4
  %300 = call i32 @pltcl_process_SPI_result(i32* %294, i8* %295, i32* %296, i32 %297, i32 %298, i32 %299)
  store i32 %300, i32* %10, align 4
  %301 = load i32, i32* %24, align 4
  %302 = load i32, i32* %25, align 4
  %303 = call i32 @pltcl_subtrans_commit(i32 %301, i32 %302)
  %304 = call i32 (...) @PG_CATCH()
  %305 = load i32*, i32** %7, align 8
  %306 = load i32, i32* %24, align 4
  %307 = load i32, i32* %25, align 4
  %308 = call i32 @pltcl_subtrans_abort(i32* %305, i32 %306, i32 %307)
  %309 = load i32, i32* @TCL_ERROR, align 4
  store i32 %309, i32* %5, align 4
  br label %310

310:                                              ; preds = %281, %199, %177, %169, %153, %138, %113, %91, %75, %49
  %311 = load i32, i32* %5, align 4
  ret i32 %311
}

declare dso_local i64 @Tcl_GetIndexFromObj(i32*, i32*, i8**, i32*, i32, i32*) #1

declare dso_local i32 @Tcl_SetObjResult(i32*, i32) #1

declare dso_local i32 @Tcl_NewStringObj(i8*, i32) #1

declare dso_local i8* @Tcl_GetString(i32*) #1

declare dso_local i64 @Tcl_GetIntFromObj(i32*, i32*, i32*) #1

declare dso_local i32* @Tcl_FindHashEntry(i32*, i8*) #1

declare dso_local i32 @Tcl_AppendResult(i32*, i8*, i8*, i8*, i32*) #1

declare dso_local i64 @Tcl_GetHashValue(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @Tcl_ListObjGetElements(i32*, i32*, i32*, i32***) #1

declare dso_local i32 @Tcl_WrongNumArgs(i32*, i32, i32**, i8*) #1

declare dso_local i32 @pltcl_subtrans_begin(i32, i32) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @InputFunctionCall(i32*, i32*, i32, i32) #1

declare dso_local i32* @UTF_U2E(i8*) #1

declare dso_local i32 @SPI_execute_plan(i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @pltcl_process_SPI_result(i32*, i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @pltcl_subtrans_commit(i32, i32) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @pltcl_subtrans_abort(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
