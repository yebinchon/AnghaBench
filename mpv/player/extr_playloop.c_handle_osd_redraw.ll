; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_osd_redraw.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_handle_osd_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { double, i64, double, %struct.TYPE_5__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@STATUS_PLAYING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPContext*)* @handle_osd_redraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_osd_redraw(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 3
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %11 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %10, i32 0, i32 3
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %9, %1
  br label %86

17:                                               ; preds = %9
  %18 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %17
  %23 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %24 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %23, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = fcmp olt double %25, 1.000000e-01
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %29 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @STATUS_PLAYING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %86

34:                                               ; preds = %27, %22
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %37 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %36, i32 0, i32 5
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %42 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %41, i32 0, i32 5
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %40, %35
  %49 = phi i1 [ false, %35 ], [ %47, %40 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = call double (...) @mp_time_sec()
  %55 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %56 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %55, i32 0, i32 2
  %57 = load double, double* %56, align 8
  %58 = fsub double %54, %57
  %59 = fcmp olt double %58, 1.000000e-01
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %62 = call i32 @mp_set_timeout(%struct.MPContext* %61, double 1.000000e-01)
  br label %86

63:                                               ; preds = %53, %48
  %64 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %65 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @osd_query_and_reset_want_redraw(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %71 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %70, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i64 @vo_want_redraw(%struct.TYPE_5__* %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %69, %63
  %76 = phi i1 [ true, %63 ], [ %74, %69 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  br label %86

81:                                               ; preds = %75
  %82 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %83 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %82, i32 0, i32 3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = call i32 @vo_redraw(%struct.TYPE_5__* %84)
  br label %86

86:                                               ; preds = %81, %80, %60, %33, %16
  ret void
}

declare dso_local double @mp_time_sec(...) #1

declare dso_local i32 @mp_set_timeout(%struct.MPContext*, double) #1

declare dso_local i64 @osd_query_and_reset_want_redraw(i32) #1

declare dso_local i64 @vo_want_redraw(%struct.TYPE_5__*) #1

declare dso_local i32 @vo_redraw(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
