; ModuleID = '/home/carl/AnghaBench/mongoose/src/common/platforms/esp/extr_stub_flasher.c_uart_isr.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/common/platforms/esp/extr_stub_flasher.c_uart_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, %struct.data_buf* }
%struct.data_buf = type { i64 }

@ub = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uart_isr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.data_buf*, align 8
  store i8* %0, i8** %2, align 8
  %8 = call i32 @UART_INT_ST_REG(i32 0)
  %9 = call i8* @READ_PERI_REG(i32 %8)
  store i8* %9, i8** %3, align 8
  br label %10

10:                                               ; preds = %82, %1
  %11 = call i32 @UART_STATUS_REG(i32 0)
  %12 = call i8* @READ_PERI_REG(i32 %11)
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %83

15:                                               ; preds = %10
  store i64 0, i64* %5, align 8
  br label %16

16:                                               ; preds = %79, %15
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %16
  %21 = call i32 @UART_FIFO_REG(i32 0)
  %22 = call i8* @READ_PERI_REG(i32 %21)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 0), align 8
  switch i32 %24, label %78 [
    i32 128, label %25
    i32 130, label %30
    i32 132, label %30
    i32 129, label %62
    i32 131, label %77
  ]

25:                                               ; preds = %20
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %26, 192
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 2), align 8
  br label %29

29:                                               ; preds = %28, %25
  br label %78

30:                                               ; preds = %20, %20
  %31 = load %struct.data_buf*, %struct.data_buf** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 3), align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 1), align 8
  %33 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %31, i64 %32
  store %struct.data_buf* %33, %struct.data_buf** %7, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp eq i64 %34, 219
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 0), align 8
  br label %61

37:                                               ; preds = %30
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %38, 192
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = call i32 (...) @next_write_buf()
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 2), align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  store i32 131, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 0), align 8
  %45 = call i32 @UART_INT_ENA_REG(i32 0)
  %46 = call i32 @SET_PERI_REG_MASK(i32 %45, i32 0)
  br label %84

47:                                               ; preds = %40
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 0), align 8
  br label %48

48:                                               ; preds = %47
  br label %60

49:                                               ; preds = %37
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 0), align 8
  %51 = icmp eq i32 %50, 130
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.data_buf*, %struct.data_buf** %7, align 8
  %55 = getelementptr inbounds %struct.data_buf, %struct.data_buf* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  store i32 132, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 0), align 8
  br label %59

56:                                               ; preds = %49
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @add_byte(i64 %57)
  br label %59

59:                                               ; preds = %56, %52
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60, %36
  br label %78

62:                                               ; preds = %20
  %63 = load i64, i64* %6, align 8
  %64 = icmp eq i64 %63, 220
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i64 192, i64* %6, align 8
  br label %74

66:                                               ; preds = %62
  %67 = load i64, i64* %6, align 8
  %68 = icmp eq i64 %67, 221
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i64 219, i64* %6, align 8
  br label %73

70:                                               ; preds = %66
  store i32 131, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 0), align 8
  %71 = call i32 @UART_INT_ENA_REG(i32 0)
  %72 = call i32 @SET_PERI_REG_MASK(i32 %71, i32 0)
  br label %84

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %65
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @add_byte(i64 %75)
  store i32 132, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ub, i32 0, i32 0), align 8
  br label %78

77:                                               ; preds = %20
  br label %84

78:                                               ; preds = %20, %74, %61, %29
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %5, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %5, align 8
  br label %16

82:                                               ; preds = %16
  br label %10

83:                                               ; preds = %10
  br label %84

84:                                               ; preds = %83, %77, %70, %44
  %85 = call i32 @UART_INT_CLR_REG(i32 0)
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @WRITE_PERI_REG(i32 %85, i8* %86)
  %88 = load i8*, i8** %2, align 8
  ret void
}

declare dso_local i8* @READ_PERI_REG(i32) #1

declare dso_local i32 @UART_INT_ST_REG(i32) #1

declare dso_local i32 @UART_STATUS_REG(i32) #1

declare dso_local i32 @UART_FIFO_REG(i32) #1

declare dso_local i32 @next_write_buf(...) #1

declare dso_local i32 @SET_PERI_REG_MASK(i32, i32) #1

declare dso_local i32 @UART_INT_ENA_REG(i32) #1

declare dso_local i32 @add_byte(i64) #1

declare dso_local i32 @WRITE_PERI_REG(i32, i8*) #1

declare dso_local i32 @UART_INT_CLR_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
