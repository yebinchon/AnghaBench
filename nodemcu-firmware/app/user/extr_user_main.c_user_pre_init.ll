; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/user/extr_user_main.c_user_pre_init.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/user/extr_user_main.c_user_pre_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@user_pre_init.flash_size_scaler = internal global [11 x i8] c"\01\00\02\03\04\03\04\04\05\06\00", align 1
@SIZE_256K = common dso_local global i8 0, align 1
@PLATFORM_RCR_PT = common dso_local global i32 0, align 4
@SIZE_1024K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Flash size (%u) too small to support NodeMCU\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"system SPI FI size:%u, Flash size: %u\0A\00", align 1
@PLATFORM_RCR_PHY_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Invalid system partition table\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_pre_init() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %1, align 8
  %7 = call i32 (...) @system_get_flash_size_map()
  store i32 %7, i32* %3, align 4
  %8 = load i8, i8* @SIZE_256K, align 1
  %9 = sext i8 %8 to i32
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [11 x i8], [11 x i8]* @user_pre_init.flash_size_scaler, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = shl i32 %9, %14
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @PLATFORM_RCR_PT, align 4
  %17 = bitcast %struct.TYPE_8__** %1 to i8**
  %18 = call i32 @platform_rcr_read(i32 %16, i8** %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = udiv i64 %20, 8
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @SIZE_1024K, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %0
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i8*, ...) @os_printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %89

29:                                               ; preds = %0
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (i8*, ...) @os_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = call %struct.TYPE_8__* @os_malloc_iram(i32 %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %2, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %37 = icmp ne %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ne i64 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %38, %33
  br label %89

49:                                               ; preds = %41
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @os_memcpy(%struct.TYPE_8__* %50, %struct.TYPE_8__* %51, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 1
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @first_time_setup(%struct.TYPE_8__* %63, i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %49
  %69 = load i32, i32* @PLATFORM_RCR_PHY_DATA, align 4
  %70 = call i32 @platform_rcr_read(i32 %69, i8** null)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @phy_data_setup(%struct.TYPE_8__* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load i32, i32* %3, align 4
  %78 = icmp ugt i32 %77, 1
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i64 @system_partition_table_regist(%struct.TYPE_8__* %80, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %89

86:                                               ; preds = %79, %76
  %87 = call i32 (i8*, ...) @os_printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %88
  br label %88

89:                                               ; preds = %85, %48, %26
  ret void
}

declare dso_local i32 @system_get_flash_size_map(...) #1

declare dso_local i32 @platform_rcr_read(i32, i8**) #1

declare dso_local i32 @os_printf(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @os_malloc_iram(i32) #1

declare dso_local i32 @os_memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @first_time_setup(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @phy_data_setup(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @system_partition_table_regist(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
