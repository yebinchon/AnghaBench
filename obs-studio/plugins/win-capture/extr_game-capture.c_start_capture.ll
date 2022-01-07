; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_start_capture.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_start_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"Starting capture\00", align 1
@CAPTURE_TYPE_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"memory capture successful\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"shared texture capture successful\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*)* @start_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_capture(%struct.game_capture* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.game_capture*, align 8
  store %struct.game_capture* %0, %struct.game_capture** %3, align 8
  %4 = call i32 @debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %6 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CAPTURE_TYPE_MEMORY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %14 = call i32 @init_shmem_capture(%struct.game_capture* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %27

17:                                               ; preds = %12
  %18 = call i32 @info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %21 = call i32 @init_shtex_capture(%struct.game_capture* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %27

24:                                               ; preds = %19
  %25 = call i32 @info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %17
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23, %16
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @init_shmem_capture(%struct.game_capture*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @init_shtex_capture(%struct.game_capture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
