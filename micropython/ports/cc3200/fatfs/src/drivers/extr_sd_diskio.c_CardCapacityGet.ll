; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sd_diskio.c_CardCapacityGet.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/fatfs/src/drivers/extr_sd_diskio.c_CardCapacityGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }

@CMD_SEND_CSD = common dso_local global i32 0, align 4
@SDHOST_BASE = common dso_local global i32 0, align 4
@SD_SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @CardCapacityGet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CardCapacityGet(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [4 x i64], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = load i32, i32* @CMD_SEND_CSD, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 %12, 16
  %14 = call i64 @CardSendCmd(i32 %9, i32 %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %73

17:                                               ; preds = %1
  %18 = load i32, i32* @SDHOST_BASE, align 4
  %19 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 0
  %20 = call i32 @MAP_SDHostRespGet(i32 %18, i64* %19)
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 3
  %22 = load i64, i64* %21, align 8
  %23 = lshr i64 %22, 30
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %17
  %26 = load i32, i32* @SD_SECTOR_SIZE, align 4
  %27 = mul nsw i32 %26, 1024
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %5, align 8
  %29 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %30 = load i64, i64* %29, align 8
  %31 = lshr i64 %30, 16
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  %33 = load i64, i64* %32, align 16
  %34 = and i64 %33, 63
  %35 = shl i64 %34, 16
  %36 = or i64 %31, %35
  %37 = add i64 %36, 1
  store i64 %37, i64* %6, align 8
  br label %66

38:                                               ; preds = %17
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  %40 = load i64, i64* %39, align 16
  %41 = lshr i64 %40, 16
  %42 = and i64 %41, 15
  %43 = trunc i64 %42 to i32
  %44 = shl i32 1, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %5, align 8
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %47 = load i64, i64* %46, align 8
  %48 = lshr i64 %47, 15
  %49 = and i64 %48, 7
  store i64 %49, i64* %7, align 8
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = lshr i64 %51, 30
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %4, i64 0, i64 2
  %54 = load i64, i64* %53, align 16
  %55 = and i64 %54, 1023
  %56 = shl i64 %55, 2
  %57 = or i64 %52, %56
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, 1
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 2
  %62 = trunc i64 %61 to i32
  %63 = shl i32 1, %62
  %64 = sext i32 %63 to i64
  %65 = mul i64 %59, %64
  store i64 %65, i64* %6, align 8
  br label %66

66:                                               ; preds = %38, %25
  %67 = load i64, i64* %5, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %66, %1
  %74 = load i64, i64* %3, align 8
  %75 = trunc i64 %74 to i32
  ret i32 %75
}

declare dso_local i64 @CardSendCmd(i32, i32) #1

declare dso_local i32 @MAP_SDHostRespGet(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
