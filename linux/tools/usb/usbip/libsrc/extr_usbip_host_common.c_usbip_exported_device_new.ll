; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.c_usbip_exported_device_new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_usbip_host_common.c_usbip_exported_device_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbip_exported_device = type { i64, i64, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.usbip_host_driver = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (i64, %struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*, i32, i32*)* }

@udev_context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"udev_device_new_from_syspath: %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"realloc failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usbip_exported_device* (%struct.usbip_host_driver*, i8*)* @usbip_exported_device_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usbip_exported_device* @usbip_exported_device_new(%struct.usbip_host_driver* %0, i8* %1) #0 {
  %3 = alloca %struct.usbip_exported_device*, align 8
  %4 = alloca %struct.usbip_host_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.usbip_exported_device*, align 8
  %7 = alloca %struct.usbip_exported_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usbip_host_driver* %0, %struct.usbip_host_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.usbip_exported_device* null, %struct.usbip_exported_device** %6, align 8
  %10 = call %struct.usbip_exported_device* @calloc(i32 1, i32 32)
  store %struct.usbip_exported_device* %10, %struct.usbip_exported_device** %6, align 8
  %11 = load i32, i32* @udev_context, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @udev_device_new_from_syspath(i32 %11, i8* %12)
  %14 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %15 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %17 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %21)
  br label %99

23:                                               ; preds = %2
  %24 = load %struct.usbip_host_driver*, %struct.usbip_host_driver** %4, align 8
  %25 = getelementptr inbounds %struct.usbip_host_driver, %struct.usbip_host_driver* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64 (i64, %struct.TYPE_6__*)*, i64 (i64, %struct.TYPE_6__*)** %26, align 8
  %28 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %29 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %32 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %31, i32 0, i32 3
  %33 = call i64 %27(i64 %30, %struct.TYPE_6__* %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %99

36:                                               ; preds = %23
  %37 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %38 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %37, i32 0, i32 3
  %39 = call i64 @read_attr_usbip_status(%struct.TYPE_6__* %38)
  %40 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %41 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %43 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %99

47:                                               ; preds = %36
  %48 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %49 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = add i64 32, %53
  store i64 %54, i64* %8, align 8
  %55 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  store %struct.usbip_exported_device* %55, %struct.usbip_exported_device** %7, align 8
  %56 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call %struct.usbip_exported_device* @realloc(%struct.usbip_exported_device* %56, i64 %57)
  store %struct.usbip_exported_device* %58, %struct.usbip_exported_device** %6, align 8
  %59 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %60 = icmp ne %struct.usbip_exported_device* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %47
  %62 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %7, align 8
  store %struct.usbip_exported_device* %62, %struct.usbip_exported_device** %6, align 8
  %63 = call i32 @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %99

64:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %94, %64
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %68 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %97

72:                                               ; preds = %65
  %73 = load %struct.usbip_host_driver*, %struct.usbip_host_driver** %4, align 8
  %74 = getelementptr inbounds %struct.usbip_host_driver, %struct.usbip_host_driver* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32 (%struct.TYPE_6__*, i32, i32*)*, i32 (%struct.TYPE_6__*, i32, i32*)** %75, align 8
  %77 = icmp ne i32 (%struct.TYPE_6__*, i32, i32*)* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %97

79:                                               ; preds = %72
  %80 = load %struct.usbip_host_driver*, %struct.usbip_host_driver** %4, align 8
  %81 = getelementptr inbounds %struct.usbip_host_driver, %struct.usbip_host_driver* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32 (%struct.TYPE_6__*, i32, i32*)*, i32 (%struct.TYPE_6__*, i32, i32*)** %82, align 8
  %84 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %85 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %84, i32 0, i32 3
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %88 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = call i32 %83(%struct.TYPE_6__* %85, i32 %86, i32* %92)
  br label %94

94:                                               ; preds = %79
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %65

97:                                               ; preds = %78, %65
  %98 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  store %struct.usbip_exported_device* %98, %struct.usbip_exported_device** %3, align 8
  br label %116

99:                                               ; preds = %61, %46, %35, %20
  %100 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %101 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %106 = getelementptr inbounds %struct.usbip_exported_device, %struct.usbip_exported_device* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @udev_device_unref(i64 %107)
  br label %109

109:                                              ; preds = %104, %99
  %110 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %111 = icmp ne %struct.usbip_exported_device* %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %6, align 8
  %114 = call i32 @free(%struct.usbip_exported_device* %113)
  br label %115

115:                                              ; preds = %112, %109
  store %struct.usbip_exported_device* null, %struct.usbip_exported_device** %3, align 8
  br label %116

116:                                              ; preds = %115, %97
  %117 = load %struct.usbip_exported_device*, %struct.usbip_exported_device** %3, align 8
  ret %struct.usbip_exported_device* %117
}

declare dso_local %struct.usbip_exported_device* @calloc(i32, i32) #1

declare dso_local i64 @udev_device_new_from_syspath(i32, i8*) #1

declare dso_local i32 @err(i8*, i8*) #1

declare dso_local i64 @read_attr_usbip_status(%struct.TYPE_6__*) #1

declare dso_local %struct.usbip_exported_device* @realloc(%struct.usbip_exported_device*, i64) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @udev_device_unref(i64) #1

declare dso_local i32 @free(%struct.usbip_exported_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
