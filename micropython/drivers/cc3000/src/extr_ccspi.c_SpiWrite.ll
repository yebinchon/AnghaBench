; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_ccspi.c_SpiWrite.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3000/src/extr_ccspi.c_SpiWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i8*, i16 }
%struct.TYPE_3__ = type { i64 (...)*, i32 (...)*, i32 (...)* }

@.str = private unnamed_addr constant [14 x i8] c"SpiWrite %lu\0A\00", align 1
@sSpiInformation = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@WRITE = common dso_local global i8 0, align 1
@SPI_HEADER_SIZE = common dso_local global i64 0, align 8
@wlan_tx_buffer = common dso_local global i64* null, align 8
@CC3000_TX_BUFFER_SIZE = common dso_local global i32 0, align 4
@CC3000_BUFFER_MAGIC_NUMBER = common dso_local global i64 0, align 8
@eSPI_STATE_POWERUP = common dso_local global i64 0, align 8
@eSPI_STATE_INITIALIZED = common dso_local global i64 0, align 8
@tSLInformation = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@eSPI_STATE_IDLE = common dso_local global i64 0, align 8
@eSPI_STATE_WRITE_IRQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SpiWrite(i8* %0, i16 zeroext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sSpiInformation, i32 0, i32 0), align 8
  %7 = call i32 @DEBUG_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %6)
  store i8 0, i8* %5, align 1
  %8 = load i16, i16* %4, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 1
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8, i8* %5, align 1
  %14 = add i8 %13, 1
  store i8 %14, i8* %5, align 1
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i8, i8* @WRITE, align 1
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %16, i8* %18, align 1
  %19 = load i16, i16* %4, align 2
  %20 = zext i16 %19 to i32
  %21 = load i8, i8* %5, align 1
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %20, %22
  %24 = trunc i32 %23 to i16
  %25 = call zeroext i8 @HI(i16 zeroext %24)
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 %25, i8* %27, align 1
  %28 = load i16, i16* %4, align 2
  %29 = zext i16 %28 to i32
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %29, %31
  %33 = trunc i32 %32 to i16
  %34 = call zeroext i8 @LO(i16 zeroext %33)
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  store i8 %34, i8* %36, align 1
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 3
  store i8 0, i8* %38, align 1
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 4
  store i8 0, i8* %40, align 1
  %41 = load i64, i64* @SPI_HEADER_SIZE, align 8
  %42 = load i8, i8* %5, align 1
  %43 = zext i8 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = load i16, i16* %4, align 2
  %46 = zext i16 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i16
  store i16 %48, i16* %4, align 2
  %49 = load i64*, i64** @wlan_tx_buffer, align 8
  %50 = load i32, i32* @CC3000_TX_BUFFER_SIZE, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %49, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CC3000_BUFFER_MAGIC_NUMBER, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %15
  br label %58

58:                                               ; preds = %57, %58
  br label %58

59:                                               ; preds = %15
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sSpiInformation, i32 0, i32 0), align 8
  %61 = load i64, i64* @eSPI_STATE_POWERUP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %68, %63
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sSpiInformation, i32 0, i32 0), align 8
  %66 = load i64, i64* @eSPI_STATE_INITIALIZED, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %64

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %59
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sSpiInformation, i32 0, i32 0), align 8
  %72 = load i64, i64* @eSPI_STATE_INITIALIZED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i8*, i8** %3, align 8
  %76 = load i16, i16* %4, align 2
  %77 = call i32 @SpiFirstWrite(i8* %75, i16 zeroext %76)
  br label %103

78:                                               ; preds = %70
  %79 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tSLInformation, i32 0, i32 2), align 8
  %80 = call i32 (...) %79()
  br label %81

81:                                               ; preds = %85, %78
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sSpiInformation, i32 0, i32 0), align 8
  %83 = load i64, i64* @eSPI_STATE_IDLE, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %81

86:                                               ; preds = %81
  %87 = load i64, i64* @eSPI_STATE_WRITE_IRQ, align 8
  store i64 %87, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sSpiInformation, i32 0, i32 0), align 8
  %88 = load i8*, i8** %3, align 8
  store i8* %88, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sSpiInformation, i32 0, i32 1), align 8
  %89 = load i16, i16* %4, align 2
  store i16 %89, i16* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sSpiInformation, i32 0, i32 2), align 8
  %90 = call i32 (...) @CS_LOW()
  %91 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tSLInformation, i32 0, i32 1), align 8
  %92 = call i32 (...) %91()
  %93 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @tSLInformation, i32 0, i32 0), align 8
  %94 = call i64 (...) %93()
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %86
  %97 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sSpiInformation, i32 0, i32 1), align 8
  %98 = load i16, i16* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sSpiInformation, i32 0, i32 2), align 8
  %99 = call i32 @SpiWriteDataSynchronous(i8* %97, i16 zeroext %98)
  %100 = load i64, i64* @eSPI_STATE_IDLE, align 8
  store i64 %100, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sSpiInformation, i32 0, i32 0), align 8
  %101 = call i32 (...) @CS_HIGH()
  br label %102

102:                                              ; preds = %96, %86
  br label %103

103:                                              ; preds = %102, %74
  br label %104

104:                                              ; preds = %108, %103
  %105 = load i64, i64* @eSPI_STATE_IDLE, align 8
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sSpiInformation, i32 0, i32 0), align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %104

109:                                              ; preds = %104
  ret i64 0
}

declare dso_local i32 @DEBUG_printf(i8*, i64) #1

declare dso_local zeroext i8 @HI(i16 zeroext) #1

declare dso_local zeroext i8 @LO(i16 zeroext) #1

declare dso_local i32 @SpiFirstWrite(i8*, i16 zeroext) #1

declare dso_local i32 @CS_LOW(...) #1

declare dso_local i32 @SpiWriteDataSynchronous(i8*, i16 zeroext) #1

declare dso_local i32 @CS_HIGH(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
