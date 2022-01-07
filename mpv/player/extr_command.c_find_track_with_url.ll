; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_find_track_with_url.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_find_track_with_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.track = type { i32, i32, i64 }
%struct.MPContext = type { i32, %struct.track** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.track* (%struct.MPContext*, i32, i8*)* @find_track_with_url to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.track* @find_track_with_url(%struct.MPContext* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.track*, align 8
  %5 = alloca %struct.MPContext*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.track*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %47, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %13 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %10
  %17 = load %struct.MPContext*, %struct.MPContext** %5, align 8
  %18 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %17, i32 0, i32 1
  %19 = load %struct.track**, %struct.track*** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.track*, %struct.track** %19, i64 %21
  %23 = load %struct.track*, %struct.track** %22, align 8
  store %struct.track* %23, %struct.track** %9, align 8
  %24 = load %struct.track*, %struct.track** %9, align 8
  %25 = icmp ne %struct.track* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %16
  %27 = load %struct.track*, %struct.track** %9, align 8
  %28 = getelementptr inbounds %struct.track, %struct.track* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %26
  %33 = load %struct.track*, %struct.track** %9, align 8
  %34 = getelementptr inbounds %struct.track, %struct.track* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.track*, %struct.track** %9, align 8
  %39 = getelementptr inbounds %struct.track, %struct.track* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strcmp(i32 %40, i8* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load %struct.track*, %struct.track** %9, align 8
  store %struct.track* %45, %struct.track** %4, align 8
  br label %51

46:                                               ; preds = %37, %32, %26, %16
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %10

50:                                               ; preds = %10
  store %struct.track* null, %struct.track** %4, align 8
  br label %51

51:                                               ; preds = %50, %44
  %52 = load %struct.track*, %struct.track** %4, align 8
  ret %struct.track* %52
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
