; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_test_fsync/extr_pg_test_fsync.c_print_elapse.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_test_fsync/extr_pg_test_fsync.c_print_elapse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { double, double }

@USECS_SEC = common dso_local global double 0.000000e+00, align 8
@OPS_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double, double, double, double, i32)* @print_elapse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_elapse(double %0, double %1, double %2, double %3, i32 %4) #0 {
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = bitcast %struct.timeval* %6 to { double, double }*
  %13 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  store double %0, double* %13, align 8
  %14 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  store double %1, double* %14, align 8
  %15 = bitcast %struct.timeval* %7 to { double, double }*
  %16 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 0
  store double %2, double* %16, align 8
  %17 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 1
  store double %3, double* %17, align 8
  store i32 %4, i32* %8, align 4
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %19 = load double, double* %18, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %21 = load double, double* %20, align 8
  %22 = fsub double %19, %21
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %24 = load double, double* %23, align 8
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = fsub double %24, %26
  %28 = fmul double %27, 0x3EB0C6F7A0B5ED8D
  %29 = fadd double %22, %28
  store double %29, double* %9, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sitofp i32 %30 to double
  %32 = load double, double* %9, align 8
  %33 = fdiv double %31, %32
  store double %33, double* %10, align 8
  %34 = load double, double* %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sitofp i32 %35 to double
  %37 = fdiv double %34, %36
  %38 = load double, double* @USECS_SEC, align 8
  %39 = fmul double %37, %38
  store double %39, double* %11, align 8
  %40 = load i32, i32* @OPS_FORMAT, align 4
  %41 = call i8* @_(i32 %40)
  %42 = load double, double* %10, align 8
  %43 = load double, double* %11, align 8
  %44 = call i32 @printf(i8* %41, double %42, double %43)
  ret void
}

declare dso_local i32 @printf(i8*, double, double) #1

declare dso_local i8* @_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
