; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_twimaster.c_i2c_start_wait.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/ergodone/extr_twimaster.c_i2c_start_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TWINT = common dso_local global i32 0, align 4
@TWSTA = common dso_local global i32 0, align 4
@TWEN = common dso_local global i32 0, align 4
@TWCR = common dso_local global i32 0, align 4
@TW_STATUS = common dso_local global i32 0, align 4
@TW_START = common dso_local global i32 0, align 4
@TW_REP_START = common dso_local global i32 0, align 4
@TWDR = common dso_local global i8 0, align 1
@TW_MT_SLA_NACK = common dso_local global i32 0, align 4
@TW_MR_DATA_NACK = common dso_local global i32 0, align 4
@TWSTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2c_start_wait(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  br label %4

4:                                                ; preds = %1, %31, %73
  %5 = load i32, i32* @TWINT, align 4
  %6 = shl i32 1, %5
  %7 = load i32, i32* @TWSTA, align 4
  %8 = shl i32 1, %7
  %9 = or i32 %6, %8
  %10 = load i32, i32* @TWEN, align 4
  %11 = shl i32 1, %10
  %12 = or i32 %9, %11
  store i32 %12, i32* @TWCR, align 4
  br label %13

13:                                               ; preds = %20, %4
  %14 = load i32, i32* @TWCR, align 4
  %15 = load i32, i32* @TWINT, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %13

21:                                               ; preds = %13
  %22 = load i32, i32* @TW_STATUS, align 4
  %23 = and i32 %22, 248
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @TW_START, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @TW_REP_START, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %4

32:                                               ; preds = %27, %21
  %33 = load i8, i8* %2, align 1
  store i8 %33, i8* @TWDR, align 1
  %34 = load i32, i32* @TWINT, align 4
  %35 = shl i32 1, %34
  %36 = load i32, i32* @TWEN, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  store i32 %38, i32* @TWCR, align 4
  br label %39

39:                                               ; preds = %46, %32
  %40 = load i32, i32* @TWCR, align 4
  %41 = load i32, i32* @TWINT, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %39

47:                                               ; preds = %39
  %48 = load i32, i32* @TW_STATUS, align 4
  %49 = and i32 %48, 248
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @TW_MT_SLA_NACK, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @TW_MR_DATA_NACK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53, %47
  %58 = load i32, i32* @TWINT, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* @TWEN, align 4
  %61 = shl i32 1, %60
  %62 = or i32 %59, %61
  %63 = load i32, i32* @TWSTO, align 4
  %64 = shl i32 1, %63
  %65 = or i32 %62, %64
  store i32 %65, i32* @TWCR, align 4
  br label %66

66:                                               ; preds = %72, %57
  %67 = load i32, i32* @TWCR, align 4
  %68 = load i32, i32* @TWSTO, align 4
  %69 = shl i32 1, %68
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %66

73:                                               ; preds = %66
  br label %4

74:                                               ; preds = %53
  br label %75

75:                                               ; preds = %74
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
