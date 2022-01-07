; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_set_speed_any.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_set_speed_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_user_filter = type { i32 }
%struct.mp_filter_command = type { double, i32 }

@MP_FILTER_COMMAND_SET_SPEED_RESAMPLE = common dso_local global i32 0, align 4
@MP_FILTER_COMMAND_SET_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_user_filter**, i32, i32, double*)* @set_speed_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_speed_any(%struct.mp_user_filter** %0, i32 %1, i32 %2, double* %3) #0 {
  %5 = alloca %struct.mp_user_filter**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mp_filter_command, align 8
  store %struct.mp_user_filter** %0, %struct.mp_user_filter*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %9, align 4
  br label %13

13:                                               ; preds = %44, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %47

16:                                               ; preds = %13
  %17 = load double*, double** %8, align 8
  %18 = load double, double* %17, align 8
  %19 = call i32 @assert(double %18)
  %20 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %10, i32 0, i32 0
  %21 = load double*, double** %8, align 8
  %22 = load double, double* %21, align 8
  store double %22, double* %20, align 8
  %23 = getelementptr inbounds %struct.mp_filter_command, %struct.mp_filter_command* %10, i32 0, i32 1
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @MP_FILTER_COMMAND_SET_SPEED_RESAMPLE, align 4
  br label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @MP_FILTER_COMMAND_SET_SPEED, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %23, align 8
  %32 = load %struct.mp_user_filter**, %struct.mp_user_filter*** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.mp_user_filter*, %struct.mp_user_filter** %32, i64 %34
  %36 = load %struct.mp_user_filter*, %struct.mp_user_filter** %35, align 8
  %37 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @mp_filter_command(i32 %38, %struct.mp_filter_command* %10)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30
  %42 = load double*, double** %8, align 8
  store double 1.000000e+00, double* %42, align 8
  br label %43

43:                                               ; preds = %41, %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  br label %13

47:                                               ; preds = %13
  ret void
}

declare dso_local i32 @assert(double) #1

declare dso_local i64 @mp_filter_command(i32, %struct.mp_filter_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
