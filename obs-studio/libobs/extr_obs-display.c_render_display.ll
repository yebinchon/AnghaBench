; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-display.c_render_display.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-display.c_render_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_display = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, %struct.draw_callback* }
%struct.draw_callback = type { i32, i32 (i32, i32, i32)* }

@GS_DEBUG_COLOR_DISPLAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"obs_display\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @render_display(%struct.obs_display* %0) #0 {
  %2 = alloca %struct.obs_display*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.draw_callback*, align 8
  store %struct.obs_display* %0, %struct.obs_display** %2, align 8
  %8 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %9 = icmp ne %struct.obs_display* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %12 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %81

16:                                               ; preds = %10
  %17 = load i32, i32* @GS_DEBUG_COLOR_DISPLAY, align 4
  %18 = call i32 @GS_DEBUG_MARKER_BEGIN(i32 %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %20 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %19, i32 0, i32 3
  %21 = call i32 @pthread_mutex_lock(i32* %20)
  %22 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %23 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  %25 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %26 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %4, align 4
  %28 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %29 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %35 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %16
  %37 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %38 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %37, i32 0, i32 3
  %39 = call i32 @pthread_mutex_unlock(i32* %38)
  %40 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @render_display_begin(%struct.obs_display* %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %46 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %45, i32 0, i32 1
  %47 = call i32 @pthread_mutex_lock(i32* %46)
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %71, %36
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %51 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %49, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %48
  %56 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %57 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load %struct.draw_callback*, %struct.draw_callback** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.draw_callback, %struct.draw_callback* %59, i64 %60
  store %struct.draw_callback* %61, %struct.draw_callback** %7, align 8
  %62 = load %struct.draw_callback*, %struct.draw_callback** %7, align 8
  %63 = getelementptr inbounds %struct.draw_callback, %struct.draw_callback* %62, i32 0, i32 1
  %64 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %63, align 8
  %65 = load %struct.draw_callback*, %struct.draw_callback** %7, align 8
  %66 = getelementptr inbounds %struct.draw_callback, %struct.draw_callback* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 %64(i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %55
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %6, align 8
  br label %48

74:                                               ; preds = %48
  %75 = load %struct.obs_display*, %struct.obs_display** %2, align 8
  %76 = getelementptr inbounds %struct.obs_display, %struct.obs_display* %75, i32 0, i32 1
  %77 = call i32 @pthread_mutex_unlock(i32* %76)
  %78 = call i32 (...) @render_display_end()
  %79 = call i32 (...) @GS_DEBUG_MARKER_END()
  %80 = call i32 (...) @gs_present()
  br label %81

81:                                               ; preds = %74, %15
  ret void
}

declare dso_local i32 @GS_DEBUG_MARKER_BEGIN(i32, i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @render_display_begin(%struct.obs_display*, i32, i32, i32) #1

declare dso_local i32 @render_display_end(...) #1

declare dso_local i32 @GS_DEBUG_MARKER_END(...) #1

declare dso_local i32 @gs_present(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
