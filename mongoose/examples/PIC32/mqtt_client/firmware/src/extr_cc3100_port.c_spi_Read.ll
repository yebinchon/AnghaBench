; ModuleID = '/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/extr_cc3100_port.c_spi_Read.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/PIC32/mqtt_client/firmware/src/extr_cc3100_port.c_spi_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"BUFFER TOO SMALL\00", align 1
@sysObj = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_Read(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [512 x i32], align 16
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp sgt i32 %9, 512
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @SYS_PRINT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %26

13:                                               ; preds = %3
  %14 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @memset(i32* %14, i32 255, i32 %15)
  %17 = call i32 (...) @AssertCS()
  %18 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @DRV_SPI0_BufferAddWriteRead(i32* %18, i8* %19, i32 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysObj, i32 0, i32 0), align 4
  %23 = call i32 @DRV_SPI_Tasks(i32 %22)
  %24 = call i32 (...) @DeassertCS()
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %13, %11
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @SYS_PRINT(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @AssertCS(...) #1

declare dso_local i32 @DRV_SPI0_BufferAddWriteRead(i32*, i8*, i32) #1

declare dso_local i32 @DRV_SPI_Tasks(i32) #1

declare dso_local i32 @DeassertCS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
