; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_calc_rank_and.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsrank.c_calc_rank_and.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32, i64* }
%struct.TYPE_18__ = type { i64 }

@MAXENTRYPOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float*, i32, %struct.TYPE_19__*)* @calc_rank_and to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @calc_rank_and(float* %0, i32 %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_17__**, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  %24 = alloca %struct.TYPE_17__**, align 8
  %25 = alloca i32, align 4
  %26 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  store float -1.000000e+00, float* %23, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %25, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %31 = call %struct.TYPE_17__** @SortAndUniqItems(%struct.TYPE_19__* %30, i32* %25)
  store %struct.TYPE_17__** %31, %struct.TYPE_17__*** %24, align 8
  %32 = load i32, i32* %25, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %3
  %35 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %24, align 8
  %36 = call i32 @pfree(%struct.TYPE_17__** %35)
  %37 = load float*, float** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %40 = call float @calc_rank_or(float* %37, i32 %38, %struct.TYPE_19__* %39)
  store float %40, float* %4, align 4
  br label %262

41:                                               ; preds = %3
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = trunc i64 %46 to i32
  %48 = call i64 @palloc0(i32 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_17__**
  store %struct.TYPE_17__** %49, %struct.TYPE_17__*** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @MAXENTRYPOS, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @WEP_SETPOS(i64 %57, i32 %59)
  %61 = bitcast %struct.TYPE_16__* %9 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %253, %41
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %25, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %256

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %69 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %24, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %69, i64 %71
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = call %struct.TYPE_18__* @find_wordentry(i32 %67, %struct.TYPE_19__* %68, %struct.TYPE_17__* %73, i32* %22)
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %16, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %76 = icmp ne %struct.TYPE_18__* %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  br label %253

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %249, %78
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %82 = ptrtoint %struct.TYPE_18__* %80 to i64
  %83 = ptrtoint %struct.TYPE_18__* %81 to i64
  %84 = sub i64 %82, %83
  %85 = sdiv exact i64 %84, 8
  %86 = load i32, i32* %22, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %89, label %252

89:                                               ; preds = %79
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %97 = call %struct.TYPE_17__* @_POSVECPTR(i32 %95, %struct.TYPE_18__* %96)
  %98 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %98, i64 %100
  store %struct.TYPE_17__* %97, %struct.TYPE_17__** %101, align 8
  br label %108

102:                                              ; preds = %89
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %104 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %104, i64 %106
  store %struct.TYPE_17__* %103, %struct.TYPE_17__** %107, align 8
  br label %108

108:                                              ; preds = %102, %94
  %109 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %109, i64 %111
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %19, align 4
  %116 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %116, i64 %118
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %17, align 8
  store i32 0, i32* %12, align 4
  br label %123

123:                                              ; preds = %246, %108
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %249

127:                                              ; preds = %123
  %128 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %128, i64 %130
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = icmp ne %struct.TYPE_17__* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %127
  br label %246

135:                                              ; preds = %127
  %136 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %136, i64 %138
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %20, align 4
  %143 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %143, i64 %145
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  store i32* %149, i32** %18, align 8
  store i32 0, i32* %13, align 4
  br label %150

150:                                              ; preds = %242, %135
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %19, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %245

154:                                              ; preds = %150
  store i32 0, i32* %14, align 4
  br label %155

155:                                              ; preds = %238, %154
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %20, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %241

159:                                              ; preds = %155
  %160 = load i32*, i32** %17, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i64 @WEP_GETPOS(i32 %164)
  %166 = trunc i64 %165 to i32
  %167 = load i32*, i32** %18, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @WEP_GETPOS(i32 %171)
  %173 = trunc i64 %172 to i32
  %174 = sub nsw i32 %166, %173
  %175 = call i32 @Abs(i32 %174)
  store i32 %175, i32* %21, align 4
  %176 = load i32, i32* %21, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %197, label %178

178:                                              ; preds = %159
  %179 = load i32, i32* %21, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %237

181:                                              ; preds = %178
  %182 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %182, i64 %184
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %185, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %188 = icmp eq %struct.TYPE_17__* %186, %187
  br i1 %188, label %197, label %189

189:                                              ; preds = %181
  %190 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %190, i64 %192
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %196 = icmp eq %struct.TYPE_17__* %194, %195
  br i1 %196, label %197, label %237

197:                                              ; preds = %189, %181, %159
  %198 = load i32, i32* %21, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* @MAXENTRYPOS, align 4
  store i32 %201, i32* %21, align 4
  br label %202

202:                                              ; preds = %200, %197
  %203 = load i32*, i32** %17, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @wpos(i32 %207)
  %209 = load i32*, i32** %18, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @wpos(i32 %213)
  %215 = mul nsw i32 %208, %214
  %216 = load i32, i32* %21, align 4
  %217 = call i32 @word_distance(i32 %216)
  %218 = mul nsw i32 %215, %217
  %219 = call float @sqrt(i32 %218)
  store float %219, float* %26, align 4
  %220 = load float, float* %23, align 4
  %221 = fcmp olt float %220, 0.000000e+00
  br i1 %221, label %222, label %225

222:                                              ; preds = %202
  %223 = load float, float* %26, align 4
  %224 = fpext float %223 to double
  br label %234

225:                                              ; preds = %202
  %226 = load float, float* %23, align 4
  %227 = fpext float %226 to double
  %228 = fsub double 1.000000e+00, %227
  %229 = load float, float* %26, align 4
  %230 = fpext float %229 to double
  %231 = fsub double 1.000000e+00, %230
  %232 = fmul double %228, %231
  %233 = fsub double 1.000000e+00, %232
  br label %234

234:                                              ; preds = %225, %222
  %235 = phi double [ %224, %222 ], [ %233, %225 ]
  %236 = fptrunc double %235 to float
  store float %236, float* %23, align 4
  br label %237

237:                                              ; preds = %234, %189, %178
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %14, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %14, align 4
  br label %155

241:                                              ; preds = %155
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %13, align 4
  br label %150

245:                                              ; preds = %150
  br label %246

246:                                              ; preds = %245, %134
  %247 = load i32, i32* %12, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %12, align 4
  br label %123

249:                                              ; preds = %123
  %250 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 1
  store %struct.TYPE_18__* %251, %struct.TYPE_18__** %15, align 8
  br label %79

252:                                              ; preds = %79
  br label %253

253:                                              ; preds = %252, %77
  %254 = load i32, i32* %11, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %11, align 4
  br label %62

256:                                              ; preds = %62
  %257 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  %258 = call i32 @pfree(%struct.TYPE_17__** %257)
  %259 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %24, align 8
  %260 = call i32 @pfree(%struct.TYPE_17__** %259)
  %261 = load float, float* %23, align 4
  store float %261, float* %4, align 4
  br label %262

262:                                              ; preds = %256, %34
  %263 = load float, float* %4, align 4
  ret float %263
}

declare dso_local %struct.TYPE_17__** @SortAndUniqItems(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @pfree(%struct.TYPE_17__**) #1

declare dso_local float @calc_rank_or(float*, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @WEP_SETPOS(i64, i32) #1

declare dso_local %struct.TYPE_18__* @find_wordentry(i32, %struct.TYPE_19__*, %struct.TYPE_17__*, i32*) #1

declare dso_local %struct.TYPE_17__* @_POSVECPTR(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @Abs(i32) #1

declare dso_local i64 @WEP_GETPOS(i32) #1

declare dso_local float @sqrt(i32) #1

declare dso_local i32 @wpos(i32) #1

declare dso_local i32 @word_distance(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
