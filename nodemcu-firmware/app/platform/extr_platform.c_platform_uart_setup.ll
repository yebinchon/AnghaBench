; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_platform.c_platform_uart_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/platform/extr_platform.c_platform_uart_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i32, i8* }

@UartDev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@FIVE_BITS = common dso_local global i8* null, align 8
@SIX_BITS = common dso_local global i8* null, align 8
@SEVEN_BITS = common dso_local global i8* null, align 8
@EIGHT_BITS = common dso_local global i8* null, align 8
@ONE_HALF_STOP_BIT = common dso_local global i32 0, align 4
@TWO_STOP_BIT = common dso_local global i32 0, align 4
@ONE_STOP_BIT = common dso_local global i32 0, align 4
@EVEN_BITS = common dso_local global i32 0, align 4
@STICK_PARITY_EN = common dso_local global i8* null, align 8
@ODD_BITS = common dso_local global i32 0, align 4
@NONE_BITS = common dso_local global i32 0, align 4
@STICK_PARITY_DIS = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @platform_uart_setup(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %14 [
    i32 142, label %12
    i32 135, label %12
    i32 148, label %12
    i32 144, label %12
    i32 137, label %12
    i32 132, label %12
    i32 146, label %12
    i32 141, label %12
    i32 139, label %12
    i32 136, label %12
    i32 134, label %12
    i32 149, label %12
    i32 145, label %12
    i32 143, label %12
    i32 138, label %12
    i32 133, label %12
    i32 147, label %12
    i32 140, label %12
  ]

12:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 0), align 8
  br label %15

14:                                               ; preds = %5
  store i32 132, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 0), align 8
  br label %15

15:                                               ; preds = %14, %12
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %25 [
    i32 5, label %17
    i32 6, label %19
    i32 7, label %21
    i32 8, label %23
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @FIVE_BITS, align 8
  store i8* %18, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 4), align 8
  br label %27

19:                                               ; preds = %15
  %20 = load i8*, i8** @SIX_BITS, align 8
  store i8* %20, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 4), align 8
  br label %27

21:                                               ; preds = %15
  %22 = load i8*, i8** @SEVEN_BITS, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 4), align 8
  br label %27

23:                                               ; preds = %15
  %24 = load i8*, i8** @EIGHT_BITS, align 8
  store i8* %24, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 4), align 8
  br label %27

25:                                               ; preds = %15
  %26 = load i8*, i8** @EIGHT_BITS, align 8
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 4), align 8
  br label %27

27:                                               ; preds = %25, %23, %21, %19, %17
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %33 [
    i32 129, label %29
    i32 128, label %31
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @ONE_HALF_STOP_BIT, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 3), align 4
  br label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @TWO_STOP_BIT, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 3), align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ONE_STOP_BIT, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 3), align 4
  br label %35

35:                                               ; preds = %33, %31, %29
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %43 [
    i32 131, label %37
    i32 130, label %40
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @EVEN_BITS, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 2), align 8
  %39 = load i8*, i8** @STICK_PARITY_EN, align 8
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 1), align 8
  br label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @ODD_BITS, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 2), align 8
  %42 = load i8*, i8** @STICK_PARITY_EN, align 8
  store i8* %42, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 1), align 8
  br label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @NONE_BITS, align 4
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 2), align 8
  %45 = load i8*, i8** @STICK_PARITY_DIS, align 8
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UartDev, i32 0, i32 1), align 8
  br label %46

46:                                               ; preds = %43, %40, %37
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @uart_setup(i32 %47)
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @uart_setup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
