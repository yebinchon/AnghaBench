; ModuleID = '/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_flash_page_erase.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/stm32/mboot/extr_main.c_flash_page_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }

@FLASH_FLAG_EOP = common dso_local global i32 0, align 4
@FLASH_FLAG_OPERR = common dso_local global i32 0, align 4
@FLASH_FLAG_WRPERR = common dso_local global i32 0, align 4
@FLASH_FLAG_PGAERR = common dso_local global i32 0, align 4
@FLASH_FLAG_PGPERR = common dso_local global i32 0, align 4
@FLASH_FLAG_PGSERR = common dso_local global i32 0, align 4
@TYPEERASE_SECTORS = common dso_local global i32 0, align 4
@VOLTAGE_RANGE_3 = common dso_local global i32 0, align 4
@HAL_OK = common dso_local global i64 0, align 8
@FLASH_FLAG_ALL_ERRORS_BANK1 = common dso_local global i32 0, align 4
@FLASH_FLAG_ALL_ERRORS_BANK2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*)* @flash_page_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flash_page_erase(i64 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @flash_get_sector_index(i64 %11, i64* %6)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64*, i64** %5, align 8
  store i64 %19, i64* %20, align 8
  %21 = call i32 (...) @HAL_FLASH_Unlock()
  %22 = load i32, i32* @FLASH_FLAG_EOP, align 4
  %23 = load i32, i32* @FLASH_FLAG_OPERR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FLASH_FLAG_WRPERR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @FLASH_FLAG_PGAERR, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @FLASH_FLAG_PGPERR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @FLASH_FLAG_PGSERR, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @__HAL_FLASH_CLEAR_FLAG(i32 %32)
  %34 = load i32, i32* @TYPEERASE_SECTORS, align 4
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* @VOLTAGE_RANGE_3, align 4
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i64 %38, i64* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 1, i32* %40, align 8
  store i64 0, i64* %9, align 8
  %41 = call i64 @HAL_FLASHEx_Erase(%struct.TYPE_3__* %8, i64* %9)
  %42 = load i64, i64* @HAL_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %63

45:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %59, %45
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 64
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i64, i64* %4, align 8
  %51 = inttoptr i64 %50 to i64*
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load volatile i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 4294967295
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 -2, i32* %3, align 4
  br label %63

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %46

62:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %57, %44, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @flash_get_sector_index(i64, i64*) #1

declare dso_local i32 @HAL_FLASH_Unlock(...) #1

declare dso_local i32 @__HAL_FLASH_CLEAR_FLAG(i32) #1

declare dso_local i64 @HAL_FLASHEx_Erase(%struct.TYPE_3__*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
