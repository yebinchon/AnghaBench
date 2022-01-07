; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec2.h_vec2_min.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/graphics/extr_vec2.h_vec2_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec2 = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vec2*, %struct.vec2*, %struct.vec2*)* @vec2_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vec2_min(%struct.vec2* %0, %struct.vec2* %1, %struct.vec2* %2) #0 {
  %4 = alloca %struct.vec2*, align 8
  %5 = alloca %struct.vec2*, align 8
  %6 = alloca %struct.vec2*, align 8
  store %struct.vec2* %0, %struct.vec2** %4, align 8
  store %struct.vec2* %1, %struct.vec2** %5, align 8
  store %struct.vec2* %2, %struct.vec2** %6, align 8
  %7 = load %struct.vec2*, %struct.vec2** %5, align 8
  %8 = getelementptr inbounds %struct.vec2, %struct.vec2* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.vec2*, %struct.vec2** %6, align 8
  %11 = getelementptr inbounds %struct.vec2, %struct.vec2* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.vec2*, %struct.vec2** %6, align 8
  %16 = getelementptr inbounds %struct.vec2, %struct.vec2* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vec2*, %struct.vec2** %4, align 8
  %19 = getelementptr inbounds %struct.vec2, %struct.vec2* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %14, %3
  %21 = load %struct.vec2*, %struct.vec2** %5, align 8
  %22 = getelementptr inbounds %struct.vec2, %struct.vec2* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.vec2*, %struct.vec2** %6, align 8
  %25 = getelementptr inbounds %struct.vec2, %struct.vec2* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.vec2*, %struct.vec2** %6, align 8
  %30 = getelementptr inbounds %struct.vec2, %struct.vec2* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vec2*, %struct.vec2** %4, align 8
  %33 = getelementptr inbounds %struct.vec2, %struct.vec2* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
