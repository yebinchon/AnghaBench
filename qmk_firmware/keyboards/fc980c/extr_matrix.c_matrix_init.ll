; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/fc980c/extr_matrix.c_matrix_init.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/fc980c/extr_matrix.c_matrix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug_enable = common dso_local global i32 0, align 4
@debug_matrix = common dso_local global i32 0, align 4
@DDRB = common dso_local global i32 0, align 4
@PORTB = common dso_local global i32 0, align 4
@MATRIX_ROWS = common dso_local global i64 0, align 8
@_matrix0 = common dso_local global i32* null, align 8
@_matrix1 = common dso_local global i32* null, align 8
@matrix = common dso_local global i32* null, align 8
@matrix_prev = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matrix_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i32 1, i32* @debug_enable, align 4
  store i32 1, i32* @debug_matrix, align 4
  %3 = call i32 (...) @KEY_INIT()
  %4 = load i32, i32* @DDRB, align 4
  %5 = or i32 %4, 112
  store i32 %5, i32* @DDRB, align 4
  %6 = load i32, i32* @PORTB, align 4
  %7 = or i32 %6, 112
  store i32 %7, i32* @PORTB, align 4
  store i64 0, i64* %1, align 8
  br label %8

8:                                                ; preds = %16, %0
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @MATRIX_ROWS, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32*, i32** @_matrix0, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %1, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %1, align 8
  br label %8

19:                                               ; preds = %8
  store i64 0, i64* %2, align 8
  br label %20

20:                                               ; preds = %28, %19
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @MATRIX_ROWS, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32*, i32** @_matrix1, align 8
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %2, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %2, align 8
  br label %20

31:                                               ; preds = %20
  %32 = load i32*, i32** @_matrix0, align 8
  store i32* %32, i32** @matrix, align 8
  %33 = load i32*, i32** @_matrix1, align 8
  store i32* %33, i32** @matrix_prev, align 8
  %34 = call i32 (...) @matrix_init_quantum()
  ret void
}

declare dso_local i32 @KEY_INIT(...) #1

declare dso_local i32 @matrix_init_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
