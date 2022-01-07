; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_sub.c_get_order.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_sub.c_get_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.track*** }
%struct.track = type { i32 }

@NUM_PTRACKS = common dso_local global i32 0, align 4
@STREAM_SUB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, %struct.track*)* @get_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_order(%struct.MPContext* %0, %struct.track* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca %struct.track*, align 8
  %6 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %4, align 8
  store %struct.track* %1, %struct.track** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NUM_PTRACKS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 0
  %14 = load %struct.track***, %struct.track**** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.track**, %struct.track*** %14, i64 %16
  %18 = load %struct.track**, %struct.track*** %17, align 8
  %19 = load i64, i64* @STREAM_SUB, align 8
  %20 = getelementptr inbounds %struct.track*, %struct.track** %18, i64 %19
  %21 = load %struct.track*, %struct.track** %20, align 8
  %22 = load %struct.track*, %struct.track** %5, align 8
  %23 = icmp eq %struct.track* %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %11
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %31

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %7

30:                                               ; preds = %7
  store i32 -1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
