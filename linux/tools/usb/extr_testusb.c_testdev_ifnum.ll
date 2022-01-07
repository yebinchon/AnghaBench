; ModuleID = '/home/carl/AnghaBench/linux/tools/usb/extr_testusb.c_testdev_ifnum.c'
source_filename = "/home/carl/AnghaBench/linux/tools/usb/extr_testusb.c_testdev_ifnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device_descriptor = type { i32, i64, i32, i32, i64 }

@USB_DT_DEVICE = common dso_local global i64 0, align 8
@USB_CLASS_PER_INTERFACE = common dso_local global i64 0, align 8
@USB_CLASS_VENDOR_SPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @testdev_ifnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testdev_ifnum(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.usb_device_descriptor, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @fread(%struct.usb_device_descriptor* %4, i32 32, i32 1, i32* %5)
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %134

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 32
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @USB_DT_DEVICE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9
  store i32 -1, i32* %2, align 4
  br label %134

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1351
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 4098
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %134

29:                                               ; preds = %24, %20
  %30 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1351
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 8757
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %134

38:                                               ; preds = %33, %29
  %39 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1204
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 34323
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %134

47:                                               ; preds = %42, %38
  %48 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 1351
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %134

56:                                               ; preds = %51, %47
  %57 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1741
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 267
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %134

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1317
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 42144
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %2, align 4
  br label %134

74:                                               ; preds = %69, %65
  %75 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 1317
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 42148
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @testdev_ffs_ifnum(i32* %83)
  store i32 %84, i32* %2, align 4
  br label %134

85:                                               ; preds = %78, %74
  %86 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 1317
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 42147
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %134

94:                                               ; preds = %89, %85
  %95 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 65520
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 65520
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %134

103:                                              ; preds = %98, %94
  %104 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 2914
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 89
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %134

112:                                              ; preds = %107, %103
  %113 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 1317
  br i1 %115, label %116, label %133

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 42156
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @USB_CLASS_PER_INTERFACE, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %130, label %125

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %4, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @USB_CLASS_VENDOR_SPEC, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125, %120
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @testdev_ffs_ifnum(i32* %131)
  store i32 %132, i32* %2, align 4
  br label %134

133:                                              ; preds = %125, %116, %112
  store i32 -1, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %130, %111, %102, %93, %82, %73, %64, %55, %46, %37, %28, %19, %8
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @fread(%struct.usb_device_descriptor*, i32, i32, i32*) #1

declare dso_local i32 @testdev_ffs_ifnum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
