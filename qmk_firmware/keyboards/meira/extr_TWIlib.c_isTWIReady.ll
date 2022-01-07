; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/meira/extr_TWIlib.c_isTWIReady.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/meira/extr_TWIlib.c_isTWIReady.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@TWIInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@Ready = common dso_local global i64 0, align 8
@RepeatedStartSent = common dso_local global i64 0, align 8
@Initializing = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"I2C init error: %d\0A\00", align 1
@TWINT = common dso_local global i32 0, align 4
@TWSTO = common dso_local global i32 0, align 4
@TWCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Other i2c init error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isTWIReady() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 0), align 8
  %3 = load i64, i64* @Ready, align 8
  %4 = icmp eq i64 %2, %3
  %5 = zext i1 %4 to i32
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 0), align 8
  %7 = load i64, i64* @RepeatedStartSent, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = or i32 %5, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %35

13:                                               ; preds = %0
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 0), align 8
  %15 = load i64, i64* @Initializing, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 1), align 8
  switch i32 %18, label %30 [
    i32 128, label %19
    i32 129, label %20
    i32 131, label %21
    i32 130, label %21
  ]

19:                                               ; preds = %17
  br label %33

20:                                               ; preds = %17
  br label %33

21:                                               ; preds = %17, %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 1), align 8
  %23 = call i32 @xprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @TWINT, align 4
  %25 = shl i32 1, %24
  %26 = load i32, i32* @TWSTO, align 4
  %27 = shl i32 1, %26
  %28 = or i32 %25, %27
  store i32 %28, i32* @TWCR, align 4
  %29 = call i32 (...) @TWIInit()
  br label %33

30:                                               ; preds = %17
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 1), align 8
  %32 = call i32 @xprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %30, %21, %20, %19
  br label %34

34:                                               ; preds = %33, %13
  store i32 0, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %12
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i32 @xprintf(i8*, i32) #1

declare dso_local i32 @TWIInit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
