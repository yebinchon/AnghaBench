; ModuleID = '/home/carl/AnghaBench/mpv/input/extr_input.c_test_rect.c'
source_filename = "/home/carl/AnghaBench/mpv/input/extr_input.c_test_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_rect = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_rect*, i32, i32)* @test_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_rect(%struct.mp_rect* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mp_rect*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mp_rect* %0, %struct.mp_rect** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %9 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sge i32 %7, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %15 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %21 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.mp_rect*, %struct.mp_rect** %4, align 8
  %27 = getelementptr inbounds %struct.mp_rect, %struct.mp_rect* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br label %30

30:                                               ; preds = %24, %18, %12, %3
  %31 = phi i1 [ false, %18 ], [ false, %12 ], [ false, %3 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
