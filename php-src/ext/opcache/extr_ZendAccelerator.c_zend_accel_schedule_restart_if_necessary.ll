; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_ZendAccelerator.c_zend_accel_schedule_restart_if_necessary.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_ZendAccelerator.c_zend_accel_schedule_restart_if_necessary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double }

@wasted_shared_memory = common dso_local global i32 0, align 4
@accel_directives = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_accel_schedule_restart_if_necessary(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__, align 8
  %4 = alloca %struct.TYPE_2__, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @wasted_shared_memory, align 4
  %6 = call i64 @ZSMMG(i32 %5)
  %7 = sitofp i64 %6 to double
  %8 = load i32, i32* @accel_directives, align 4
  %9 = call { double, double } @ZCG(i32 %8)
  %10 = bitcast %struct.TYPE_2__* %3 to { double, double }*
  %11 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %12 = extractvalue { double, double } %9, 0
  store double %12, double* %11, align 8
  %13 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  %14 = extractvalue { double, double } %9, 1
  store double %14, double* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = fdiv double %7, %16
  %18 = load i32, i32* @accel_directives, align 4
  %19 = call { double, double } @ZCG(i32 %18)
  %20 = bitcast %struct.TYPE_2__* %4 to { double, double }*
  %21 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 0
  %22 = extractvalue { double, double } %19, 0
  store double %22, double* %21, align 8
  %23 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 1
  %24 = extractvalue { double, double } %19, 1
  store double %24, double* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = fcmp oge double %17, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @zend_accel_schedule_restart(i32 %29)
  br label %31

31:                                               ; preds = %28, %1
  ret void
}

declare dso_local i64 @ZSMMG(i32) #1

declare dso_local { double, double } @ZCG(i32) #1

declare dso_local i32 @zend_accel_schedule_restart(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
