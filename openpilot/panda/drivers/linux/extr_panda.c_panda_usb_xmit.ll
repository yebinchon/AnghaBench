; ModuleID = '/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_xmit.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/drivers/linux/extr_panda.c_panda_usb_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panda_inf_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.panda_usb_can_msg = type { i32 }
%struct.panda_usb_ctx = type { i32 }
%struct.urb = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PANDA_USB_TX_BUFF_SIZE = common dso_local global i32 0, align 4
@panda_usb_write_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"failed tx_urb %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panda_inf_priv*, %struct.panda_usb_can_msg*, %struct.panda_usb_ctx*)* @panda_usb_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panda_usb_xmit(%struct.panda_inf_priv* %0, %struct.panda_usb_can_msg* %1, %struct.panda_usb_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.panda_inf_priv*, align 8
  %6 = alloca %struct.panda_usb_can_msg*, align 8
  %7 = alloca %struct.panda_usb_ctx*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.panda_inf_priv* %0, %struct.panda_inf_priv** %5, align 8
  store %struct.panda_usb_can_msg* %1, %struct.panda_usb_can_msg** %6, align 8
  store %struct.panda_usb_ctx* %2, %struct.panda_usb_ctx** %7, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %11)
  store %struct.urb* %12, %struct.urb** %8, align 8
  %13 = load %struct.urb*, %struct.urb** %8, align 8
  %14 = icmp ne %struct.urb* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %109

18:                                               ; preds = %3
  %19 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %5, align 8
  %20 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PANDA_USB_TX_BUFF_SIZE, align 4
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = load %struct.urb*, %struct.urb** %8, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  %28 = call i32* @usb_alloc_coherent(i32 %23, i32 %24, i32 %25, i32* %27)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  br label %105

34:                                               ; preds = %18
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.panda_usb_can_msg*, %struct.panda_usb_can_msg** %6, align 8
  %37 = load i32, i32* @PANDA_USB_TX_BUFF_SIZE, align 4
  %38 = call i32 @memcpy(i32* %35, %struct.panda_usb_can_msg* %36, i32 %37)
  %39 = load %struct.urb*, %struct.urb** %8, align 8
  %40 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %5, align 8
  %41 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %5, align 8
  %46 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usb_sndbulkpipe(i32 %49, i32 3)
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* @PANDA_USB_TX_BUFF_SIZE, align 4
  %53 = load i32, i32* @panda_usb_write_bulk_callback, align 4
  %54 = load %struct.panda_usb_ctx*, %struct.panda_usb_ctx** %7, align 8
  %55 = call i32 @usb_fill_bulk_urb(%struct.urb* %39, i32 %44, i32 %50, i32* %51, i32 %52, i32 %53, %struct.panda_usb_ctx* %54)
  %56 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %57 = load %struct.urb*, %struct.urb** %8, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.urb*, %struct.urb** %8, align 8
  %62 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %5, align 8
  %63 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %62, i32 0, i32 2
  %64 = call i32 @usb_anchor_urb(%struct.urb* %61, i32* %63)
  %65 = load %struct.urb*, %struct.urb** %8, align 8
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call i32 @usb_submit_urb(%struct.urb* %65, i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %34
  br label %75

72:                                               ; preds = %34
  %73 = load %struct.urb*, %struct.urb** %8, align 8
  %74 = call i32 @usb_free_urb(%struct.urb* %73)
  store i32 0, i32* %4, align 4
  br label %109

75:                                               ; preds = %71
  %76 = load %struct.urb*, %struct.urb** %8, align 8
  %77 = call i32 @usb_unanchor_urb(%struct.urb* %76)
  %78 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %5, align 8
  %79 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PANDA_USB_TX_BUFF_SIZE, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.urb*, %struct.urb** %8, align 8
  %86 = getelementptr inbounds %struct.urb, %struct.urb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @usb_free_coherent(i32 %82, i32 %83, i32* %84, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %75
  %94 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %5, align 8
  %95 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @netif_device_detach(i32 %96)
  br label %104

98:                                               ; preds = %75
  %99 = load %struct.panda_inf_priv*, %struct.panda_inf_priv** %5, align 8
  %100 = getelementptr inbounds %struct.panda_inf_priv, %struct.panda_inf_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @netdev_warn(i32 %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %98, %93
  br label %105

105:                                              ; preds = %104, %31
  %106 = load %struct.urb*, %struct.urb** %8, align 8
  %107 = call i32 @usb_free_urb(%struct.urb* %106)
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %72, %15
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.panda_usb_can_msg*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.panda_usb_ctx*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
