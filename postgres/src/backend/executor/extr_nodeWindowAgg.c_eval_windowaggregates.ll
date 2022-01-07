; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_eval_windowaggregates.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_eval_windowaggregates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i64, i64, i32, i64, i64, i64, i32*, %struct.TYPE_24__*, %struct.TYPE_22__*, i32*, i32*, %struct.TYPE_25__*, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32, i8*, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i8**, i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"window frame head moved backward\00", align 1
@FRAMEOPTION_END_UNBOUNDED_FOLLOWING = common dso_local global i32 0, align 4
@FRAMEOPTION_END_CURRENT_ROW = common dso_local global i32 0, align 4
@FRAMEOPTION_EXCLUSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"could not re-fetch previously fetched frame row\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*)* @eval_windowaggregates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eval_windowaggregates(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %18 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %557

24:                                               ; preds = %1
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 13
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %28, align 8
  store %struct.TYPE_27__* %29, %struct.TYPE_27__** %10, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 12
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  store %struct.TYPE_25__* %32, %struct.TYPE_25__** %11, align 8
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 11
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %12, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 10
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %13, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %40 = call i32 @update_frameheadpos(%struct.TYPE_26__* %39)
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %24
  %49 = load i32, i32* @ERROR, align 4
  %50 = call i32 @elog(i32 %49, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %24
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %128

59:                                               ; preds = %51
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FRAMEOPTION_END_UNBOUNDED_FOLLOWING, align 4
  %64 = load i32, i32* @FRAMEOPTION_END_CURRENT_ROW, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %128

68:                                               ; preds = %59
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @FRAMEOPTION_EXCLUSION, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %128, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %78, %81
  br i1 %82, label %83, label %128

83:                                               ; preds = %75
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %128

91:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %124, %91
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %127

96:                                               ; preds = %92
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i64 %101
  store %struct.TYPE_24__* %102, %struct.TYPE_24__** %3, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %4, align 4
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load i8**, i8*** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8* %108, i8** %114, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  br label %124

124:                                              ; preds = %96
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %92

127:                                              ; preds = %92
  br label %557

128:                                              ; preds = %83, %75, %68, %59, %51
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %129

129:                                              ; preds = %182, %128
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %185

133:                                              ; preds = %129
  %134 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i64 %138
  store %struct.TYPE_24__* %139, %struct.TYPE_24__** %3, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %173, label %144

144:                                              ; preds = %133
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %147, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %144
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @OidIsValid(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %152, %144
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @FRAMEOPTION_EXCLUSION, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %158
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp sle i64 %168, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %165, %158, %152, %133
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 3
  store i32 1, i32* %175, align 4
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %181

178:                                              ; preds = %165
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 3
  store i32 0, i32* %180, align 4
  br label %181

181:                                              ; preds = %178, %173
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %129

185:                                              ; preds = %129
  br label %186

186:                                              ; preds = %257, %185
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %5, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %186
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp slt i64 %193, %196
  br label %198

198:                                              ; preds = %190, %186
  %199 = phi i1 [ false, %186 ], [ %197, %190 ]
  br i1 %199, label %200, label %268

200:                                              ; preds = %198
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = load i32*, i32** %13, align 8
  %206 = call i32 @window_gettupleslot(%struct.TYPE_25__* %201, i64 %204, i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %200
  %209 = load i32, i32* @ERROR, align 4
  %210 = call i32 @elog(i32 %209, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %211

211:                                              ; preds = %208, %200
  %212 = load i32*, i32** %13, align 8
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 9
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  store i32* %212, i32** %216, align 8
  store i32 0, i32* %7, align 4
  br label %217

217:                                              ; preds = %254, %211
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* %5, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %257

221:                                              ; preds = %217
  %222 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %222, i32 0, i32 8
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %223, align 8
  %225 = load i32, i32* %7, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i64 %226
  store %struct.TYPE_24__* %227, %struct.TYPE_24__** %3, align 8
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %221
  br label %254

233:                                              ; preds = %221
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  store i32 %236, i32* %4, align 4
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 7
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %4, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %245 = call i32 @advance_windowaggregate_base(%struct.TYPE_26__* %237, i32* %243, %struct.TYPE_24__* %244)
  store i32 %245, i32* %14, align 4
  %246 = load i32, i32* %14, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %253, label %248

248:                                              ; preds = %233
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 3
  store i32 1, i32* %250, align 4
  %251 = load i32, i32* %6, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %6, align 4
  br label %253

253:                                              ; preds = %248, %233
  br label %254

254:                                              ; preds = %253, %232
  %255 = load i32, i32* %7, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %7, align 4
  br label %217

257:                                              ; preds = %217
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 9
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %259, align 8
  %261 = call i32 @ResetExprContext(%struct.TYPE_22__* %260)
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, 1
  store i64 %265, i64* %263, align 8
  %266 = load i32*, i32** %13, align 8
  %267 = call i32 @ExecClearTuple(i32* %266)
  br label %186

268:                                              ; preds = %198
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 2
  store i64 %271, i64* %273, align 8
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp sge i64 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %268
  %279 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @WinSetMarkPosition(%struct.TYPE_25__* %279, i64 %282)
  br label %284

284:                                              ; preds = %278, %268
  %285 = load i32, i32* %6, align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %284
  %288 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %288, i32 0, i32 6
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @MemoryContextResetAndDeleteChildren(i64 %290)
  br label %292

292:                                              ; preds = %287, %284
  store i32 0, i32* %7, align 4
  br label %293

293:                                              ; preds = %363, %292
  %294 = load i32, i32* %7, align 4
  %295 = load i32, i32* %5, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %366

297:                                              ; preds = %293
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 8
  %300 = load %struct.TYPE_24__*, %struct.TYPE_24__** %299, align 8
  %301 = load i32, i32* %7, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %300, i64 %302
  store %struct.TYPE_24__* %303, %struct.TYPE_24__** %3, align 8
  %304 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %304, i32 0, i32 4
  %306 = load i64, i64* %305, align 8
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %307, i32 0, i32 6
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %306, %309
  br i1 %310, label %319, label %311

311:                                              ; preds = %297
  %312 = load i32, i32* %6, align 4
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %319, label %314

314:                                              ; preds = %311
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 4
  %318 = icmp ne i32 %317, 0
  br label %319

319:                                              ; preds = %314, %311, %297
  %320 = phi i1 [ true, %311 ], [ true, %297 ], [ %318, %314 ]
  %321 = zext i1 %320 to i32
  %322 = call i32 @Assert(i32 %321)
  %323 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %324 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %340

327:                                              ; preds = %319
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  store i32 %330, i32* %4, align 4
  %331 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %333 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i32 0, i32 7
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %4, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %339 = call i32 @initialize_windowaggregate(%struct.TYPE_26__* %331, i32* %337, %struct.TYPE_24__* %338)
  br label %362

340:                                              ; preds = %319
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %361, label %345

345:                                              ; preds = %340
  %346 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %346, i32 0, i32 6
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %356, label %350

350:                                              ; preds = %345
  %351 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i32 0, i32 1
  %353 = load i8*, i8** %352, align 8
  %354 = call i32 @DatumGetPointer(i8* %353)
  %355 = call i32 @pfree(i32 %354)
  br label %356

356:                                              ; preds = %350, %345
  %357 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %358 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %357, i32 0, i32 1
  store i8* null, i8** %358, align 8
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 2
  store i32 1, i32* %360, align 8
  br label %361

361:                                              ; preds = %356, %340
  br label %362

362:                                              ; preds = %361, %327
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %7, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %7, align 4
  br label %293

366:                                              ; preds = %293
  %367 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %368 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %367, i32 0, i32 5
  %369 = load i64, i64* %368, align 8
  store i64 %369, i64* %8, align 8
  %370 = load i32, i32* %6, align 4
  %371 = icmp sgt i32 %370, 0
  br i1 %371, label %372, label %388

372:                                              ; preds = %366
  %373 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %374 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %373, i32 0, i32 5
  %375 = load i64, i64* %374, align 8
  %376 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %377 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = icmp ne i64 %375, %378
  br i1 %379, label %380, label %388

380:                                              ; preds = %372
  %381 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %382 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %385 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %384, i32 0, i32 5
  store i64 %383, i64* %385, align 8
  %386 = load i32*, i32** %12, align 8
  %387 = call i32 @ExecClearTuple(i32* %386)
  br label %388

388:                                              ; preds = %380, %372, %366
  br label %389

389:                                              ; preds = %462, %388
  %390 = load i32*, i32** %12, align 8
  %391 = call i64 @TupIsNull(i32* %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %403

393:                                              ; preds = %389
  %394 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %395 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %395, i32 0, i32 5
  %397 = load i64, i64* %396, align 8
  %398 = load i32*, i32** %12, align 8
  %399 = call i32 @window_gettupleslot(%struct.TYPE_25__* %394, i64 %397, i32* %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %402, label %401

401:                                              ; preds = %393
  br label %473

402:                                              ; preds = %393
  br label %403

403:                                              ; preds = %402, %389
  %404 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %405 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %406 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %405, i32 0, i32 5
  %407 = load i64, i64* %406, align 8
  %408 = load i32*, i32** %12, align 8
  %409 = call i32 @row_is_in_frame(%struct.TYPE_26__* %404, i64 %407, i32* %408)
  store i32 %409, i32* %15, align 4
  %410 = load i32, i32* %15, align 4
  %411 = icmp slt i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %403
  br label %473

413:                                              ; preds = %403
  %414 = load i32, i32* %15, align 4
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %413
  br label %462

417:                                              ; preds = %413
  %418 = load i32*, i32** %12, align 8
  %419 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %420 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %419, i32 0, i32 9
  %421 = load %struct.TYPE_22__*, %struct.TYPE_22__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %421, i32 0, i32 0
  store i32* %418, i32** %422, align 8
  store i32 0, i32* %7, align 4
  br label %423

423:                                              ; preds = %458, %417
  %424 = load i32, i32* %7, align 4
  %425 = load i32, i32* %5, align 4
  %426 = icmp slt i32 %424, %425
  br i1 %426, label %427, label %461

427:                                              ; preds = %423
  %428 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %429 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %428, i32 0, i32 8
  %430 = load %struct.TYPE_24__*, %struct.TYPE_24__** %429, align 8
  %431 = load i32, i32* %7, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %430, i64 %432
  store %struct.TYPE_24__* %433, %struct.TYPE_24__** %3, align 8
  %434 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %435 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %434, i32 0, i32 3
  %436 = load i32, i32* %435, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %445, label %438

438:                                              ; preds = %427
  %439 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %440 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %439, i32 0, i32 5
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* %8, align 8
  %443 = icmp slt i64 %441, %442
  br i1 %443, label %444, label %445

444:                                              ; preds = %438
  br label %458

445:                                              ; preds = %438, %427
  %446 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  store i32 %448, i32* %4, align 4
  %449 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %450 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %451 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %450, i32 0, i32 7
  %452 = load i32*, i32** %451, align 8
  %453 = load i32, i32* %4, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %452, i64 %454
  %456 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %457 = call i32 @advance_windowaggregate(%struct.TYPE_26__* %449, i32* %455, %struct.TYPE_24__* %456)
  br label %458

458:                                              ; preds = %445, %444
  %459 = load i32, i32* %7, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %7, align 4
  br label %423

461:                                              ; preds = %423
  br label %462

462:                                              ; preds = %461, %416
  %463 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %464 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %463, i32 0, i32 9
  %465 = load %struct.TYPE_22__*, %struct.TYPE_22__** %464, align 8
  %466 = call i32 @ResetExprContext(%struct.TYPE_22__* %465)
  %467 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %468 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %467, i32 0, i32 5
  %469 = load i64, i64* %468, align 8
  %470 = add nsw i64 %469, 1
  store i64 %470, i64* %468, align 8
  %471 = load i32*, i32** %12, align 8
  %472 = call i32 @ExecClearTuple(i32* %471)
  br label %389

473:                                              ; preds = %412, %401
  %474 = load i64, i64* %8, align 8
  %475 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %476 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %475, i32 0, i32 5
  %477 = load i64, i64* %476, align 8
  %478 = icmp sle i64 %474, %477
  %479 = zext i1 %478 to i32
  %480 = call i32 @Assert(i32 %479)
  store i32 0, i32* %7, align 4
  br label %481

481:                                              ; preds = %554, %473
  %482 = load i32, i32* %7, align 4
  %483 = load i32, i32* %5, align 4
  %484 = icmp slt i32 %482, %483
  br i1 %484, label %485, label %557

485:                                              ; preds = %481
  %486 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %487 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %486, i32 0, i32 8
  %488 = load %struct.TYPE_24__*, %struct.TYPE_24__** %487, align 8
  %489 = load i32, i32* %7, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %488, i64 %490
  store %struct.TYPE_24__* %491, %struct.TYPE_24__** %3, align 8
  %492 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %493 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  store i32 %494, i32* %4, align 4
  %495 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %496 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %495, i32 0, i32 0
  %497 = load i8**, i8*** %496, align 8
  %498 = load i32, i32* %4, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i8*, i8** %497, i64 %499
  store i8** %500, i8*** %16, align 8
  %501 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %502 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %501, i32 0, i32 1
  %503 = load i32*, i32** %502, align 8
  %504 = load i32, i32* %4, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %503, i64 %505
  store i32* %506, i32** %17, align 8
  %507 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %508 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %509 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %508, i32 0, i32 7
  %510 = load i32*, i32** %509, align 8
  %511 = load i32, i32* %4, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %510, i64 %512
  %514 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %515 = load i8**, i8*** %16, align 8
  %516 = load i32*, i32** %17, align 8
  %517 = call i32 @finalize_windowaggregate(%struct.TYPE_26__* %507, i32* %513, %struct.TYPE_24__* %514, i8** %515, i32* %516)
  %518 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %519 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %518, i32 0, i32 6
  %520 = load i32, i32* %519, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %544, label %522

522:                                              ; preds = %485
  %523 = load i32*, i32** %17, align 8
  %524 = load i32, i32* %523, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %544, label %526

526:                                              ; preds = %522
  %527 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %528 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %527, i32 0, i32 4
  %529 = load i64, i64* %528, align 8
  %530 = call i64 @MemoryContextSwitchTo(i64 %529)
  store i64 %530, i64* %9, align 8
  %531 = load i8**, i8*** %16, align 8
  %532 = load i8*, i8** %531, align 8
  %533 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %534 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %533, i32 0, i32 6
  %535 = load i32, i32* %534, align 4
  %536 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %537 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %536, i32 0, i32 5
  %538 = load i32, i32* %537, align 8
  %539 = call i8* @datumCopy(i8* %532, i32 %535, i32 %538)
  %540 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %540, i32 0, i32 1
  store i8* %539, i8** %541, align 8
  %542 = load i64, i64* %9, align 8
  %543 = call i64 @MemoryContextSwitchTo(i64 %542)
  br label %549

544:                                              ; preds = %522, %485
  %545 = load i8**, i8*** %16, align 8
  %546 = load i8*, i8** %545, align 8
  %547 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %548 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %547, i32 0, i32 1
  store i8* %546, i8** %548, align 8
  br label %549

549:                                              ; preds = %544, %526
  %550 = load i32*, i32** %17, align 8
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %553 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %552, i32 0, i32 2
  store i32 %551, i32* %553, align 8
  br label %554

554:                                              ; preds = %549
  %555 = load i32, i32* %7, align 4
  %556 = add nsw i32 %555, 1
  store i32 %556, i32* %7, align 4
  br label %481

557:                                              ; preds = %23, %127, %481
  ret void
}

declare dso_local i32 @update_frameheadpos(%struct.TYPE_26__*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @window_gettupleslot(%struct.TYPE_25__*, i64, i32*) #1

declare dso_local i32 @advance_windowaggregate_base(%struct.TYPE_26__*, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @ResetExprContext(%struct.TYPE_22__*) #1

declare dso_local i32 @ExecClearTuple(i32*) #1

declare dso_local i32 @WinSetMarkPosition(%struct.TYPE_25__*, i64) #1

declare dso_local i32 @MemoryContextResetAndDeleteChildren(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @initialize_windowaggregate(%struct.TYPE_26__*, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @pfree(i32) #1

declare dso_local i32 @DatumGetPointer(i8*) #1

declare dso_local i64 @TupIsNull(i32*) #1

declare dso_local i32 @row_is_in_frame(%struct.TYPE_26__*, i64, i32*) #1

declare dso_local i32 @advance_windowaggregate(%struct.TYPE_26__*, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @finalize_windowaggregate(%struct.TYPE_26__*, i32*, %struct.TYPE_24__*, i8**, i32*) #1

declare dso_local i64 @MemoryContextSwitchTo(i64) #1

declare dso_local i8* @datumCopy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
