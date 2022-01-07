; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_cc3200_hal.c_mp_hal_stdin_rx_chr.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_cc3200_hal.c_mp_hal_stdin_rx_chr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32*, i32 }

@os_term_dup_obj = common dso_local global i32 0, align 4
@pyb_uart_type = common dso_local global i32 0, align 4
@MP_BUFFER_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_hal_stdin_rx_chr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 8
  br label %4

4:                                                ; preds = %61, %0
  %5 = call i64 (...) @telnet_rx_any()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call i32 (...) @telnet_rx_char()
  store i32 %8, i32* %1, align 4
  br label %63

9:                                                ; preds = %4
  %10 = load i32, i32* @os_term_dup_obj, align 4
  %11 = call %struct.TYPE_5__* @MP_STATE_PORT(i32 %10)
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %60

13:                                               ; preds = %9
  %14 = load i32, i32* @os_term_dup_obj, align 4
  %15 = call %struct.TYPE_5__* @MP_STATE_PORT(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @mp_obj_is_type(i32 %17, i32* @pyb_uart_type)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %13
  %21 = load i32, i32* @os_term_dup_obj, align 4
  %22 = call %struct.TYPE_5__* @MP_STATE_PORT(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @uart_rx_any(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %20
  %28 = load i32, i32* @os_term_dup_obj, align 4
  %29 = call %struct.TYPE_5__* @MP_STATE_PORT(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @uart_rx_char(i32 %31)
  store i32 %32, i32* %1, align 4
  br label %63

33:                                               ; preds = %20
  br label %59

34:                                               ; preds = %13
  %35 = call i32 @mp_obj_new_int(i32 1)
  %36 = load i32, i32* @os_term_dup_obj, align 4
  %37 = call %struct.TYPE_5__* @MP_STATE_PORT(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  store i32 %35, i32* %40, align 4
  %41 = load i32, i32* @os_term_dup_obj, align 4
  %42 = call %struct.TYPE_5__* @MP_STATE_PORT(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @mp_call_method_n_kw(i32 1, i32 0, i32* %44)
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i64 @mp_obj_is_true(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %34
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @MP_BUFFER_READ, align 4
  %52 = call i32 @mp_get_buffer_raise(i32 %50, %struct.TYPE_4__* %3, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %1, align 4
  br label %63

58:                                               ; preds = %34
  br label %59

59:                                               ; preds = %58, %33
  br label %60

60:                                               ; preds = %59, %9
  br label %61

61:                                               ; preds = %60
  %62 = call i32 @mp_hal_delay_ms(i32 1)
  br label %4

63:                                               ; preds = %49, %27, %7
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i64 @telnet_rx_any(...) #1

declare dso_local i32 @telnet_rx_char(...) #1

declare dso_local %struct.TYPE_5__* @MP_STATE_PORT(i32) #1

declare dso_local i64 @mp_obj_is_type(i32, i32*) #1

declare dso_local i64 @uart_rx_any(i32) #1

declare dso_local i32 @uart_rx_char(i32) #1

declare dso_local i32 @mp_obj_new_int(i32) #1

declare dso_local i32 @mp_call_method_n_kw(i32, i32, i32*) #1

declare dso_local i64 @mp_obj_is_true(i32) #1

declare dso_local i32 @mp_get_buffer_raise(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @mp_hal_delay_ms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
