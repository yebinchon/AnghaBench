; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ibm4704.c_ibm4704_send.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/extr_ibm4704.c_ibm4704_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ibm4704_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"S:%02X \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibm4704_send(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* @ibm4704_error, align 4
  %6 = call i32 (...) @IBM4704_INT_OFF()
  %7 = call i32 (...) @idle()
  %8 = call i32 (...) @clock_lo()
  %9 = call i32 @WAIT(i32 (...)* @data_hi, i32 300, i32 48)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 64, %14
  %16 = call i32 @WAIT(i32 (...)* @clock_hi, i32 100, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 1, %18
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %4, align 4
  %27 = call i32 (...) @data_hi()
  br label %30

28:                                               ; preds = %13
  %29 = call i32 (...) @data_lo()
  br label %30

30:                                               ; preds = %28, %22
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 72, %31
  %33 = call i32 @WAIT(i32 (...)* @clock_lo, i32 100, i32 %32)
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %10

37:                                               ; preds = %10
  %38 = call i32 @WAIT(i32 (...)* @clock_hi, i32 100, i32 52)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (...) @data_hi()
  br label %45

43:                                               ; preds = %37
  %44 = call i32 (...) @data_lo()
  br label %45

45:                                               ; preds = %43, %41
  %46 = call i32 @WAIT(i32 (...)* @clock_lo, i32 100, i32 53)
  %47 = call i32 @WAIT(i32 (...)* @clock_hi, i32 100, i32 52)
  %48 = call i32 (...) @data_hi()
  %49 = call i32 @WAIT(i32 (...)* @data_lo, i32 100, i32 54)
  %50 = call i32 (...) @idle()
  %51 = call i32 (...) @IBM4704_INT_ON()
  store i32 0, i32* %2, align 4
  br label %61

52:                                               ; No predecessors!
  %53 = call i32 (...) @idle()
  %54 = load i32, i32* @ibm4704_error, align 4
  %55 = icmp sgt i32 %54, 48
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @ibm4704_error, align 4
  %58 = call i32 @xprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %52
  %60 = call i32 (...) @IBM4704_INT_ON()
  store i32 -1, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %45
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @IBM4704_INT_OFF(...) #1

declare dso_local i32 @idle(...) #1

declare dso_local i32 @clock_lo(...) #1

declare dso_local i32 @WAIT(i32 (...)*, i32, i32) #1

declare dso_local i32 @data_hi(...) #1

declare dso_local i32 @clock_hi(...) #1

declare dso_local i32 @data_lo(...) #1

declare dso_local i32 @IBM4704_INT_ON(...) #1

declare dso_local i32 @xprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
