; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_duplicate_track.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_duplicate_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.track*** }
%struct.track = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.MPContext*, i32, i32, %struct.track*)* @duplicate_track to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @duplicate_track(%struct.MPContext* %0, i32 %1, i32 %2, %struct.track* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.MPContext*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.track*, align 8
  %10 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.track* %3, %struct.track** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %31, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %11
  %16 = load %struct.MPContext*, %struct.MPContext** %6, align 8
  %17 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %16, i32 0, i32 0
  %18 = load %struct.track***, %struct.track**** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.track**, %struct.track*** %18, i64 %20
  %22 = load %struct.track**, %struct.track*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.track*, %struct.track** %22, i64 %24
  %26 = load %struct.track*, %struct.track** %25, align 8
  %27 = load %struct.track*, %struct.track** %9, align 8
  %28 = icmp eq %struct.track* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  store i32 1, i32* %5, align 4
  br label %35

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %11

34:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
