; ModuleID = '/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__calculateJoins.c'
source_filename = "/home/carl/AnghaBench/openpilot/phonelibs/nanovg/extr_nanovg.c_nvg__calculateJoins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { float, float, float, float, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i64 }

@NVG_PT_CORNER = common dso_local global i32 0, align 4
@NVG_PT_LEFT = common dso_local global i32 0, align 4
@NVG_PR_INNERBEVEL = common dso_local global i32 0, align 4
@NVG_BEVEL = common dso_local global i32 0, align 4
@NVG_ROUND = common dso_local global i32 0, align 4
@NVG_PT_BEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, float, i32, float)* @nvg__calculateJoins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvg__calculateJoins(%struct.TYPE_9__* %0, float %1, i32 %2, float %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store float %1, float* %6, align 4
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %9, align 8
  store float 0.000000e+00, float* %12, align 4
  %29 = load float, float* %6, align 4
  %30 = fcmp ogt float %29, 0.000000e+00
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load float, float* %6, align 4
  %33 = fdiv float 1.000000e+00, %32
  store float %33, float* %12, align 4
  br label %34

34:                                               ; preds = %31, %4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %254, %34
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %257

41:                                               ; preds = %35
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %13, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %53
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %14, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %60
  store %struct.TYPE_6__* %61, %struct.TYPE_6__** %15, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 0
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %16, align 8
  store i32 0, i32* %17, align 4
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %241, %41
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %244

72:                                               ; preds = %66
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load float, float* %74, align 4
  store float %75, float* %18, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load float, float* %77, align 4
  %79 = fneg float %78
  store float %79, float* %19, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load float, float* %81, align 4
  store float %82, float* %20, align 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load float, float* %84, align 4
  %86 = fneg float %85
  store float %86, float* %21, align 4
  %87 = load float, float* %18, align 4
  %88 = load float, float* %20, align 4
  %89 = fadd float %87, %88
  %90 = fmul float %89, 5.000000e-01
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  store float %90, float* %92, align 4
  %93 = load float, float* %19, align 4
  %94 = load float, float* %21, align 4
  %95 = fadd float %93, %94
  %96 = fmul float %95, 5.000000e-01
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store float %96, float* %98, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load float, float* %100, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load float, float* %103, align 4
  %105 = fmul float %101, %104
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load float, float* %107, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = load float, float* %110, align 4
  %112 = fmul float %108, %111
  %113 = fadd float %105, %112
  store float %113, float* %22, align 4
  %114 = load float, float* %22, align 4
  %115 = fcmp ogt float %114, 0x3EB0C6F7A0000000
  br i1 %115, label %116, label %133

116:                                              ; preds = %72
  %117 = load float, float* %22, align 4
  %118 = fdiv float 1.000000e+00, %117
  store float %118, float* %25, align 4
  %119 = load float, float* %25, align 4
  %120 = fcmp ogt float %119, 6.000000e+02
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store float 6.000000e+02, float* %25, align 4
  br label %122

122:                                              ; preds = %121, %116
  %123 = load float, float* %25, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load float, float* %125, align 4
  %127 = fmul float %126, %123
  store float %127, float* %125, align 4
  %128 = load float, float* %25, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load float, float* %130, align 4
  %132 = fmul float %131, %128
  store float %132, float* %130, align 4
  br label %133

133:                                              ; preds = %122, %72
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @NVG_PT_CORNER, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @NVG_PT_CORNER, align 4
  br label %143

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %140
  %144 = phi i32 [ %141, %140 ], [ 0, %142 ]
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load float, float* %148, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load float, float* %151, align 4
  %153 = fmul float %149, %152
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  %156 = load float, float* %155, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load float, float* %158, align 4
  %160 = fmul float %156, %159
  %161 = fsub float %153, %160
  store float %161, float* %23, align 4
  %162 = load float, float* %23, align 4
  %163 = fcmp ogt float %162, 0.000000e+00
  br i1 %163, label %164, label %172

164:                                              ; preds = %143
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %17, align 4
  %167 = load i32, i32* @NVG_PT_LEFT, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %164, %143
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = call float @nvg__minf(i32 %175, i32 %178)
  %180 = load float, float* %12, align 4
  %181 = fmul float %179, %180
  %182 = call float @nvg__maxf(float 0x3FF028F5C0000000, float %181)
  store float %182, float* %24, align 4
  %183 = load float, float* %22, align 4
  %184 = load float, float* %24, align 4
  %185 = fmul float %183, %184
  %186 = load float, float* %24, align 4
  %187 = fmul float %185, %186
  %188 = fcmp olt float %187, 1.000000e+00
  br i1 %188, label %189, label %195

189:                                              ; preds = %172
  %190 = load i32, i32* @NVG_PR_INNERBEVEL, align 4
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %189, %172
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @NVG_PT_CORNER, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %224

202:                                              ; preds = %195
  %203 = load float, float* %22, align 4
  %204 = load float, float* %8, align 4
  %205 = fmul float %203, %204
  %206 = load float, float* %8, align 4
  %207 = fmul float %205, %206
  %208 = fcmp olt float %207, 1.000000e+00
  br i1 %208, label %217, label %209

209:                                              ; preds = %202
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* @NVG_BEVEL, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %217, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %7, align 4
  %215 = load i32, i32* @NVG_ROUND, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %213, %209, %202
  %218 = load i32, i32* @NVG_PT_BEVEL, align 4
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, %218
  store i32 %222, i32* %220, align 4
  br label %223

223:                                              ; preds = %217, %213
  br label %224

224:                                              ; preds = %223, %195
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @NVG_PT_BEVEL, align 4
  %229 = load i32, i32* @NVG_PR_INNERBEVEL, align 4
  %230 = or i32 %228, %229
  %231 = and i32 %227, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %224
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %235, align 8
  br label %238

238:                                              ; preds = %233, %224
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 1
  store %struct.TYPE_6__* %240, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %239, %struct.TYPE_6__** %15, align 8
  br label %241

241:                                              ; preds = %238
  %242 = load i32, i32* %11, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %11, align 4
  br label %66

244:                                              ; preds = %66
  %245 = load i32, i32* %17, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = icmp eq i32 %245, %248
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i32 1, i32 0
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  store i32 %251, i32* %253, align 4
  br label %254

254:                                              ; preds = %244
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %10, align 4
  br label %35

257:                                              ; preds = %35
  ret void
}

declare dso_local float @nvg__maxf(float, float) #1

declare dso_local float @nvg__minf(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
