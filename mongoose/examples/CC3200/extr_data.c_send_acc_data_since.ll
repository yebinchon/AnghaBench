; ModuleID = '/home/carl/AnghaBench/mongoose/examples/CC3200/extr_data.c_send_acc_data_since.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/CC3200/extr_data.c_send_acc_data_since.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.bm222_ctx = type { i32, %struct.bm222_sample* }
%struct.bm222_sample = type { double }

@BM222_NUM_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.mg_connection*, %struct.bm222_ctx*, double)* @send_acc_data_since to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @send_acc_data_since(%struct.mg_connection* %0, %struct.bm222_ctx* %1, double %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca %struct.bm222_ctx*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca %struct.bm222_sample*, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store %struct.bm222_ctx* %1, %struct.bm222_ctx** %5, align 8
  store double %2, double* %6, align 8
  %11 = load %struct.bm222_ctx*, %struct.bm222_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.bm222_ctx, %struct.bm222_ctx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* @BM222_NUM_SAMPLES, align 4
  %16 = srem i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @BM222_NUM_SAMPLES, align 4
  store i32 %17, i32* %8, align 4
  store double 0.000000e+00, double* %9, align 8
  br label %18

18:                                               ; preds = %41, %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load %struct.bm222_ctx*, %struct.bm222_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.bm222_ctx, %struct.bm222_ctx* %22, i32 0, i32 1
  %24 = load %struct.bm222_sample*, %struct.bm222_sample** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.bm222_sample, %struct.bm222_sample* %24, i64 %26
  store %struct.bm222_sample* %27, %struct.bm222_sample** %10, align 8
  %28 = load %struct.bm222_sample*, %struct.bm222_sample** %10, align 8
  %29 = getelementptr inbounds %struct.bm222_sample, %struct.bm222_sample* %28, i32 0, i32 0
  %30 = load double, double* %29, align 8
  %31 = load double, double* %6, align 8
  %32 = fcmp ole double %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %41

34:                                               ; preds = %21
  %35 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %36 = load %struct.bm222_sample*, %struct.bm222_sample** %10, align 8
  %37 = call i32 @send_acc_sample(%struct.mg_connection* %35, %struct.bm222_sample* %36)
  %38 = load %struct.bm222_sample*, %struct.bm222_sample** %10, align 8
  %39 = getelementptr inbounds %struct.bm222_sample, %struct.bm222_sample* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  store double %40, double* %9, align 8
  br label %41

41:                                               ; preds = %34, %33
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  %44 = load i32, i32* @BM222_NUM_SAMPLES, align 4
  %45 = srem i32 %43, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %8, align 4
  br label %18

48:                                               ; preds = %18
  %49 = load double, double* %9, align 8
  ret double %49
}

declare dso_local i32 @send_acc_sample(%struct.mg_connection*, %struct.bm222_sample*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
