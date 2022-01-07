; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ep_trans_in_next.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ep_trans_in_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint_callback_parameter = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 (i32, i64, i32)*, i32* }

@USB_EP_ADDR_MASK = common dso_local global i32 0, align 4
@UDD_ENDPOINT_MAX_TRANS = common dso_local global i32 0, align 4
@usb_device = common dso_local global i32 0, align 4
@UDD_EP_TRANSFER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @udd_ep_trans_in_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udd_ep_trans_in_next(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usb_endpoint_callback_parameter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.usb_endpoint_callback_parameter*
  store %struct.usb_endpoint_callback_parameter* %11, %struct.usb_endpoint_callback_parameter** %3, align 8
  %12 = load %struct.usb_endpoint_callback_parameter*, %struct.usb_endpoint_callback_parameter** %3, align 8
  %13 = getelementptr inbounds %struct.usb_endpoint_callback_parameter, %struct.usb_endpoint_callback_parameter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call %struct.TYPE_3__* @udd_ep_get_job(i32 %15)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %9, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @USB_EP_ADDR_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %5, align 4
  %23 = load %struct.usb_endpoint_callback_parameter*, %struct.usb_endpoint_callback_parameter** %3, align 8
  %24 = getelementptr inbounds %struct.usb_endpoint_callback_parameter, %struct.usb_endpoint_callback_parameter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %81

38:                                               ; preds = %1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @UDD_ENDPOINT_MAX_TRANS, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = load i32, i32* @UDD_ENDPOINT_MAX_TRANS, align 4
  %51 = load i32, i32* @UDD_ENDPOINT_MAX_TRANS, align 4
  %52 = load i32, i32* %5, align 4
  %53 = srem i32 %51, %52
  %54 = sub nsw i32 %50, %53
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %49, %38
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %5, align 4
  %63 = srem i32 %61, %62
  %64 = icmp eq i32 0, %63
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  %67 = zext i1 %66 to i32
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @usb_device_endpoint_write_buffer_job(i32* @usb_device, i32 %70, i32* %78, i32 %79)
  br label %117

81:                                               ; preds = %1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  store i32 0, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 6
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %92, i64 %96
  %98 = call i32 @usb_device_endpoint_write_buffer_job(i32* @usb_device, i32 %89, i32* %97, i32 0)
  br label %117

99:                                               ; preds = %81
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  store i32 0, i32* %101, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 5
  %104 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %103, align 8
  %105 = icmp ne i32 (i32, i64, i32)* null, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 5
  %109 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %108, align 8
  %110 = load i32, i32* @UDD_EP_TRANSFER_OK, align 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %4, align 4
  %116 = call i32 %109(i32 %110, i64 %114, i32 %115)
  br label %117

117:                                              ; preds = %65, %86, %106, %99
  ret void
}

declare dso_local %struct.TYPE_3__* @udd_ep_get_job(i32) #1

declare dso_local i32 @usb_device_endpoint_write_buffer_job(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
