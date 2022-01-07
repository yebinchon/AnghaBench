; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_main.c_get_health_pkt.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_main.c_get_health_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)*, i32 (...)* }
%struct.anon = type <{ i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }>

@current_board = common dso_local global %struct.TYPE_2__* null, align 8
@ignition_can = common dso_local global i64 0, align 8
@controls_allowed = common dso_local global i8* null, align 8
@gas_interceptor_detected = common dso_local global i8* null, align 8
@can_send_errs = common dso_local global i32 0, align 4
@can_fwd_errs = common dso_local global i32 0, align 4
@gmlan_send_errs = common dso_local global i32 0, align 4
@car_harness_status = common dso_local global i8* null, align 8
@usb_power_mode = common dso_local global i8* null, align 8
@current_safety_mode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_health_pkt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.anon*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.anon*
  store %struct.anon* %5, %struct.anon** %3, align 8
  %6 = call i32 (...) @adc_get_voltage()
  %7 = load %struct.anon*, %struct.anon** %3, align 8
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (...)*, i32 (...)** %10, align 8
  %12 = call i32 (...) %11()
  %13 = load %struct.anon*, %struct.anon** %3, align 8
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_board, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (...)*, i64 (...)** %16, align 8
  %18 = call i64 (...) %17()
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.anon*, %struct.anon** %3, align 8
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 1
  %22 = load i64, i64* @ignition_can, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.anon*, %struct.anon** %3, align 8
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 1
  %26 = load i8*, i8** @controls_allowed, align 8
  %27 = load %struct.anon*, %struct.anon** %3, align 8
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 7
  store i8* %26, i8** %28, align 1
  %29 = load i8*, i8** @gas_interceptor_detected, align 8
  %30 = load %struct.anon*, %struct.anon** %3, align 8
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 1
  %32 = load i32, i32* @can_send_errs, align 4
  %33 = load %struct.anon*, %struct.anon** %3, align 8
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 1
  %35 = load i32, i32* @can_fwd_errs, align 4
  %36 = load %struct.anon*, %struct.anon** %3, align 8
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 1
  %38 = load i32, i32* @gmlan_send_errs, align 4
  %39 = load %struct.anon*, %struct.anon** %3, align 8
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 1
  %41 = load i8*, i8** @car_harness_status, align 8
  %42 = load %struct.anon*, %struct.anon** %3, align 8
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 9
  store i8* %41, i8** %43, align 1
  %44 = load i8*, i8** @usb_power_mode, align 8
  %45 = load %struct.anon*, %struct.anon** %3, align 8
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 10
  store i8* %44, i8** %46, align 1
  %47 = load i64, i64* @current_safety_mode, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.anon*, %struct.anon** %3, align 8
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 11
  store i8* %48, i8** %50, align 1
  ret i32 76
}

declare dso_local i32 @adc_get_voltage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
