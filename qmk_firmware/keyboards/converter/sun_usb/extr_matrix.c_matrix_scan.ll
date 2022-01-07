; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/sun_usb/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/sun_usb/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"reset: \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02X\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"layout: \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"reset fail: \00", align 1
@MATRIX_ROWS = common dso_local global i32 0, align 4
@matrix = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @serial_recv()
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %93

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @debug_hex(i32 %9)
  %11 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %2, align 4
  switch i32 %12, label %49 [
    i32 255, label %13
    i32 254, label %25
    i32 126, label %30
    i32 127, label %35
  ]

13:                                               ; preds = %8
  %14 = call i32 @print(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @_delay_ms(i32 500)
  %16 = call i32 (...) @serial_recv()
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @xprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = call i32 (...) @host_keyboard_leds()
  %23 = call i32 @led_set(i32 %22)
  br label %24

24:                                               ; preds = %21, %13
  store i32 0, i32* %1, align 4
  br label %93

25:                                               ; preds = %8
  %26 = call i32 @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 @_delay_ms(i32 500)
  %28 = call i32 (...) @serial_recv()
  %29 = call i32 @xprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  store i32 0, i32* %1, align 4
  br label %93

30:                                               ; preds = %8
  %31 = call i32 @print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %32 = call i32 @_delay_ms(i32 500)
  %33 = call i32 (...) @serial_recv()
  %34 = call i32 @xprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i32 0, i32* %1, align 4
  br label %93

35:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %45, %35
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @MATRIX_ROWS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32*, i32** @matrix, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %36

48:                                               ; preds = %36
  store i32 0, i32* %1, align 4
  br label %93

49:                                               ; preds = %8
  %50 = load i32, i32* %2, align 4
  %51 = and i32 %50, 128
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = load i32, i32* %2, align 4
  %55 = call i64 @ROW(i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @COL(i32 %56)
  %58 = call i64 @matrix_is_on(i64 %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %53
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @COL(i32 %61)
  %63 = shl i32 1, %62
  %64 = xor i32 %63, -1
  %65 = load i32*, i32** @matrix, align 8
  %66 = load i32, i32* %2, align 4
  %67 = call i64 @ROW(i32 %66)
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %64
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %60, %53
  br label %90

72:                                               ; preds = %49
  %73 = load i32, i32* %2, align 4
  %74 = call i64 @ROW(i32 %73)
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @COL(i32 %75)
  %77 = call i64 @matrix_is_on(i64 %74, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %2, align 4
  %81 = call i32 @COL(i32 %80)
  %82 = shl i32 1, %81
  %83 = load i32*, i32** @matrix, align 8
  %84 = load i32, i32* %2, align 4
  %85 = call i64 @ROW(i32 %84)
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %79, %72
  br label %90

90:                                               ; preds = %89, %71
  %91 = call i32 (...) @matrix_scan_quantum()
  %92 = load i32, i32* %2, align 4
  store i32 %92, i32* %1, align 4
  br label %93

93:                                               ; preds = %90, %48, %30, %25, %24, %7
  %94 = load i32, i32* %1, align 4
  ret i32 %94
}

declare dso_local i32 @serial_recv(...) #1

declare dso_local i32 @debug_hex(i32) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @_delay_ms(i32) #1

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @led_set(i32) #1

declare dso_local i32 @host_keyboard_leds(...) #1

declare dso_local i64 @matrix_is_on(i64, i32) #1

declare dso_local i64 @ROW(i32) #1

declare dso_local i32 @COL(i32) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
