; ModuleID = '/home/carl/AnghaBench/qmk_firmware/keyboards/meira/extr_TWIlib.c_TWITransmitData.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/keyboards/meira/extr_TWIlib.c_TWITransmitData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8* }

@TWINT = common dso_local global i32 0, align 4
@TWSTO = common dso_local global i32 0, align 4
@TWCR = common dso_local global i32 0, align 4
@TWIInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TWITransmitBuffer = common dso_local global i8** null, align 8
@TXBuffLen = common dso_local global i8* null, align 8
@TXBuffIndex = common dso_local global i64 0, align 8
@RepeatedStartSent = common dso_local global i64 0, align 8
@Initializing = common dso_local global i8* null, align 8
@TWDR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TWITransmitData(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  br label %9

9:                                                ; preds = %13, %4
  %10 = call i32 (...) @isTWIReady()
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 @_delay_us(i32 1)
  br label %9

15:                                               ; preds = %9
  %16 = load i32, i32* @TWINT, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* @TWSTO, align 4
  %19 = shl i32 1, %18
  %20 = or i32 %17, %19
  store i32 %20, i32* @TWCR, align 4
  %21 = call i32 (...) @TWIInit()
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 1), align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to i8**
  store i8** %24, i8*** @TWITransmitBuffer, align 8
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** @TXBuffLen, align 8
  store i64 0, i64* @TXBuffIndex, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 0), align 8
  %27 = load i64, i64* @RepeatedStartSent, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %15
  %30 = load i8*, i8** @Initializing, align 8
  %31 = ptrtoint i8* %30 to i64
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 0), align 8
  %32 = load i8**, i8*** @TWITransmitBuffer, align 8
  %33 = load i64, i64* @TXBuffIndex, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* @TXBuffIndex, align 8
  %35 = getelementptr inbounds i8*, i8** %32, i64 %33
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** @TWDR, align 8
  %37 = call i32 (...) @TWISendTransmit()
  br label %42

38:                                               ; preds = %15
  %39 = load i8*, i8** @Initializing, align 8
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @TWIInfo, i32 0, i32 0), align 8
  %41 = call i32 (...) @TWISendStart()
  br label %42

42:                                               ; preds = %38, %29
  %43 = load i8*, i8** %8, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  br label %46

46:                                               ; preds = %50, %45
  %47 = call i32 (...) @isTWIReady()
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 @_delay_us(i32 1)
  br label %46

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %42
  ret void
}

declare dso_local i32 @isTWIReady(...) #1

declare dso_local i32 @_delay_us(i32) #1

declare dso_local i32 @TWIInit(...) #1

declare dso_local i32 @TWISendTransmit(...) #1

declare dso_local i32 @TWISendStart(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
