; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_inject_hook.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_inject_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"graphics-hook64.dll\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"inject-helper64.exe\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"graphics-hook32.dll\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"inject-helper32.exe\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"inject helper\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"graphics hook\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"using direct hook\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"using helper (%s hook)\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"compatibility\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"direct\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*)* @inject_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inject_hook(%struct.game_capture* %0) #0 {
  %2 = alloca %struct.game_capture*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.game_capture* %0, %struct.game_capture** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %9 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %13 = call i8* @obs_module_file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i8* %13, i8** %6, align 8
  br label %16

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  %15 = call i8* @obs_module_file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i8*, i8** %5, align 8
  %18 = call i8* @obs_module_file(i8* %17)
  store i8* %18, i8** %7, align 8
  %19 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @check_file_integrity(%struct.game_capture* %19, i8* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %60

24:                                               ; preds = %16
  %25 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @check_file_integrity(%struct.game_capture* %25, i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %60

30:                                               ; preds = %24
  %31 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %32 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %41 = call i64 @use_anticheat(%struct.game_capture* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %45 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @hook_direct(%struct.game_capture* %45, i8* %46)
  store i32 %47, i32* %4, align 4
  br label %59

48:                                               ; preds = %39, %30
  %49 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %50 = call i64 @use_anticheat(%struct.game_capture* %49)
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)
  %54 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %53)
  %55 = load %struct.game_capture*, %struct.game_capture** %2, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @create_inject_process(%struct.game_capture* %55, i8* %56, i8* %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %48, %43
  br label %60

60:                                               ; preds = %59, %29, %23
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @bfree(i8* %61)
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @bfree(i8* %63)
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i8* @obs_module_file(i8*) #1

declare dso_local i32 @check_file_integrity(%struct.game_capture*, i8*, i8*) #1

declare dso_local i64 @use_anticheat(%struct.game_capture*) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @hook_direct(%struct.game_capture*, i8*) #1

declare dso_local i32 @create_inject_process(%struct.game_capture*, i8*, i8*) #1

declare dso_local i32 @bfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
