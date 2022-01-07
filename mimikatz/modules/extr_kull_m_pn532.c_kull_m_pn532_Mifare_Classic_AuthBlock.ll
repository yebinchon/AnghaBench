; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pn532.c_kull_m_pn532_Mifare_Classic_AuthBlock.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_pn532.c_kull_m_pn532_Mifare_Classic_AuthBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@MIFARE_CLASSIC_KEY_SIZE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MIFARE_CLASSIC_UID_SIZE = common dso_local global i64 0, align 8
@PN532_CMD_InDataExchange = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_pn532_Mifare_Classic_AuthBlock(i32 %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %15 = load i64, i64* @MIFARE_CLASSIC_KEY_SIZE, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %11, align 4
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %18, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i32 0, i32* %28, align 8
  store i32 4, i32* %14, align 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* @MIFARE_CLASSIC_KEY_SIZE, align 8
  %34 = call i32 @RtlCopyMemory(i64 %31, i32* %32, i64 %33)
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MIFARE_CLASSIC_KEY_SIZE, align 8
  %39 = add nsw i64 %37, %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @MIFARE_CLASSIC_UID_SIZE, align 8
  %44 = call i32 @RtlCopyMemory(i64 %39, i32* %42, i64 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PN532_CMD_InDataExchange, align 4
  %47 = ptrtoint %struct.TYPE_9__* %12 to i32
  %48 = call i64 @kull_m_pn532_sendrecv(i32 %45, i32 %46, i32 %47, i32 13, i32* %13, i32* %14)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %5
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %50, %5
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

declare dso_local i32 @RtlCopyMemory(i64, i32*, i64) #1

declare dso_local i64 @kull_m_pn532_sendrecv(i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
