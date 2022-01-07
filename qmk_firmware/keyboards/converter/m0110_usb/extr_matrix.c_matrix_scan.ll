; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/converter/m0110_usb/extr_matrix.c_matrix_scan.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/converter/m0110_usb/extr_matrix.c_matrix_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_modified = common dso_local global i32 0, align 4
@M0110_NULL = common dso_local global i64 0, align 8
@M0110_ERROR = common dso_local global i64 0, align 8
@debug_enable = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @matrix_scan() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i32 0, i32* @is_modified, align 4
  %3 = call i64 (...) @m0110_recv_key()
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @M0110_NULL, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %27

8:                                                ; preds = %0
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* @M0110_ERROR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i64 0, i64* %1, align 8
  br label %27

13:                                               ; preds = %8
  store i32 1, i32* @is_modified, align 4
  %14 = load i64, i64* %2, align 8
  %15 = call i32 @register_key(i64 %14)
  br label %16

16:                                               ; preds = %13
  br label %17

17:                                               ; preds = %16
  %18 = load i64, i64* @debug_enable, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = call i32 @print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @phex(i64 %22)
  %24 = call i32 @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %17
  %26 = call i32 (...) @matrix_scan_quantum()
  store i64 1, i64* %1, align 8
  br label %27

27:                                               ; preds = %25, %12, %7
  %28 = load i64, i64* %1, align 8
  ret i64 %28
}

declare dso_local i64 @m0110_recv_key(...) #1

declare dso_local i32 @register_key(i64) #1

declare dso_local i32 @print(i8*) #1

declare dso_local i32 @phex(i64) #1

declare dso_local i32 @matrix_scan_quantum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
