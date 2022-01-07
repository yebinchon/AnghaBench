; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_cc3200_hal.c_mp_hal_stdout_tx_strn.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_cc3200_hal.c_mp_hal_stdout_tx_strn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@os_term_dup_obj = common dso_local global i32 0, align 4
@pyb_uart_type = common dso_local global i32 0, align 4
@mp_type_str = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_hal_stdout_tx_strn(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @os_term_dup_obj, align 4
  %6 = call %struct.TYPE_2__* @MP_STATE_PORT(i32 %5)
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %39

8:                                                ; preds = %2
  %9 = load i32, i32* @os_term_dup_obj, align 4
  %10 = call %struct.TYPE_2__* @MP_STATE_PORT(i32 %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @mp_obj_is_type(i32 %12, i32* @pyb_uart_type)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load i32, i32* @os_term_dup_obj, align 4
  %17 = call %struct.TYPE_2__* @MP_STATE_PORT(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @uart_tx_strn(i32 %19, i8* %20, i64 %21)
  br label %38

23:                                               ; preds = %8
  %24 = load i8*, i8** %3, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @mp_obj_new_str_of_type(i32* @mp_type_str, i32* %25, i64 %26)
  %28 = load i32, i32* @os_term_dup_obj, align 4
  %29 = call %struct.TYPE_2__* @MP_STATE_PORT(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* @os_term_dup_obj, align 4
  %34 = call %struct.TYPE_2__* @MP_STATE_PORT(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @mp_call_method_n_kw(i32 1, i32 0, i32* %36)
  br label %38

38:                                               ; preds = %23, %15
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i8*, i8** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @telnet_tx_strn(i8* %40, i64 %41)
  ret void
}

declare dso_local %struct.TYPE_2__* @MP_STATE_PORT(i32) #1

declare dso_local i64 @mp_obj_is_type(i32, i32*) #1

declare dso_local i32 @uart_tx_strn(i32, i8*, i64) #1

declare dso_local i32 @mp_obj_new_str_of_type(i32*, i32*, i64) #1

declare dso_local i32 @mp_call_method_n_kw(i32, i32, i32*) #1

declare dso_local i32 @telnet_tx_strn(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
