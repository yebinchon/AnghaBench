; ModuleID = '/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_mp_output_get_measured_total_delay.c'
source_filename = "/home/carl/AnghaBench/mpv/filters/extr_f_output_chain.c_mp_output_get_measured_total_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_output_chain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.chain* }
%struct.chain = type { i32, %struct.mp_user_filter** }
%struct.mp_user_filter = type { i64, i64 }

@MP_NOPTS_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @mp_output_get_measured_total_delay(%struct.mp_output_chain* %0) #0 {
  %2 = alloca %struct.mp_output_chain*, align 8
  %3 = alloca %struct.chain*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mp_user_filter*, align 8
  store %struct.mp_output_chain* %0, %struct.mp_output_chain** %2, align 8
  %7 = load %struct.mp_output_chain*, %struct.mp_output_chain** %2, align 8
  %8 = getelementptr inbounds %struct.mp_output_chain, %struct.mp_output_chain* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.chain*, %struct.chain** %10, align 8
  store %struct.chain* %11, %struct.chain** %3, align 8
  store double 0.000000e+00, double* %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %49, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.chain*, %struct.chain** %3, align 8
  %15 = getelementptr inbounds %struct.chain, %struct.chain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %52

18:                                               ; preds = %12
  %19 = load %struct.chain*, %struct.chain** %3, align 8
  %20 = getelementptr inbounds %struct.chain, %struct.chain* %19, i32 0, i32 1
  %21 = load %struct.mp_user_filter**, %struct.mp_user_filter*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mp_user_filter*, %struct.mp_user_filter** %21, i64 %23
  %25 = load %struct.mp_user_filter*, %struct.mp_user_filter** %24, align 8
  store %struct.mp_user_filter* %25, %struct.mp_user_filter** %6, align 8
  %26 = load %struct.mp_user_filter*, %struct.mp_user_filter** %6, align 8
  %27 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %18
  %32 = load %struct.mp_user_filter*, %struct.mp_user_filter** %6, align 8
  %33 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MP_NOPTS_VALUE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.mp_user_filter*, %struct.mp_user_filter** %6, align 8
  %39 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mp_user_filter*, %struct.mp_user_filter** %6, align 8
  %42 = getelementptr inbounds %struct.mp_user_filter, %struct.mp_user_filter* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = sitofp i64 %44 to double
  %46 = load double, double* %4, align 8
  %47 = fadd double %46, %45
  store double %47, double* %4, align 8
  br label %48

48:                                               ; preds = %37, %31, %18
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %12

52:                                               ; preds = %12
  %53 = load double, double* %4, align 8
  ret double %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
