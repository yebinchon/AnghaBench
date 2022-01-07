; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_command.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_autoconvert.c_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_filter = type { %struct.priv* }
%struct.priv = type { double, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mp_filter_command = type { i64, double, i32 }

@MP_FILTER_COMMAND_SET_SPEED_RESAMPLE = common dso_local global i64 0, align 8
@MP_FILTER_COMMAND_IS_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_filter*, %struct.mp_filter_command*)* @command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @command(%struct.mp_filter* %0, %struct.mp_filter_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mp_filter*, align 8
  %5 = alloca %struct.mp_filter_command*, align 8
  %6 = alloca %struct.priv*, align 8
  store %struct.mp_filter* %0, %struct.mp_filter** %4, align 8
  store %struct.mp_filter_command* %1, %struct.mp_filter_command** %5, align 8
  %7 = load %struct.mp_filter*, %struct.mp_filter** %4, align 8
  %8 = getelementptr inbounds %struct.mp_filter, %struct.mp_filter* %7, i32 0, i32 0
  %9 = load %struct.priv*, %struct.priv** %8, align 8
  store %struct.priv* %9, %struct.priv** %6, align 8
  %10 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %11 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MP_FILTER_COMMAND_SET_SPEED_RESAMPLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %17 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = load %struct.priv*, %struct.priv** %6, align 8
  %20 = getelementptr inbounds %struct.priv, %struct.priv* %19, i32 0, i32 0
  store double %18, double* %20, align 8
  %21 = load %struct.priv*, %struct.priv** %6, align 8
  %22 = getelementptr inbounds %struct.priv, %struct.priv* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = fcmp une double %23, 1.000000e+00
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load %struct.priv*, %struct.priv** %6, align 8
  %27 = getelementptr inbounds %struct.priv, %struct.priv* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %15
  store i32 1, i32* %3, align 4
  br label %47

29:                                               ; preds = %2
  %30 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %31 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MP_FILTER_COMMAND_IS_ACTIVE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.priv*, %struct.priv** %6, align 8
  %37 = getelementptr inbounds %struct.priv, %struct.priv* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.mp_filter_command*, %struct.mp_filter_command** %5, align 8
  %45 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  store i32 1, i32* %3, align 4
  br label %47

46:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %35, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
