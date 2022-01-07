; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_iwrap.c_iwrap_call.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/iwrap/extr_iwrap.c_iwrap_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"SET BT PAIR\00", align 1
@rcv_buf = common dso_local global i8* null, align 8
@rcv_tail = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"CALL\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c" 11 HID\0A\00\00", align 1
@DEBUG_LED_CONFIG = common dso_local global i32 0, align 4
@DEBUG_LED_ON = common dso_local global i32 0, align 4
@DEBUG_LED_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwrap_call() #0 {
  %1 = alloca i8*, align 8
  %2 = call i32 @iwrap_mux_send(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @_delay_ms(i32 500)
  %4 = load i8*, i8** @rcv_buf, align 8
  %5 = load i32, i32* @rcv_tail, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* %4, i64 %6
  store i8* %7, i8** %1, align 8
  br label %8

8:                                                ; preds = %13, %0
  %9 = load i8*, i8** %1, align 8
  %10 = call i32 @strncmp(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %48

13:                                               ; preds = %8
  %14 = load i8*, i8** %1, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 7
  store i8* %15, i8** %1, align 8
  %16 = load i8*, i8** %1, align 8
  %17 = call i32 @strncpy(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %18 = load i8*, i8** %1, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 22
  %20 = call i32 @strncpy(i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %21 = load i8*, i8** %1, align 8
  %22 = call i32 @print_S(i8* %21)
  %23 = load i8*, i8** %1, align 8
  %24 = call i32 @iwrap_mux_send(i8* %23)
  %25 = load i8*, i8** %1, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 57
  store i8* %26, i8** %1, align 8
  %27 = load i32, i32* @DEBUG_LED_CONFIG, align 4
  %28 = load i32, i32* @DEBUG_LED_ON, align 4
  %29 = call i32 @_delay_ms(i32 500)
  %30 = load i32, i32* @DEBUG_LED_OFF, align 4
  %31 = call i32 @_delay_ms(i32 500)
  %32 = load i32, i32* @DEBUG_LED_ON, align 4
  %33 = call i32 @_delay_ms(i32 500)
  %34 = load i32, i32* @DEBUG_LED_OFF, align 4
  %35 = call i32 @_delay_ms(i32 500)
  %36 = load i32, i32* @DEBUG_LED_ON, align 4
  %37 = call i32 @_delay_ms(i32 500)
  %38 = load i32, i32* @DEBUG_LED_OFF, align 4
  %39 = call i32 @_delay_ms(i32 500)
  %40 = load i32, i32* @DEBUG_LED_ON, align 4
  %41 = call i32 @_delay_ms(i32 500)
  %42 = load i32, i32* @DEBUG_LED_OFF, align 4
  %43 = call i32 @_delay_ms(i32 500)
  %44 = load i32, i32* @DEBUG_LED_ON, align 4
  %45 = call i32 @_delay_ms(i32 500)
  %46 = load i32, i32* @DEBUG_LED_OFF, align 4
  %47 = call i32 @_delay_ms(i32 500)
  br label %8

48:                                               ; preds = %8
  %49 = call i32 (...) @iwrap_check_connection()
  ret void
}

declare dso_local i32 @iwrap_mux_send(i8*) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @print_S(i8*) #1

declare dso_local i32 @iwrap_check_connection(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
