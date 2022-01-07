; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_vhci_driver.c_parse_status.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/usbip/libsrc/extr_vhci_driver.c_parse_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.usbip_imported_device* }
%struct.usbip_imported_device = type { i32, i32, i32, i32, i32, i32 }

@SYSFS_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%2s  %d %d %d %x %u %31s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"sscanf failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"hub %s port %d status %d speed %d devid %x\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"sockfd %u lbusid %s\00", align 1
@vhci_driver = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@HUB_SPEED_HIGH = common dso_local global i32 0, align 4
@HUB_SPEED_SUPER = common dso_local global i32 0, align 4
@VDEV_ST_NULL = common dso_local global i32 0, align 4
@VDEV_ST_NOTASSIGNED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"imported_device_init failed\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_status(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.usbip_imported_device*, align 8
  %14 = alloca [3 x i8], align 1
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 10)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %123

21:                                               ; preds = %1
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %5, align 8
  br label %24

24:                                               ; preds = %120, %21
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %121

29:                                               ; preds = %24
  %30 = load i32, i32* @SYSFS_BUS_ID_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %11, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %12, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %36 = call i32 @sscanf(i8* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %35, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i8* %33)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 5
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load i32, i32* %4, align 4
  %41 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = call i32 (...) @BUG()
  br label %43

43:                                               ; preds = %39, %29
  %44 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %50, i8* %33)
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vhci_driver, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.usbip_imported_device, %struct.usbip_imported_device* %54, i64 %56
  store %struct.usbip_imported_device* %57, %struct.usbip_imported_device** %13, align 8
  %58 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %13, align 8
  %59 = call i32 @memset(%struct.usbip_imported_device* %58, i32 0, i32 24)
  %60 = getelementptr inbounds [3 x i8], [3 x i8]* %14, i64 0, i64 0
  %61 = call i64 @strncmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %60, i32 2)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %43
  %64 = load i32, i32* @HUB_SPEED_HIGH, align 4
  %65 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %13, align 8
  %66 = getelementptr inbounds %struct.usbip_imported_device, %struct.usbip_imported_device* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 4
  br label %71

67:                                               ; preds = %43
  %68 = load i32, i32* @HUB_SPEED_SUPER, align 4
  %69 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %13, align 8
  %70 = getelementptr inbounds %struct.usbip_imported_device, %struct.usbip_imported_device* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %13, align 8
  %74 = getelementptr inbounds %struct.usbip_imported_device, %struct.usbip_imported_device* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %13, align 8
  %77 = getelementptr inbounds %struct.usbip_imported_device, %struct.usbip_imported_device* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %13, align 8
  %80 = getelementptr inbounds %struct.usbip_imported_device, %struct.usbip_imported_device* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 16
  %83 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %13, align 8
  %84 = getelementptr inbounds %struct.usbip_imported_device, %struct.usbip_imported_device* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, 65535
  %87 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %13, align 8
  %88 = getelementptr inbounds %struct.usbip_imported_device, %struct.usbip_imported_device* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %13, align 8
  %90 = getelementptr inbounds %struct.usbip_imported_device, %struct.usbip_imported_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @VDEV_ST_NULL, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %71
  %95 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %13, align 8
  %96 = getelementptr inbounds %struct.usbip_imported_device, %struct.usbip_imported_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @VDEV_ST_NOTASSIGNED, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %13, align 8
  %102 = call %struct.usbip_imported_device* @imported_device_init(%struct.usbip_imported_device* %101, i8* %33)
  store %struct.usbip_imported_device* %102, %struct.usbip_imported_device** %13, align 8
  %103 = load %struct.usbip_imported_device*, %struct.usbip_imported_device** %13, align 8
  %104 = icmp ne %struct.usbip_imported_device* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %100
  %106 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %15, align 4
  br label %117

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %94, %71
  %109 = load i8*, i8** %5, align 8
  %110 = call i8* @strchr(i8* %109, i8 signext 10)
  store i8* %110, i8** %5, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store i32 3, i32* %15, align 4
  br label %117

114:                                              ; preds = %108
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %5, align 8
  store i32 0, i32* %15, align 4
  br label %117

117:                                              ; preds = %114, %113, %105
  %118 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %15, align 4
  switch i32 %119, label %125 [
    i32 0, label %120
    i32 1, label %123
    i32 3, label %121
  ]

120:                                              ; preds = %117
  br label %24

121:                                              ; preds = %117, %24
  %122 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %117, %20
  %124 = load i32, i32* %2, align 4
  ret i32 %124

125:                                              ; preds = %117
  unreachable
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sscanf(i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @memset(%struct.usbip_imported_device*, i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.usbip_imported_device* @imported_device_init(%struct.usbip_imported_device*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
