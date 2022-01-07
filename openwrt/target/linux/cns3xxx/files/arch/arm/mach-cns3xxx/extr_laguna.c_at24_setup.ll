; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/arch/arm/mach-cns3xxx/extr_laguna.c_at24_setup.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/cns3xxx/files/arch/arm/mach-cns3xxx/extr_laguna.c_at24_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmem_device = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@at24_nvmem = common dso_local global %struct.nvmem_device* null, align 8
@laguna_net_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@laguna_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmem_device*, i8*)* @at24_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at24_setup(%struct.nvmem_device* %0, i8* %1) #0 {
  %3 = alloca %struct.nvmem_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [16 x i8], align 16
  store %struct.nvmem_device* %0, %struct.nvmem_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.nvmem_device*, %struct.nvmem_device** %3, align 8
  store %struct.nvmem_device* %6, %struct.nvmem_device** @at24_nvmem, align 8
  %7 = load %struct.nvmem_device*, %struct.nvmem_device** @at24_nvmem, align 8
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %9 = call i32 @nvmem_device_read(%struct.nvmem_device* %7, i32 256, i32 6, i8* %8)
  %10 = icmp eq i32 %9, 6
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @laguna_net_data, i32 0, i32 0), align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %15 = load i32, i32* @ETH_ALEN, align 4
  %16 = call i32 @memcpy(i32* %13, i8* %14, i32 %15)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load %struct.nvmem_device*, %struct.nvmem_device** @at24_nvmem, align 8
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %20 = call i32 @nvmem_device_read(%struct.nvmem_device* %18, i32 262, i32 6, i8* %19)
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @laguna_net_data, i32 0, i32 0), align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i32* %24, i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %22, %17
  %29 = load %struct.nvmem_device*, %struct.nvmem_device** @at24_nvmem, align 8
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %31 = call i32 @nvmem_device_read(%struct.nvmem_device* %29, i32 268, i32 6, i8* %30)
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @laguna_net_data, i32 0, i32 0), align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcpy(i32* %35, i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.nvmem_device*, %struct.nvmem_device** @at24_nvmem, align 8
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %42 = call i32 @nvmem_device_read(%struct.nvmem_device* %40, i32 274, i32 6, i8* %41)
  %43 = icmp eq i32 %42, 6
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @laguna_net_data, i32 0, i32 0), align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memcpy(i32* %46, i8* %47, i32 %48)
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.nvmem_device*, %struct.nvmem_device** @at24_nvmem, align 8
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %53 = call i32 @nvmem_device_read(%struct.nvmem_device* %51, i32 304, i32 16, i8* %52)
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %57 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @laguna_info, i32 0, i32 4), i8* %56, i32 16)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.nvmem_device*, %struct.nvmem_device** @at24_nvmem, align 8
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %61 = call i32 @nvmem_device_read(%struct.nvmem_device* %59, i32 320, i32 1, i8* %60)
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %65 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @laguna_info, i32 0, i32 3), i8* %64, i32 1)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.nvmem_device*, %struct.nvmem_device** @at24_nvmem, align 8
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %69 = call i32 @nvmem_device_read(%struct.nvmem_device* %67, i32 321, i32 1, i8* %68)
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %73 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @laguna_info, i32 0, i32 2), i8* %72, i32 1)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.nvmem_device*, %struct.nvmem_device** @at24_nvmem, align 8
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %77 = call i32 @nvmem_device_read(%struct.nvmem_device* %75, i32 322, i32 4, i8* %76)
  %78 = icmp eq i32 %77, 4
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %81 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @laguna_info, i32 0, i32 1), i8* %80, i32 4)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.nvmem_device*, %struct.nvmem_device** @at24_nvmem, align 8
  %84 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %85 = call i32 @nvmem_device_read(%struct.nvmem_device* %83, i32 326, i32 4, i8* %84)
  %86 = icmp eq i32 %85, 4
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %89 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @laguna_info, i32 0, i32 0), i8* %88, i32 4)
  br label %90

90:                                               ; preds = %87, %82
  ret void
}

declare dso_local i32 @nvmem_device_read(%struct.nvmem_device*, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
