; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_WinGetFuncArgInFrame.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_nodeWindowAgg.c_WinGetFuncArgInFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i64, i64, i64, i64, i64, i32*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"WINDOW_SEEK_CURRENT is not supported for WinGetFuncArgInFrame\00", align 1
@FRAMEOPTION_EXCLUSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unrecognized frame option state: 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unrecognized window seek type: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WinGetFuncArgInFrame(%struct.TYPE_17__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %26 = call i32 @WindowObjectIsValid(%struct.TYPE_17__* %25)
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %16, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %34, align 8
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %17, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %18, align 8
  %39 = load i32, i32* %12, align 4
  switch i32 %39, label %319 [
    i32 130, label %40
    i32 129, label %43
    i32 128, label %162
  ]

40:                                               ; preds = %7
  %41 = load i32, i32* @ERROR, align 4
  %42 = call i32 (i32, i8*, ...) @elog(i32 %41, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %20, align 8
  store i64 0, i64* %19, align 8
  br label %323

43:                                               ; preds = %7
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %362

47:                                               ; preds = %43
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %49 = call i32 @update_frameheadpos(%struct.TYPE_18__* %48)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  store i64 %55, i64* %19, align 8
  %56 = load i64, i64* %19, align 8
  store i64 %56, i64* %20, align 8
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FRAMEOPTION_EXCLUSION, align 4
  %61 = and i32 %59, %60
  switch i32 %61, label %155 [
    i32 0, label %62
    i32 133, label %63
    i32 132, label %81
    i32 131, label %113
  ]

62:                                               ; preds = %47
  br label %161

63:                                               ; preds = %47
  %64 = load i64, i64* %19, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %64, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i64, i64* %19, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %19, align 8
  br label %80

80:                                               ; preds = %77, %69, %63
  br label %161

81:                                               ; preds = %47
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %83 = call i32 @update_grouptailpos(%struct.TYPE_18__* %82)
  %84 = load i64, i64* %19, align 8
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %84, %87
  br i1 %88, label %89, label %112

89:                                               ; preds = %81
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %89
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @Max(i64 %100, i64 %103)
  store i64 %104, i64* %21, align 8
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %21, align 8
  %109 = sub nsw i64 %107, %108
  %110 = load i64, i64* %19, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %19, align 8
  br label %112

112:                                              ; preds = %97, %89, %81
  br label %161

113:                                              ; preds = %47
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %115 = call i32 @update_grouptailpos(%struct.TYPE_18__* %114)
  %116 = load i64, i64* %19, align 8
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %116, %119
  br i1 %120, label %121, label %154

121:                                              ; preds = %113
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp sgt i64 %124, %127
  br i1 %128, label %129, label %154

129:                                              ; preds = %121
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i64 @Max(i64 %132, i64 %135)
  store i64 %136, i64* %22, align 8
  %137 = load i64, i64* %19, align 8
  %138 = load i64, i64* %22, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %129
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %19, align 8
  br label %153

144:                                              ; preds = %129
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %22, align 8
  %149 = sub nsw i64 %147, %148
  %150 = sub nsw i64 %149, 1
  %151 = load i64, i64* %19, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* %19, align 8
  br label %153

153:                                              ; preds = %144, %140
  br label %154

154:                                              ; preds = %153, %121, %113
  br label %161

155:                                              ; preds = %47
  %156 = load i32, i32* @ERROR, align 4
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @elog(i32 %156, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %155, %154, %112, %80, %62
  br label %323

162:                                              ; preds = %7
  %163 = load i32, i32* %11, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  br label %362

166:                                              ; preds = %162
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %168 = call i32 @update_frametailpos(%struct.TYPE_18__* %167)
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %171, 1
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %172, %174
  store i64 %175, i64* %19, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @FRAMEOPTION_EXCLUSION, align 4
  %180 = and i32 %178, %179
  switch i32 %180, label %312 [
    i32 0, label %181
    i32 133, label %183
    i32 132, label %213
    i32 131, label %257
  ]

181:                                              ; preds = %166
  %182 = load i64, i64* %19, align 8
  store i64 %182, i64* %20, align 8
  br label %318

183:                                              ; preds = %166
  %184 = load i64, i64* %19, align 8
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = icmp sle i64 %184, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %183
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = icmp slt i64 %192, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %189
  %198 = load i64, i64* %19, align 8
  %199 = add nsw i64 %198, -1
  store i64 %199, i64* %19, align 8
  br label %200

200:                                              ; preds = %197, %189, %183
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %202 = call i32 @update_frameheadpos(%struct.TYPE_18__* %201)
  %203 = load i64, i64* %19, align 8
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp slt i64 %203, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  br label %362

209:                                              ; preds = %200
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %20, align 8
  br label %318

213:                                              ; preds = %166
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %215 = call i32 @update_grouptailpos(%struct.TYPE_18__* %214)
  %216 = load i64, i64* %19, align 8
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 5
  %219 = load i64, i64* %218, align 8
  %220 = icmp slt i64 %216, %219
  br i1 %220, label %221, label %244

221:                                              ; preds = %213
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = icmp slt i64 %224, %227
  br i1 %228, label %229, label %244

229:                                              ; preds = %221
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 5
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = call i64 @Min(i64 %232, i64 %235)
  store i64 %236, i64* %23, align 8
  %237 = load i64, i64* %23, align 8
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = sub nsw i64 %237, %240
  %242 = load i64, i64* %19, align 8
  %243 = sub nsw i64 %242, %241
  store i64 %243, i64* %19, align 8
  br label %244

244:                                              ; preds = %229, %221, %213
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %246 = call i32 @update_frameheadpos(%struct.TYPE_18__* %245)
  %247 = load i64, i64* %19, align 8
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp slt i64 %247, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %244
  br label %362

253:                                              ; preds = %244
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  store i64 %256, i64* %20, align 8
  br label %318

257:                                              ; preds = %166
  %258 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %259 = call i32 @update_grouptailpos(%struct.TYPE_18__* %258)
  %260 = load i64, i64* %19, align 8
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 5
  %263 = load i64, i64* %262, align 8
  %264 = icmp slt i64 %260, %263
  br i1 %264, label %265, label %299

265:                                              ; preds = %257
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = icmp slt i64 %268, %271
  br i1 %272, label %273, label %299

273:                                              ; preds = %265
  %274 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 5
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 4
  %279 = load i64, i64* %278, align 8
  %280 = call i64 @Min(i64 %276, i64 %279)
  store i64 %280, i64* %24, align 8
  %281 = load i64, i64* %19, align 8
  %282 = load i64, i64* %24, align 8
  %283 = sub nsw i64 %282, 1
  %284 = icmp eq i64 %281, %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %273
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  store i64 %288, i64* %19, align 8
  br label %298

289:                                              ; preds = %273
  %290 = load i64, i64* %24, align 8
  %291 = sub nsw i64 %290, 1
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = sub nsw i64 %291, %294
  %296 = load i64, i64* %19, align 8
  %297 = sub nsw i64 %296, %295
  store i64 %297, i64* %19, align 8
  br label %298

298:                                              ; preds = %289, %285
  br label %299

299:                                              ; preds = %298, %265, %257
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %301 = call i32 @update_frameheadpos(%struct.TYPE_18__* %300)
  %302 = load i64, i64* %19, align 8
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = icmp slt i64 %302, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %299
  br label %362

308:                                              ; preds = %299
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 1
  %311 = load i64, i64* %310, align 8
  store i64 %311, i64* %20, align 8
  br label %318

312:                                              ; preds = %166
  %313 = load i32, i32* @ERROR, align 4
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = call i32 (i32, i8*, ...) @elog(i32 %313, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %316)
  store i64 0, i64* %20, align 8
  br label %318

318:                                              ; preds = %312, %308, %253, %209, %181
  br label %323

319:                                              ; preds = %7
  %320 = load i32, i32* @ERROR, align 4
  %321 = load i32, i32* %12, align 4
  %322 = call i32 (i32, i8*, ...) @elog(i32 %320, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %321)
  store i64 0, i64* %20, align 8
  store i64 0, i64* %19, align 8
  br label %323

323:                                              ; preds = %319, %318, %161, %40
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %325 = load i64, i64* %19, align 8
  %326 = load i32*, i32** %18, align 8
  %327 = call i32 @window_gettupleslot(%struct.TYPE_17__* %324, i64 %325, i32* %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %323
  br label %362

330:                                              ; preds = %323
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %332 = load i64, i64* %19, align 8
  %333 = load i32*, i32** %18, align 8
  %334 = call i64 @row_is_in_frame(%struct.TYPE_18__* %331, i64 %332, i32* %333)
  %335 = icmp sle i64 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %330
  br label %362

337:                                              ; preds = %330
  %338 = load i32*, i32** %15, align 8
  %339 = icmp ne i32* %338, null
  br i1 %339, label %340, label %342

340:                                              ; preds = %337
  %341 = load i32*, i32** %15, align 8
  store i32 0, i32* %341, align 4
  br label %342

342:                                              ; preds = %340, %337
  %343 = load i32, i32* %13, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %342
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %347 = load i64, i64* %20, align 8
  %348 = call i32 @WinSetMarkPosition(%struct.TYPE_17__* %346, i64 %347)
  br label %349

349:                                              ; preds = %345, %342
  %350 = load i32*, i32** %18, align 8
  %351 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %352 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %351, i32 0, i32 0
  store i32* %350, i32** %352, align 8
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %10, align 4
  %357 = call i64 @list_nth(i32 %355, i32 %356)
  %358 = inttoptr i64 %357 to i32*
  %359 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %360 = load i32*, i32** %14, align 8
  %361 = call i32 @ExecEvalExpr(i32* %358, %struct.TYPE_19__* %359, i32* %360)
  store i32 %361, i32* %8, align 4
  br label %369

362:                                              ; preds = %336, %329, %307, %252, %208, %165, %46
  %363 = load i32*, i32** %15, align 8
  %364 = icmp ne i32* %363, null
  br i1 %364, label %365, label %367

365:                                              ; preds = %362
  %366 = load i32*, i32** %15, align 8
  store i32 1, i32* %366, align 4
  br label %367

367:                                              ; preds = %365, %362
  %368 = load i32*, i32** %14, align 8
  store i32 1, i32* %368, align 4
  store i32 0, i32* %8, align 4
  br label %369

369:                                              ; preds = %367, %349
  %370 = load i32, i32* %8, align 4
  ret i32 %370
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @WindowObjectIsValid(%struct.TYPE_17__*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @update_frameheadpos(%struct.TYPE_18__*) #1

declare dso_local i32 @update_grouptailpos(%struct.TYPE_18__*) #1

declare dso_local i64 @Max(i64, i64) #1

declare dso_local i32 @update_frametailpos(%struct.TYPE_18__*) #1

declare dso_local i64 @Min(i64, i64) #1

declare dso_local i32 @window_gettupleslot(%struct.TYPE_17__*, i64, i32*) #1

declare dso_local i64 @row_is_in_frame(%struct.TYPE_18__*, i64, i32*) #1

declare dso_local i32 @WinSetMarkPosition(%struct.TYPE_17__*, i64) #1

declare dso_local i32 @ExecEvalExpr(i32*, %struct.TYPE_19__*, i32*) #1

declare dso_local i64 @list_nth(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
