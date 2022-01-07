; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_hook_direct.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_hook_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"hook_direct: could not convert string\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"hook_direct: could not make absolute path\00", align 1
@PROCESS_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"hook_direct: could not open process: %s (%lu)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"hook_direct: inject failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*, i8*)* @hook_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hook_direct(%struct.game_capture* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.game_capture*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.game_capture* %0, %struct.game_capture** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @MAX_PATH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @os_utf8_to_wcs_ptr(i8* %17, i32 0, i32** %8)
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %59

23:                                               ; preds = %2
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = call i32* @_wfullpath(i32* %16, i32* %24, i32 %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @bfree(i32* %27)
  %29 = load i32*, i32** %9, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %59

33:                                               ; preds = %23
  %34 = load i32, i32* @PROCESS_ALL_ACCESS, align 4
  %35 = load %struct.game_capture*, %struct.game_capture** %4, align 8
  %36 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @open_process(i32 %34, i32 0, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %33
  %42 = load %struct.game_capture*, %struct.game_capture** %4, align 8
  %43 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (...) @GetLastError()
  %47 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %46)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %59

48:                                               ; preds = %33
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @inject_library(i32 %49, i32* %16)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @CloseHandle(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %59

58:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %58, %55, %41, %31, %21
  %60 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_utf8_to_wcs_ptr(i8*, i32, i32**) #2

declare dso_local i32 @warn(i8*, ...) #2

declare dso_local i32* @_wfullpath(i32*, i32*, i32) #2

declare dso_local i32 @bfree(i32*) #2

declare dso_local i32 @open_process(i32, i32, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @inject_library(i32, i32*) #2

declare dso_local i32 @CloseHandle(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
