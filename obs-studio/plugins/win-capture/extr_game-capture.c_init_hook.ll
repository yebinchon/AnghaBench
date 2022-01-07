; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_hook.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_init_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, i64, i32*, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dstr = type { i32, i32 }

@CAPTURE_MODE_ANY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"attempting to hook fullscreen process: %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"attempting to hook process: %s\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"cannot capture %s due to being blacklisted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.game_capture*)* @init_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hook(%struct.game_capture* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.game_capture*, align 8
  %4 = alloca %struct.dstr, align 4
  %5 = alloca i32, align 4
  store %struct.game_capture* %0, %struct.game_capture** %3, align 8
  %6 = bitcast %struct.dstr* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  %7 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %8 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CAPTURE_MODE_ANY, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %15 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i64 @get_window_exe(%struct.dstr* %4, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %13
  br label %35

24:                                               ; preds = %1
  %25 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %26 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @get_window_exe(%struct.dstr* %4, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %24
  br label %35

35:                                               ; preds = %34, %23
  %36 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @is_blacklisted_exe(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.dstr, %struct.dstr* %4, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %35
  %46 = call i32 @dstr_free(%struct.dstr* %4)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %111

50:                                               ; preds = %45
  %51 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %52 = call i64 @target_suspended(%struct.game_capture* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %111

55:                                               ; preds = %50
  %56 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %57 = call i32 @open_target_process(%struct.game_capture* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %111

60:                                               ; preds = %55
  %61 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %62 = call i32 @init_keepalive(%struct.game_capture* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %111

65:                                               ; preds = %60
  %66 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %67 = call i32 @init_pipe(%struct.game_capture* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %111

70:                                               ; preds = %65
  %71 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %72 = call i32 @attempt_existing_hook(%struct.game_capture* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %76 = call i32 @inject_hook(%struct.game_capture* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %111

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %70
  %81 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %82 = call i32 @init_texture_mutexes(%struct.game_capture* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %111

85:                                               ; preds = %80
  %86 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %87 = call i32 @init_hook_info(%struct.game_capture* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %111

90:                                               ; preds = %85
  %91 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %92 = call i32 @init_events(%struct.game_capture* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store i32 0, i32* %2, align 4
  br label %111

95:                                               ; preds = %90
  %96 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %97 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @SetEvent(i32 %98)
  %100 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %101 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %104 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %103, i32 0, i32 3
  store i32* %102, i32** %104, align 8
  %105 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %106 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %105, i32 0, i32 2
  store i32* null, i32** %106, align 8
  %107 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %108 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.game_capture*, %struct.game_capture** %3, align 8
  %110 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  store i32 1, i32* %2, align 4
  br label %111

111:                                              ; preds = %95, %94, %89, %84, %78, %69, %64, %59, %54, %49
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @get_window_exe(%struct.dstr*, i32*) #2

declare dso_local i32 @info(i8*, i32) #2

declare dso_local i32 @is_blacklisted_exe(i32) #2

declare dso_local i32 @dstr_free(%struct.dstr*) #2

declare dso_local i64 @target_suspended(%struct.game_capture*) #2

declare dso_local i32 @open_target_process(%struct.game_capture*) #2

declare dso_local i32 @init_keepalive(%struct.game_capture*) #2

declare dso_local i32 @init_pipe(%struct.game_capture*) #2

declare dso_local i32 @attempt_existing_hook(%struct.game_capture*) #2

declare dso_local i32 @inject_hook(%struct.game_capture*) #2

declare dso_local i32 @init_texture_mutexes(%struct.game_capture*) #2

declare dso_local i32 @init_hook_info(%struct.game_capture*) #2

declare dso_local i32 @init_events(%struct.game_capture*) #2

declare dso_local i32 @SetEvent(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
