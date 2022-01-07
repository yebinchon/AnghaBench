; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_playloop.c_mp_set_timeout.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_playloop.c_mp_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { double, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_set_timeout(%struct.MPContext* %0, double %1) #0 {
  %3 = alloca %struct.MPContext*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store %struct.MPContext* %0, %struct.MPContext** %3, align 8
  store double %1, double* %4, align 8
  %6 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %7 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %6, i32 0, i32 0
  %8 = load double, double* %7, align 8
  %9 = load double, double* %4, align 8
  %10 = fcmp ogt double %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load double, double* %4, align 8
  %13 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %14 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %13, i32 0, i32 0
  store double %12, double* %14, align 8
  %15 = call i32 (...) @mp_time_us()
  %16 = load double, double* %4, align 8
  %17 = call i32 @mp_add_timeout(i32 %15, double %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.MPContext*, %struct.MPContext** %3, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @mp_dispatch_adjust_timeout(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @mp_add_timeout(i32, double) #1

declare dso_local i32 @mp_time_us(...) #1

declare dso_local i32 @mp_dispatch_adjust_timeout(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
