; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/palm_usb/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/palm_usb/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_activity = common dso_local global i32 0, align 4
@SLEEP_TIMEOUT = common dso_local global i64 0, align 8
@disconnect_counter = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"rstD \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rstA \00", align 1
@last_upKey = common dso_local global i32 0, align 4
@matrix = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @matrix_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @serial_recv()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @last_activity, align 4
  %8 = call i64 @timer_elapsed(i32 %7)
  %9 = load i64, i64* @SLEEP_TIMEOUT, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = call i32 (...) @palm_reset()
  store i32 0, i32* %1, align 4
  br label %74

13:                                               ; preds = %6
  br label %14

14:                                               ; preds = %13, %0
  %15 = call i32 (...) @timer_read()
  store i32 %15, i32* @last_activity, align 4
  store i64 0, i64* @disconnect_counter, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @debug_hex(i32 %16)
  %18 = call i32 @debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %2, align 4
  switch i32 %19, label %24 [
    i32 253, label %20
    i32 250, label %22
  ]

20:                                               ; preds = %14
  %21 = call i32 @print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %74

22:                                               ; preds = %14
  %23 = call i32 @print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %74

24:                                               ; preds = %14
  %25 = load i32, i32* %2, align 4
  %26 = call i64 @KEYUP(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @last_upKey, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* @last_upKey, align 4
  store i32 0, i32* %1, align 4
  br label %74

33:                                               ; preds = %28
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @ROW(i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @COL(i32 %36)
  %38 = call i64 @matrix_is_on(i64 %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @COL(i32 %41)
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = load i32*, i32** @matrix, align 8
  %46 = load i32, i32* %2, align 4
  %47 = call i64 @ROW(i32 %46)
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %44
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %2, align 4
  store i32 %51, i32* @last_upKey, align 4
  br label %52

52:                                               ; preds = %40, %33
  br label %71

53:                                               ; preds = %24
  %54 = load i32, i32* %2, align 4
  %55 = call i64 @ROW(i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @COL(i32 %56)
  %58 = call i64 @matrix_is_on(i64 %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @COL(i32 %61)
  %63 = shl i32 1, %62
  %64 = load i32*, i32** @matrix, align 8
  %65 = load i32, i32* %2, align 4
  %66 = call i64 @ROW(i32 %65)
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %63
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %60, %53
  br label %71

71:                                               ; preds = %70, %52
  %72 = call i32 (...) @matrix_scan_quantum()
  %73 = load i32, i32* %2, align 4
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %71, %32, %22, %20, %11
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32 @serial_recv(...) #1

declare dso_local i64 @timer_elapsed(i32) #1

declare dso_local i32 @palm_reset(...) #1

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @debug_hex(i32) #1

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i64 @KEYUP(i32) #1

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
