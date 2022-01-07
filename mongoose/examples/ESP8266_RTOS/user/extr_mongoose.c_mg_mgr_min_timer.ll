; ModuleID = '/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_mgr_min_timer.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/ESP8266_RTOS/user/extr_mongoose.c_mg_mgr_min_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_mgr = type { %struct.mg_connection* }
%struct.mg_connection = type { double, %struct.mg_connection* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @mg_mgr_min_timer(%struct.mg_mgr* %0) #0 {
  %2 = alloca %struct.mg_mgr*, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.mg_connection*, align 8
  store %struct.mg_mgr* %0, %struct.mg_mgr** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  %5 = load %struct.mg_mgr*, %struct.mg_mgr** %2, align 8
  %6 = getelementptr inbounds %struct.mg_mgr, %struct.mg_mgr* %5, i32 0, i32 0
  %7 = load %struct.mg_connection*, %struct.mg_connection** %6, align 8
  store %struct.mg_connection* %7, %struct.mg_connection** %4, align 8
  br label %8

8:                                                ; preds = %31, %1
  %9 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %10 = icmp ne %struct.mg_connection* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %13 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fcmp ole double %14, 0.000000e+00
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %31

17:                                               ; preds = %11
  %18 = load double, double* %3, align 8
  %19 = fcmp oeq double %18, 0.000000e+00
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %22 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = load double, double* %3, align 8
  %25 = fcmp olt double %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20, %17
  %27 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %28 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  store double %29, double* %3, align 8
  br label %30

30:                                               ; preds = %26, %20
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %33 = getelementptr inbounds %struct.mg_connection, %struct.mg_connection* %32, i32 0, i32 1
  %34 = load %struct.mg_connection*, %struct.mg_connection** %33, align 8
  store %struct.mg_connection* %34, %struct.mg_connection** %4, align 8
  br label %8

35:                                               ; preds = %8
  %36 = load double, double* %3, align 8
  ret double %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
