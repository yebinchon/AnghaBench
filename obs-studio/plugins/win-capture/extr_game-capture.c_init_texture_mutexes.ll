; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_texture_mutexes.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_texture_mutexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, i8** }

@MUTEX_TEXTURE1 = common dso_local global i32 0, align 4
@MUTEX_TEXTURE2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"hook not loaded yet, retrying..\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to open texture mutexes: %lu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*)* @init_texture_mutexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_texture_mutexes(%struct.game_capture* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.game_capture*, align 8
  %4 = alloca i32, align 4
  store %struct.game_capture* %0, %struct.game_capture** %3, align 8
  %5 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %6 = load i32, i32* @MUTEX_TEXTURE1, align 4
  %7 = call i8* @open_mutex_gc(%struct.game_capture* %5, i32 %6)
  %8 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %9 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %8, i32 0, i32 1
  %10 = load i8**, i8*** %9, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  store i8* %7, i8** %11, align 8
  %12 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %13 = load i32, i32* @MUTEX_TEXTURE2, align 4
  %14 = call i8* @open_mutex_gc(%struct.game_capture* %12, i32 %13)
  %15 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %16 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  store i8* %14, i8** %18, align 8
  %19 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %20 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %19, i32 0, i32 1
  %21 = load i8**, i8*** %20, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %27 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %25, %1
  %33 = call i32 (...) @GetLastError()
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %38 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %43 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %42, i32 0, i32 0
  store i32 2, i32* %43, align 8
  %44 = call i32 @info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %41, %36
  br label %49

46:                                               ; preds = %32
  %47 = call i32 (...) @GetLastError()
  %48 = call i32 @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %46, %45
  store i32 0, i32* %2, align 4
  br label %51

50:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i8* @open_mutex_gc(%struct.game_capture*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
