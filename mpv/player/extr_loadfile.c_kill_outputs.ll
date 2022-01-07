; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_loadfile.c_kill_outputs.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_loadfile.c_kill_outputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32 }
%struct.track = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"deselecting track %d for lavfi-complex option\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*, %struct.track*)* @kill_outputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_outputs(%struct.MPContext* %0, %struct.track* %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca %struct.track*, align 8
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store %struct.track* %1, %struct.track** %4, align 8
  %5 = load %struct.track*, %struct.track** %4, align 8
  %6 = getelementptr inbounds %struct.track, %struct.track* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.track*, %struct.track** %4, align 8
  %11 = getelementptr inbounds %struct.track, %struct.track* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9, %2
  %15 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %16 = load %struct.track*, %struct.track** %4, align 8
  %17 = getelementptr inbounds %struct.track, %struct.track* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @MP_VERBOSE(%struct.MPContext* %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %21 = load %struct.track*, %struct.track** %4, align 8
  %22 = getelementptr inbounds %struct.track, %struct.track* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @mp_switch_track(%struct.MPContext* %20, i32 %23, i32* null, i32 0)
  br label %25

25:                                               ; preds = %14, %9
  %26 = load %struct.track*, %struct.track** %4, align 8
  %27 = getelementptr inbounds %struct.track, %struct.track* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.track*, %struct.track** %4, align 8
  %32 = getelementptr inbounds %struct.track, %struct.track* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %25
  %36 = phi i1 [ true, %25 ], [ %34, %30 ]
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  ret void
}

declare dso_local i32 @MP_VERBOSE(%struct.MPContext*, i8*, i32) #1

declare dso_local i32 @mp_switch_track(%struct.MPContext*, i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
