; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ep_trans_out_next.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_usb_device_udd.c_udd_ep_trans_out_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint_callback_parameter = type { i32, i64, i64 }
%struct.TYPE_3__ = type { i64, i32, i64, i64, i32, i32 (i32, i64, i32)*, i32* }

@USB_EP_ADDR_MASK = common dso_local global i32 0, align 4
@udd_ep_out_cache_buffer = common dso_local global i32** null, align 8
@UDD_ENDPOINT_MAX_TRANS = common dso_local global i64 0, align 8
@usb_device = common dso_local global i32 0, align 4
@UDD_EP_TRANSFER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @udd_ep_trans_out_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udd_ep_trans_out_next(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.usb_endpoint_callback_parameter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.usb_endpoint_callback_parameter*
  store %struct.usb_endpoint_callback_parameter* %11, %struct.usb_endpoint_callback_parameter** %3, align 8
  %12 = load %struct.usb_endpoint_callback_parameter*, %struct.usb_endpoint_callback_parameter** %3, align 8
  %13 = getelementptr inbounds %struct.usb_endpoint_callback_parameter, %struct.usb_endpoint_callback_parameter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
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
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.usb_endpoint_callback_parameter*, %struct.usb_endpoint_callback_parameter** %3, align 8
  %24 = getelementptr inbounds %struct.usb_endpoint_callback_parameter, %struct.usb_endpoint_callback_parameter* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32**, i32*** @udd_ep_out_cache_buffer, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = srem i64 %46, %47
  %49 = call i32 @memcpy(i32* %37, i32* %43, i64 %48)
  br label %50

50:                                               ; preds = %30, %1
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ugt i64 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %50
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.usb_endpoint_callback_parameter*, %struct.usb_endpoint_callback_parameter** %3, align 8
  %72 = getelementptr inbounds %struct.usb_endpoint_callback_parameter, %struct.usb_endpoint_callback_parameter* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %70, %73
  br i1 %74, label %75, label %134

75:                                               ; preds = %69
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %134

83:                                               ; preds = %75
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = sub i64 %86, %89
  store i64 %90, i64* %7, align 8
  %91 = load i64, i64* @UDD_ENDPOINT_MAX_TRANS, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %83
  %95 = load i64, i64* @UDD_ENDPOINT_MAX_TRANS, align 8
  %96 = load i64, i64* @UDD_ENDPOINT_MAX_TRANS, align 8
  %97 = load i64, i64* %5, align 8
  %98 = srem i64 %96, %97
  %99 = sub nsw i64 %95, %98
  store i64 %99, i64* %7, align 8
  br label %106

100:                                              ; preds = %83
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %5, align 8
  %103 = srem i64 %101, %102
  %104 = load i64, i64* %7, align 8
  %105 = sub nsw i64 %104, %103
  store i64 %105, i64* %7, align 8
  br label %106

106:                                              ; preds = %100, %94
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* %5, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load i32**, i32*** @udd_ep_out_cache_buffer, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %114, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @usb_device_endpoint_read_buffer_job(i32* @usb_device, i32 %113, i32* %119, i64 %120)
  br label %133

122:                                              ; preds = %106
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i64, i64* %7, align 8
  %132 = call i32 @usb_device_endpoint_read_buffer_job(i32* @usb_device, i32 %123, i32* %130, i64 %131)
  br label %133

133:                                              ; preds = %122, %110
  br label %151

134:                                              ; preds = %75, %69
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 4
  store i32 0, i32* %136, align 8
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 5
  %139 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %138, align 8
  %140 = icmp ne i32 (i32, i64, i32)* null, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %134
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 5
  %144 = load i32 (i32, i64, i32)*, i32 (i32, i64, i32)** %143, align 8
  %145 = load i32, i32* @UDD_EP_TRANSFER_OK, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %4, align 4
  %150 = call i32 %144(i32 %145, i64 %148, i32 %149)
  br label %151

151:                                              ; preds = %133, %141, %134
  ret void
}

declare dso_local %struct.TYPE_3__* @udd_ep_get_job(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @usb_device_endpoint_read_buffer_job(i32*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
