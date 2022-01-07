; ModuleID = '/home/carl/AnghaBench/mongoose/examples/timers/extr_timers.c_ev_handler.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/timers/extr_timers.c_ev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_connection = type { i32 }
%struct.http_message = type { i32 }

@s_http_server_opts = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"timer event, current time: %.2lf\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mg_connection*, i32, i8*)* @ev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev_handler(%struct.mg_connection* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.mg_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.mg_connection* %0, %struct.mg_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %29 [
    i32 129, label %10
    i32 128, label %16
  ]

10:                                               ; preds = %3
  %11 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.http_message*
  %14 = load i32, i32* @s_http_server_opts, align 4
  %15 = call i32 @mg_serve_http(%struct.mg_connection* %11, %struct.http_message* %13, i32 %14)
  br label %29

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to double*
  %19 = load double, double* %18, align 8
  store double %19, double* %7, align 8
  %20 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %21 = call i32 @mg_set_timer(%struct.mg_connection* %20, double 0.000000e+00)
  %22 = sitofp i32 %21 to double
  %23 = fadd double %22, 5.000000e-01
  store double %23, double* %8, align 8
  %24 = load double, double* %7, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), double %24)
  %26 = load %struct.mg_connection*, %struct.mg_connection** %4, align 8
  %27 = load double, double* %8, align 8
  %28 = call i32 @mg_set_timer(%struct.mg_connection* %26, double %27)
  br label %29

29:                                               ; preds = %3, %16, %10
  ret void
}

declare dso_local i32 @mg_serve_http(%struct.mg_connection*, %struct.http_message*, i32) #1

declare dso_local i32 @mg_set_timer(%struct.mg_connection*, double) #1

declare dso_local i32 @printf(i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
