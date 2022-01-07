; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_BgBufferSync.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_BgBufferSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@BgBufferSync.saved_info_valid = internal global i32 0, align 4
@BgBufferSync.prev_strategy_buf_id = internal global i32 0, align 4
@BgBufferSync.prev_strategy_passes = internal global i64 0, align 8
@BgBufferSync.next_to_clean = internal global i32 0, align 4
@BgBufferSync.next_passes = internal global i64 0, align 8
@BgBufferSync.smoothed_alloc = internal global float 0.000000e+00, align 4
@BgBufferSync.smoothed_density = internal global float 1.000000e+01, align 4
@BgWriterStats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@bgwriter_lru_maxpages = common dso_local global i32 0, align 4
@NBuffers = common dso_local global i64 0, align 8
@bgwriter_lru_multiplier = common dso_local global float 0.000000e+00, align 4
@BgWriterDelay = common dso_local global float 0.000000e+00, align 4
@CurrentResourceOwner = common dso_local global i32 0, align 4
@BUF_WRITTEN = common dso_local global i32 0, align 4
@BUF_REUSABLE = common dso_local global i32 0, align 4
@DEBUG1 = common dso_local global i32 0, align 4
@DEBUG2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BgBufferSync(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store float 1.600000e+01, float* %7, align 4
  store float 1.200000e+05, float* %8, align 4
  %23 = call i32 @StrategySyncStart(i64* %5, i64* %6)
  store i32 %23, i32* %4, align 4
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @BgWriterStats, i32 0, i32 0), align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @BgWriterStats, i32 0, i32 0), align 8
  %27 = load i32, i32* @bgwriter_lru_maxpages, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 0, i32* @BgBufferSync.saved_info_valid, align 4
  store i32 1, i32* %2, align 4
  br label %252

30:                                               ; preds = %1
  %31 = load i32, i32* @BgBufferSync.saved_info_valid, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @BgBufferSync.prev_strategy_passes, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %21, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @BgBufferSync.prev_strategy_buf_id, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %21, align 8
  %42 = load i64, i64* @NBuffers, align 8
  %43 = mul nsw i64 %41, %42
  %44 = load i64, i64* %9, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp sge i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @Assert(i32 %48)
  %50 = load i64, i64* @BgBufferSync.next_passes, align 8
  %51 = load i64, i64* %5, align 8
  %52 = sub nsw i64 %50, %51
  %53 = icmp sgt i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %33
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @BgBufferSync.next_to_clean, align 4
  %57 = sub nsw i32 %55, %56
  store i32 %57, i32* %10, align 4
  br label %80

58:                                               ; preds = %33
  %59 = load i64, i64* @BgBufferSync.next_passes, align 8
  %60 = load i64, i64* %5, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i32, i32* @BgBufferSync.next_to_clean, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i64, i64* @NBuffers, align 8
  %68 = load i32, i32* @BgBufferSync.next_to_clean, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %67, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  br label %79

74:                                               ; preds = %62, %58
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* @BgBufferSync.next_to_clean, align 4
  %76 = load i64, i64* %5, align 8
  store i64 %76, i64* @BgBufferSync.next_passes, align 8
  %77 = load i64, i64* @NBuffers, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %74, %66
  br label %80

80:                                               ; preds = %79, %54
  br label %86

81:                                               ; preds = %30
  store i64 0, i64* %9, align 8
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* @BgBufferSync.next_to_clean, align 4
  %83 = load i64, i64* %5, align 8
  store i64 %83, i64* @BgBufferSync.next_passes, align 8
  %84 = load i64, i64* @NBuffers, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %81, %80
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* @BgBufferSync.prev_strategy_buf_id, align 4
  %88 = load i64, i64* %5, align 8
  store i64 %88, i64* @BgBufferSync.prev_strategy_passes, align 8
  store i32 1, i32* @BgBufferSync.saved_info_valid, align 4
  %89 = load i64, i64* %9, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load i64, i64* %6, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %91
  %95 = load i64, i64* %9, align 8
  %96 = sitofp i64 %95 to float
  %97 = load i64, i64* %6, align 8
  %98 = sitofp i64 %97 to float
  %99 = fdiv float %96, %98
  store float %99, float* %12, align 4
  %100 = load float, float* %12, align 4
  %101 = load float, float* @BgBufferSync.smoothed_density, align 4
  %102 = fsub float %100, %101
  %103 = load float, float* %7, align 4
  %104 = fdiv float %102, %103
  %105 = load float, float* @BgBufferSync.smoothed_density, align 4
  %106 = fadd float %105, %104
  store float %106, float* @BgBufferSync.smoothed_density, align 4
  br label %107

107:                                              ; preds = %94, %91, %86
  %108 = load i64, i64* @NBuffers, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %108, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = sitofp i32 %113 to float
  %115 = load float, float* @BgBufferSync.smoothed_density, align 4
  %116 = fdiv float %114, %115
  %117 = fptosi float %116 to i32
  store i32 %117, i32* %13, align 4
  %118 = load float, float* @BgBufferSync.smoothed_alloc, align 4
  %119 = load i64, i64* %6, align 8
  %120 = sitofp i64 %119 to float
  %121 = fcmp ole float %118, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %107
  %123 = load i64, i64* %6, align 8
  %124 = sitofp i64 %123 to float
  store float %124, float* @BgBufferSync.smoothed_alloc, align 4
  br label %134

125:                                              ; preds = %107
  %126 = load i64, i64* %6, align 8
  %127 = sitofp i64 %126 to float
  %128 = load float, float* @BgBufferSync.smoothed_alloc, align 4
  %129 = fsub float %127, %128
  %130 = load float, float* %7, align 4
  %131 = fdiv float %129, %130
  %132 = load float, float* @BgBufferSync.smoothed_alloc, align 4
  %133 = fadd float %132, %131
  store float %133, float* @BgBufferSync.smoothed_alloc, align 4
  br label %134

134:                                              ; preds = %125, %122
  %135 = load float, float* @BgBufferSync.smoothed_alloc, align 4
  %136 = load float, float* @bgwriter_lru_multiplier, align 4
  %137 = fmul float %135, %136
  %138 = fptosi float %137 to i32
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  store float 0.000000e+00, float* @BgBufferSync.smoothed_alloc, align 4
  br label %142

142:                                              ; preds = %141, %134
  %143 = load i64, i64* @NBuffers, align 8
  %144 = sitofp i64 %143 to float
  %145 = load float, float* %8, align 4
  %146 = load float, float* @BgWriterDelay, align 4
  %147 = fdiv float %145, %146
  %148 = fdiv float %144, %147
  %149 = fptosi float %148 to i32
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %151, %152
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %142
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %156, %157
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %155, %142
  %160 = load i32, i32* @CurrentResourceOwner, align 4
  %161 = call i32 @ResourceOwnerEnlargeBuffers(i32 %160)
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %163 = load i32, i32* %13, align 4
  store i32 %163, i32* %18, align 4
  br label %164

164:                                              ; preds = %212, %159
  %165 = load i32, i32* %16, align 4
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp slt i32 %168, %169
  br label %171

171:                                              ; preds = %167, %164
  %172 = phi i1 [ false, %164 ], [ %170, %167 ]
  br i1 %172, label %173, label %213

173:                                              ; preds = %171
  %174 = load i32, i32* @BgBufferSync.next_to_clean, align 4
  %175 = load i32*, i32** %3, align 8
  %176 = call i32 @SyncOneBuffer(i32 %174, i32 1, i32* %175)
  store i32 %176, i32* %22, align 4
  %177 = load i32, i32* @BgBufferSync.next_to_clean, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* @BgBufferSync.next_to_clean, align 4
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* @NBuffers, align 8
  %181 = icmp sge i64 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %173
  store i32 0, i32* @BgBufferSync.next_to_clean, align 4
  %183 = load i64, i64* @BgBufferSync.next_passes, align 8
  %184 = add nsw i64 %183, 1
  store i64 %184, i64* @BgBufferSync.next_passes, align 8
  br label %185

185:                                              ; preds = %182, %173
  %186 = load i32, i32* %16, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* %22, align 4
  %189 = load i32, i32* @BUF_WRITTEN, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %185
  %193 = load i32, i32* %18, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %17, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* @bgwriter_lru_maxpages, align 4
  %198 = icmp sge i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %192
  %200 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @BgWriterStats, i32 0, i32 2), align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @BgWriterStats, i32 0, i32 2), align 4
  br label %213

202:                                              ; preds = %192
  br label %212

203:                                              ; preds = %185
  %204 = load i32, i32* %22, align 4
  %205 = load i32, i32* @BUF_REUSABLE, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, i32* %18, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %18, align 4
  br label %211

211:                                              ; preds = %208, %203
  br label %212

212:                                              ; preds = %211, %202
  br label %164

213:                                              ; preds = %199, %171
  %214 = load i32, i32* %17, align 4
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @BgWriterStats, i32 0, i32 1), align 8
  %216 = add nsw i32 %215, %214
  store i32 %216, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @BgWriterStats, i32 0, i32 1), align 8
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %16, align 4
  %219 = sub nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %19, align 8
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* %13, align 4
  %223 = sub nsw i32 %221, %222
  %224 = sext i32 %223 to i64
  store i64 %224, i64* %20, align 8
  %225 = load i64, i64* %19, align 8
  %226 = icmp sgt i64 %225, 0
  br i1 %226, label %227, label %243

227:                                              ; preds = %213
  %228 = load i64, i64* %20, align 8
  %229 = icmp sgt i64 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %227
  %231 = load i64, i64* %19, align 8
  %232 = sitofp i64 %231 to float
  %233 = load i64, i64* %20, align 8
  %234 = sitofp i64 %233 to float
  %235 = fdiv float %232, %234
  store float %235, float* %12, align 4
  %236 = load float, float* %12, align 4
  %237 = load float, float* @BgBufferSync.smoothed_density, align 4
  %238 = fsub float %236, %237
  %239 = load float, float* %7, align 4
  %240 = fdiv float %238, %239
  %241 = load float, float* @BgBufferSync.smoothed_density, align 4
  %242 = fadd float %241, %240
  store float %242, float* @BgBufferSync.smoothed_density, align 4
  br label %243

243:                                              ; preds = %230, %227, %213
  %244 = load i32, i32* %10, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i64, i64* %6, align 8
  %248 = icmp eq i64 %247, 0
  br label %249

249:                                              ; preds = %246, %243
  %250 = phi i1 [ false, %243 ], [ %248, %246 ]
  %251 = zext i1 %250 to i32
  store i32 %251, i32* %2, align 4
  br label %252

252:                                              ; preds = %249, %29
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @StrategySyncStart(i64*, i64*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ResourceOwnerEnlargeBuffers(i32) #1

declare dso_local i32 @SyncOneBuffer(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
