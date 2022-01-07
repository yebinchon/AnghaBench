; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_busywait.c_ps2_host_recv.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ps2_busywait.c_ps2_host_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PS2_ERR_NONE = common dso_local global i64 0, align 8
@ps2_error = common dso_local global i64 0, align 8
@clock_lo = common dso_local global i32 0, align 4
@data_lo = common dso_local global i32 0, align 4
@clock_hi = common dso_local global i32 0, align 4
@PS2_ERR_PARITY = common dso_local global i64 0, align 8
@data_hi = common dso_local global i32 0, align 4
@PS2_ERR_STARTBIT3 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"x%02X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps2_host_recv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  %5 = load i64, i64* @PS2_ERR_NONE, align 8
  store i64 %5, i64* @ps2_error, align 8
  %6 = call i32 (...) @idle()
  %7 = load i32, i32* @clock_lo, align 4
  %8 = call i32 @WAIT(i32 %7, i32 100, i32 1)
  %9 = load i32, i32* @data_lo, align 4
  %10 = call i32 @WAIT(i32 %9, i32 1, i32 2)
  %11 = load i32, i32* @clock_hi, align 4
  %12 = call i32 @WAIT(i32 %11, i32 50, i32 3)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %33, %0
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 8
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load i32, i32* @clock_lo, align 4
  %18 = call i32 @WAIT(i32 %17, i32 50, i32 4)
  %19 = call i32 (...) @data_in()
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 1, %26
  %28 = load i32, i32* %2, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %16
  %31 = load i32, i32* @clock_hi, align 4
  %32 = call i32 @WAIT(i32 %31, i32 50, i32 5)
  br label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %13

36:                                               ; preds = %13
  %37 = load i32, i32* @clock_lo, align 4
  %38 = call i32 @WAIT(i32 %37, i32 50, i32 6)
  %39 = call i32 (...) @data_in()
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @PS2_ERR_PARITY, align 8
  store i64 %43, i64* @ps2_error, align 8
  br label %55

44:                                               ; preds = %36
  %45 = load i32, i32* @clock_hi, align 4
  %46 = call i32 @WAIT(i32 %45, i32 50, i32 7)
  %47 = load i32, i32* @clock_lo, align 4
  %48 = call i32 @WAIT(i32 %47, i32 50, i32 8)
  %49 = load i32, i32* @data_hi, align 4
  %50 = call i32 @WAIT(i32 %49, i32 1, i32 9)
  %51 = load i32, i32* @clock_hi, align 4
  %52 = call i32 @WAIT(i32 %51, i32 50, i32 10)
  %53 = call i32 (...) @inhibit()
  %54 = load i32, i32* %2, align 4
  store i32 %54, i32* %1, align 4
  br label %64

55:                                               ; preds = %42
  %56 = load i64, i64* @ps2_error, align 8
  %57 = load i64, i64* @PS2_ERR_STARTBIT3, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* @ps2_error, align 8
  %61 = call i32 @xprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = call i32 (...) @inhibit()
  store i32 0, i32* %1, align 4
  br label %64

64:                                               ; preds = %62, %44
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i32 @idle(...) #1

declare dso_local i32 @WAIT(i32, i32, i32) #1

declare dso_local i32 @data_in(...) #1

declare dso_local i32 @inhibit(...) #1

declare dso_local i32 @xprintf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
