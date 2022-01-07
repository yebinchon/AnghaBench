; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_track_remove.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_cmd_track_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_cmd_ctx = type { i32, %struct.TYPE_4__*, i64, %struct.MPContext* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.MPContext = type { i64 }
%struct.track = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Track removed:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cmd_track_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_track_remove(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mp_cmd_ctx*, align 8
  %4 = alloca %struct.MPContext*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.track*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mp_cmd_ctx*
  store %struct.mp_cmd_ctx* %8, %struct.mp_cmd_ctx** %3, align 8
  %9 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %9, i32 0, i32 3
  %11 = load %struct.MPContext*, %struct.MPContext** %10, align 8
  store %struct.MPContext* %11, %struct.MPContext** %4, align 8
  %12 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i32*
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.track* @mp_track_by_tid(%struct.MPContext* %17, i32 %18, i32 %25)
  store %struct.track* %26, %struct.track** %6, align 8
  %27 = load %struct.track*, %struct.track** %6, align 8
  %28 = icmp ne %struct.track* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load %struct.mp_cmd_ctx*, %struct.mp_cmd_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.mp_cmd_ctx, %struct.mp_cmd_ctx* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %43

32:                                               ; preds = %1
  %33 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %34 = load %struct.track*, %struct.track** %6, align 8
  %35 = call i32 @mp_remove_track(%struct.MPContext* %33, %struct.track* %34)
  %36 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %37 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.MPContext*, %struct.MPContext** %4, align 8
  %42 = call i32 @print_track_list(%struct.MPContext* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %29, %40, %32
  ret void
}

declare dso_local %struct.track* @mp_track_by_tid(%struct.MPContext*, i32, i32) #1

declare dso_local i32 @mp_remove_track(%struct.MPContext*, %struct.track*) #1

declare dso_local i32 @print_track_list(%struct.MPContext*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
