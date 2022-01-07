; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_track_by_tid.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_mp_track_by_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.track = type { i32, i32 }
%struct.MPContext = type { i32, %struct.track**, %struct.track*** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.track* @mp_track_by_tid(%struct.MPContext* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.track*, align 8
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.track*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 2
  %15 = load %struct.track***, %struct.track**** %14, align 8
  %16 = getelementptr inbounds %struct.track**, %struct.track*** %15, i64 0
  %17 = load %struct.track**, %struct.track*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.track*, %struct.track** %17, i64 %19
  %21 = load %struct.track*, %struct.track** %20, align 8
  store %struct.track* %21, %struct.track** %4, align 8
  br label %55

22:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %51, %22
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %26 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %31 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %30, i32 0, i32 1
  %32 = load %struct.track**, %struct.track*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.track*, %struct.track** %32, i64 %34
  %36 = load %struct.track*, %struct.track** %35, align 8
  store %struct.track* %36, %struct.track** %9, align 8
  %37 = load %struct.track*, %struct.track** %9, align 8
  %38 = getelementptr inbounds %struct.track, %struct.track* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %29
  %43 = load %struct.track*, %struct.track** %9, align 8
  %44 = getelementptr inbounds %struct.track, %struct.track* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load %struct.track*, %struct.track** %9, align 8
  store %struct.track* %49, %struct.track** %4, align 8
  br label %55

50:                                               ; preds = %42, %29
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %23

54:                                               ; preds = %23
  store %struct.track* null, %struct.track** %4, align 8
  br label %55

55:                                               ; preds = %54, %48, %12
  %56 = load %struct.track*, %struct.track** %4, align 8
  ret %struct.track* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
