; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mark_seek.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mark_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPContext = type { %struct.command_ctx* }
%struct.command_ctx = type { double, i64 }

@MP_NOPTS_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_seek(%struct.MPContext* %0) #0 {
  %2 = alloca %struct.MPContext*, align 8
  %3 = alloca %struct.command_ctx*, align 8
  %4 = alloca double, align 8
  store %struct.MPContext* %0, %struct.MPContext** %2, align 8
  %5 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %6 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %5, i32 0, i32 0
  %7 = load %struct.command_ctx*, %struct.command_ctx** %6, align 8
  store %struct.command_ctx* %7, %struct.command_ctx** %3, align 8
  %8 = call double (...) @mp_time_sec()
  store double %8, double* %4, align 8
  %9 = load double, double* %4, align 8
  %10 = load %struct.command_ctx*, %struct.command_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %10, i32 0, i32 0
  %12 = load double, double* %11, align 8
  %13 = fadd double %12, 2.000000e+00
  %14 = fcmp ogt double %9, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.command_ctx*, %struct.command_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15, %1
  %22 = load %struct.MPContext*, %struct.MPContext** %2, align 8
  %23 = call i64 @get_current_time(%struct.MPContext* %22)
  %24 = load %struct.command_ctx*, %struct.command_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  br label %26

26:                                               ; preds = %21, %15
  %27 = load double, double* %4, align 8
  %28 = load %struct.command_ctx*, %struct.command_ctx** %3, align 8
  %29 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %28, i32 0, i32 0
  store double %27, double* %29, align 8
  ret void
}

declare dso_local double @mp_time_sec(...) #1

declare dso_local i64 @get_current_time(%struct.MPContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
