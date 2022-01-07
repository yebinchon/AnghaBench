; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_end_pause.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-output.c_end_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pause_data = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pause_data*, i64)* @end_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_pause(%struct.pause_data* %0, i64 %1) #0 {
  %3 = alloca %struct.pause_data*, align 8
  %4 = alloca i64, align 8
  store %struct.pause_data* %0, %struct.pause_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.pause_data*, %struct.pause_data** %3, align 8
  %6 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.pause_data*, %struct.pause_data** %3, align 8
  %12 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load %struct.pause_data*, %struct.pause_data** %3, align 8
  %14 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.pause_data*, %struct.pause_data** %3, align 8
  %17 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %15, %18
  %20 = load %struct.pause_data*, %struct.pause_data** %3, align 8
  %21 = getelementptr inbounds %struct.pause_data, %struct.pause_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 8
  br label %26

26:                                               ; preds = %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
