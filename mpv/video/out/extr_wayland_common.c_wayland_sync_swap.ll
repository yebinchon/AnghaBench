; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_wayland_sync_swap.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_wayland_common.c_wayland_sync_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vo_wayland_state = type { i32, i64, i32, i32, i32, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }
%struct.timespec = type { i64, i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wayland_sync_swap(%struct.vo_wayland_state* %0) #0 {
  %2 = alloca %struct.vo_wayland_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vo_wayland_state* %0, %struct.vo_wayland_state** %2, align 8
  %10 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %11 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %15 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %14, i32 0, i32 8
  store i64 0, i64* %15, align 8
  %16 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %17 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %16, i32 0, i32 7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %25 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %1
  %29 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %30 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %69

33:                                               ; preds = %28
  %34 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %35 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %34, i32 0, i32 7
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %43 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %42, i32 0, i32 7
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %41
  store i64 %50, i64* %48, align 8
  %51 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %52 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %51, i32 0, i32 7
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %61 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %60, i32 0, i32 7
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %33, %28, %1
  %70 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %71 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %70, i32 0, i32 7
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %69
  %80 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %81 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %80, i32 0, i32 7
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %89 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %87, %90
  br label %93

92:                                               ; preds = %69
  br label %93

93:                                               ; preds = %92, %79
  %94 = phi i64 [ %91, %79 ], [ 0, %92 ]
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %4, align 4
  %96 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %97 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %96, i32 0, i32 7
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %105 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  %106 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %107 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %106, i32 0, i32 7
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %93
  %116 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %117 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %116, i32 0, i32 7
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %125 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %123, %126
  br label %129

128:                                              ; preds = %93
  br label %129

129:                                              ; preds = %128, %115
  %130 = phi i32 [ %127, %115 ], [ 0, %128 ]
  store i32 %130, i32* %5, align 4
  %131 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %132 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %131, i32 0, i32 7
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %140 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %142 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %141, i32 0, i32 7
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %129
  %151 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %152 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %151, i32 0, i32 7
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %160 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %158, %161
  br label %164

163:                                              ; preds = %129
  br label %164

164:                                              ; preds = %163, %150
  %165 = phi i32 [ %162, %150 ], [ 0, %163 ]
  store i32 %165, i32* %6, align 4
  %166 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %167 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %166, i32 0, i32 7
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %175 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %5, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %164
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %5, align 4
  %184 = sdiv i32 %182, %183
  %185 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %186 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %181, %178, %164
  %188 = load i32, i32* %6, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %219

190:                                              ; preds = %187
  %191 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %192 = call i64 @clock_gettime(i32 %191, %struct.timespec* %7)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  br label %243

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = mul nsw i64 %197, 1000000
  %199 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = sdiv i32 %200, 1000
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %198, %202
  store i64 %203, i64* %8, align 8
  %204 = call i64 (...) @mp_time_us()
  %205 = load i64, i64* %8, align 8
  %206 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %207 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %206, i32 0, i32 7
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** %207, align 8
  %209 = load i32, i32* %3, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = sub nsw i64 %205, %213
  %215 = sub nsw i64 %204, %214
  store i64 %215, i64* %9, align 8
  %216 = load i64, i64* %9, align 8
  %217 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %218 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %217, i32 0, i32 5
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %195, %187
  %220 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %221 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %220, i32 0, i32 7
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %221, align 8
  %223 = load i32, i32* %3, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %219
  br label %243

230:                                              ; preds = %219
  %231 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %232 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* %6, align 4
  %235 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %236 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = mul nsw i32 %234, %237
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %233, %239
  %241 = load %struct.vo_wayland_state*, %struct.vo_wayland_state** %2, align 8
  %242 = getelementptr inbounds %struct.vo_wayland_state, %struct.vo_wayland_state* %241, i32 0, i32 6
  store i64 %240, i64* %242, align 8
  br label %243

243:                                              ; preds = %230, %229, %194
  ret void
}

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @mp_time_us(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
