; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/user/extr_user_main.c_phy_data_setup.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/user/extr_user_main.c_phy_data_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@SYSTEM_PARTITION_PHY_DATA = common dso_local global i64 0, align 8
@INTERNAL_FLASH_SECTOR_SIZE = common dso_local global i32 0, align 4
@PLATFORM_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Writing Init Data to 0x%08x\0A\00", align 1
@init_data = common dso_local global i32 0, align 4
@INIT_DATA_SIZE = common dso_local global i32 0, align 4
@PLATFORM_RCR_PHY_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @phy_data_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_data_setup(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 16, i1 false)
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %61, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %64

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SYSTEM_PARTITION_PHY_DATA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %60

23:                                               ; preds = %14
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @platform_s_flash_read(i32* %30, i32 %31, i32 16)
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = icmp ne i32 %34, 5
  br i1 %35, label %36, label %57

36:                                               ; preds = %23
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @INTERNAL_FLASH_SECTOR_SIZE, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @platform_flash_erase_sector(i32 %45)
  %47 = load i64, i64* @PLATFORM_OK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %36
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @os_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @init_data, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @INIT_DATA_SIZE, align 4
  %55 = call i32 @platform_s_flash_write(i32 %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %36
  br label %57

57:                                               ; preds = %56, %23
  %58 = load i32, i32* @PLATFORM_RCR_PHY_DATA, align 4
  %59 = call i32 @platform_rcr_write(i32 %58, i32* %7, i32 0)
  br label %64

60:                                               ; preds = %14
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %10

64:                                               ; preds = %57, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @platform_s_flash_read(i32*, i32, i32) #2

declare dso_local i64 @platform_flash_erase_sector(i32) #2

declare dso_local i32 @os_printf(i8*, i32) #2

declare dso_local i32 @platform_s_flash_write(i32, i32, i32) #2

declare dso_local i32 @platform_rcr_write(i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
