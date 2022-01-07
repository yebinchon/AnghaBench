; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_game_capture_render.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_game_capture_render.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }

@OBS_EFFECT_DEFAULT = common dso_local global i32 0, align 4
@OBS_EFFECT_OPAQUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Draw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @game_capture_render to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @game_capture_render(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.game_capture*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.game_capture*
  store %struct.game_capture* %7, %struct.game_capture** %5, align 8
  %8 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %9 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %14 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %93

18:                                               ; preds = %12
  %19 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %20 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @OBS_EFFECT_DEFAULT, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @OBS_EFFECT_OPAQUE, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  %30 = call i32* @obs_get_base_effect(i32 %29)
  store i32* %30, i32** %4, align 8
  br label %31

31:                                               ; preds = %64, %28
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @gs_effect_loop(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %37 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %40 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @obs_source_draw(i32 %38, i32 0, i32 0, i32 0, i32 0, i32 %43)
  %45 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %46 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %35
  %51 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %52 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %58 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %63 = call i32 @game_capture_render_cursor(%struct.game_capture* %62)
  br label %64

64:                                               ; preds = %61, %56, %50, %35
  br label %31

65:                                               ; preds = %31
  %66 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %67 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %65
  %72 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %73 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %79 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %77
  %83 = load i32, i32* @OBS_EFFECT_DEFAULT, align 4
  %84 = call i32* @obs_get_base_effect(i32 %83)
  store i32* %84, i32** %4, align 8
  br label %85

85:                                               ; preds = %89, %82
  %86 = load i32*, i32** %4, align 8
  %87 = call i64 @gs_effect_loop(i32* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %91 = call i32 @game_capture_render_cursor(%struct.game_capture* %90)
  br label %85

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %17, %92, %77, %71, %65
  ret void
}

declare dso_local i32* @obs_get_base_effect(i32) #1

declare dso_local i64 @gs_effect_loop(i32*, i8*) #1

declare dso_local i32 @obs_source_draw(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @game_capture_render_cursor(%struct.game_capture*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
