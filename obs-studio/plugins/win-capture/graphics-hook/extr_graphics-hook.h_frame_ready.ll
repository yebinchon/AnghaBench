; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_graphics-hook.h_frame_ready.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/graphics-hook/extr_graphics-hook.h_frame_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@frame_ready.last_time = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @frame_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frame_ready(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  %10 = call i32 (...) @os_gettime_ns()
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @frame_ready.last_time, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %31

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 %20, 2
  %22 = icmp sgt i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  br label %29

25:                                               ; preds = %18
  %26 = load i32, i32* @frame_ready.last_time, align 4
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %26, %27
  br label %29

29:                                               ; preds = %25, %23
  %30 = phi i32 [ %24, %23 ], [ %28, %25 ]
  store i32 %30, i32* @frame_ready.last_time, align 4
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %17, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @os_gettime_ns(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
