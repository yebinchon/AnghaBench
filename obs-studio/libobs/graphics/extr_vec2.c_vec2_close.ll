; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec2.c_vec2_close.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec2.c_vec2_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec2 = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vec2_close(%struct.vec2* %0, %struct.vec2* %1, float %2) #0 {
  %4 = alloca %struct.vec2*, align 8
  %5 = alloca %struct.vec2*, align 8
  %6 = alloca float, align 4
  store %struct.vec2* %0, %struct.vec2** %4, align 8
  store %struct.vec2* %1, %struct.vec2** %5, align 8
  store float %2, float* %6, align 4
  %7 = load %struct.vec2*, %struct.vec2** %4, align 8
  %8 = getelementptr inbounds %struct.vec2, %struct.vec2* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.vec2*, %struct.vec2** %5, align 8
  %11 = getelementptr inbounds %struct.vec2, %struct.vec2* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load float, float* %6, align 4
  %14 = call i64 @close_float(i32 %9, i32 %12, float %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.vec2*, %struct.vec2** %4, align 8
  %18 = getelementptr inbounds %struct.vec2, %struct.vec2* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vec2*, %struct.vec2** %5, align 8
  %21 = getelementptr inbounds %struct.vec2, %struct.vec2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load float, float* %6, align 4
  %24 = call i64 @close_float(i32 %19, i32 %22, float %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %16, %3
  %27 = phi i1 [ false, %3 ], [ %25, %16 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i64 @close_float(i32, i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
