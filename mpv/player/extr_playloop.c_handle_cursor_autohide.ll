; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_cursor_autohide.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_cursor_autohide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { i32, i32, double, i32, %struct.vo*, %struct.MPOpts* }
%struct.vo = type { i32 }
%struct.MPOpts = type { double, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@VOCTRL_SET_CURSOR_VISIBILITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @handle_cursor_autohide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cursor_autohide(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.MPOpts*, align 8
  %4 = alloca %struct.vo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %8 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %9 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %8, i32 0, i32 5
  %10 = load %struct.MPOpts*, %struct.MPOpts** %9, align 8
  store %struct.MPOpts* %10, %struct.MPOpts** %3, align 8
  %11 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %12 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %11, i32 0, i32 4
  %13 = load %struct.vo*, %struct.vo** %12, align 8
  store %struct.vo* %13, %struct.vo** %4, align 8
  %14 = load %struct.vo*, %struct.vo** %4, align 8
  %15 = icmp ne %struct.vo* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %97

17:                                               ; preds = %1
  %18 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = call double (...) @mp_time_sec()
  store double %21, double* %6, align 8
  %22 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %23 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mp_input_get_mouse_event_counter(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %27 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %17
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %34 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load double, double* %6, align 8
  %36 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %37 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %36, i32 0, i32 0
  %38 = load double, double* %37, align 8
  %39 = fdiv double %38, 1.000000e+03
  %40 = fadd double %35, %39
  %41 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %42 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %41, i32 0, i32 2
  store double %40, double* %42, align 8
  store i32 1, i32* %5, align 4
  br label %43

43:                                               ; preds = %31, %17
  %44 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %45 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %44, i32 0, i32 2
  %46 = load double, double* %45, align 8
  %47 = load double, double* %6, align 8
  %48 = fcmp ogt double %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %51 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %52 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %51, i32 0, i32 2
  %53 = load double, double* %52, align 8
  %54 = load double, double* %6, align 8
  %55 = fsub double %53, %54
  %56 = call i32 @mp_set_timeout(%struct.MPContext* %50, double %55)
  br label %58

57:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %49
  %59 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %60 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %59, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = fcmp oeq double %61, -1.000000e+00
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %58
  %65 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %66 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %65, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = fcmp oeq double %67, -2.000000e+00
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %64
  %71 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %72 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.MPOpts*, %struct.MPOpts** %3, align 8
  %77 = getelementptr inbounds %struct.MPOpts, %struct.MPOpts* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %75, %70
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %86 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load %struct.vo*, %struct.vo** %4, align 8
  %91 = load i32, i32* @VOCTRL_SET_CURSOR_VISIBILITY, align 4
  %92 = call i32 @vo_control(%struct.vo* %90, i32 %91, i32* %5)
  br label %93

93:                                               ; preds = %89, %83
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %96 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %16
  ret void
}

declare dso_local double @mp_time_sec(...) #1

declare dso_local i32 @mp_input_get_mouse_event_counter(i32) #1

declare dso_local i32 @mp_set_timeout(%struct.MPContext*, double) #1

declare dso_local i32 @vo_control(%struct.vo*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
