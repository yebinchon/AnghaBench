; ModuleID = '/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_start.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panda_dev_priv = type { i32, i32, i32, i32* }
%struct.urb = type { i32, i32 }

@PANDA_NUM_CAN_INTERFACES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Can not set alternate setting to 1, error: %i\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PANDA_USB_RX_BUFF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@panda_usb_read_int_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed in start, while submitting urb.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panda_dev_priv*)* @panda_usb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panda_usb_start(%struct.panda_dev_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panda_dev_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.panda_dev_priv* %0, %struct.panda_dev_priv** %3, align 8
  store %struct.urb* null, %struct.urb** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @PANDA_NUM_CAN_INTERFACES, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %14 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @panda_init_ctx(i32 %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %26 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_set_interface(i32 %27, i32 0, i32 1)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %33 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %116

38:                                               ; preds = %24
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %39)
  store %struct.urb* %40, %struct.urb** %5, align 8
  %41 = load %struct.urb*, %struct.urb** %5, align 8
  %42 = icmp ne %struct.urb* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %116

46:                                               ; preds = %38
  %47 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %48 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PANDA_USB_RX_BUFF_SIZE, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load %struct.urb*, %struct.urb** %5, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 0
  %54 = call i32* @usb_alloc_coherent(i32 %49, i32 %50, i32 %51, i32* %53)
  store i32* %54, i32** %6, align 8
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %66, label %57

57:                                               ; preds = %46
  %58 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %59 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.urb*, %struct.urb** %5, align 8
  %63 = call i32 @usb_free_urb(%struct.urb* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %116

66:                                               ; preds = %46
  %67 = load %struct.urb*, %struct.urb** %5, align 8
  %68 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %69 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %72 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_rcvintpipe(i32 %73, i32 1)
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* @PANDA_USB_RX_BUFF_SIZE, align 4
  %77 = load i32, i32* @panda_usb_read_int_callback, align 4
  %78 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %79 = call i32 @usb_fill_int_urb(%struct.urb* %67, i32 %70, i32 %74, i32* %75, i32 %76, i32 %77, %struct.panda_dev_priv* %78, i32 5)
  %80 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %81 = load %struct.urb*, %struct.urb** %5, align 8
  %82 = getelementptr inbounds %struct.urb, %struct.urb* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.urb*, %struct.urb** %5, align 8
  %86 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %87 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %86, i32 0, i32 2
  %88 = call i32 @usb_anchor_urb(%struct.urb* %85, i32* %87)
  %89 = load %struct.urb*, %struct.urb** %5, align 8
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i32 @usb_submit_urb(%struct.urb* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %66
  %95 = load %struct.urb*, %struct.urb** %5, align 8
  %96 = call i32 @usb_unanchor_urb(%struct.urb* %95)
  %97 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %98 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PANDA_USB_RX_BUFF_SIZE, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.urb*, %struct.urb** %5, align 8
  %103 = getelementptr inbounds %struct.urb, %struct.urb* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @usb_free_coherent(i32 %99, i32 %100, i32* %101, i32 %104)
  %106 = load %struct.urb*, %struct.urb** %5, align 8
  %107 = call i32 @usb_free_urb(%struct.urb* %106)
  %108 = load %struct.panda_dev_priv*, %struct.panda_dev_priv** %3, align 8
  %109 = getelementptr inbounds %struct.panda_dev_priv, %struct.panda_dev_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  br label %116

113:                                              ; preds = %66
  %114 = load %struct.urb*, %struct.urb** %5, align 8
  %115 = call i32 @usb_free_urb(%struct.urb* %114)
  store i32 0, i32* %2, align 4
  br label %116

116:                                              ; preds = %113, %94, %57, %43, %31
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @panda_init_ctx(i32) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.panda_dev_priv*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
