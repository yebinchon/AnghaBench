; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_udc.c_udc_reqstd.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_udc.c_udc_reqstd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@udd_g_ctrlreq = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@USB_REQ_RECIP_DEVICE = common dso_local global i64 0, align 8
@USB_REQ_RECIP_INTERFACE = common dso_local global i64 0, align 8
@USB_REQ_RECIP_ENDPOINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udc_reqstd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_reqstd() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @Udd_setup_is_in()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %33

4:                                                ; preds = %0
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0, i32 0), align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 0, i32* %1, align 4
  br label %62

8:                                                ; preds = %4
  %9 = load i64, i64* @USB_REQ_RECIP_DEVICE, align 8
  %10 = call i64 (...) @Udd_setup_recipient()
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0, i32 1), align 8
  switch i32 %13, label %20 [
    i32 133, label %14
    i32 135, label %16
    i32 136, label %18
  ]

14:                                               ; preds = %12
  %15 = call i32 (...) @udc_req_std_dev_get_status()
  store i32 %15, i32* %1, align 4
  br label %62

16:                                               ; preds = %12
  %17 = call i32 (...) @udc_req_std_dev_get_descriptor()
  store i32 %17, i32* %1, align 4
  br label %62

18:                                               ; preds = %12
  %19 = call i32 (...) @udc_req_std_dev_get_configuration()
  store i32 %19, i32* %1, align 4
  br label %62

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21, %8
  %23 = load i64, i64* @USB_REQ_RECIP_INTERFACE, align 8
  %24 = call i64 (...) @Udd_setup_recipient()
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0, i32 1), align 8
  switch i32 %27, label %30 [
    i32 134, label %28
  ]

28:                                               ; preds = %26
  %29 = call i32 (...) @udc_req_std_iface_get_setting()
  store i32 %29, i32* %1, align 4
  br label %62

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31, %22
  br label %61

33:                                               ; preds = %0
  %34 = load i64, i64* @USB_REQ_RECIP_DEVICE, align 8
  %35 = call i64 (...) @Udd_setup_recipient()
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0, i32 1), align 8
  switch i32 %38, label %48 [
    i32 132, label %39
    i32 137, label %41
    i32 129, label %43
    i32 131, label %45
    i32 130, label %47
  ]

39:                                               ; preds = %37
  %40 = call i32 (...) @udc_req_std_dev_set_address()
  store i32 %40, i32* %1, align 4
  br label %62

41:                                               ; preds = %37
  %42 = call i32 (...) @udc_req_std_dev_clear_feature()
  store i32 %42, i32* %1, align 4
  br label %62

43:                                               ; preds = %37
  %44 = call i32 (...) @udc_req_std_dev_set_feature()
  store i32 %44, i32* %1, align 4
  br label %62

45:                                               ; preds = %37
  %46 = call i32 (...) @udc_req_std_dev_set_configuration()
  store i32 %46, i32* %1, align 4
  br label %62

47:                                               ; preds = %37
  br label %49

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %47
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i64, i64* @USB_REQ_RECIP_INTERFACE, align 8
  %52 = call i64 (...) @Udd_setup_recipient()
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @udd_g_ctrlreq, i32 0, i32 0, i32 1), align 8
  switch i32 %55, label %58 [
    i32 128, label %56
  ]

56:                                               ; preds = %54
  %57 = call i32 (...) @udc_req_std_iface_set_setting()
  store i32 %57, i32* %1, align 4
  br label %62

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %50
  br label %61

61:                                               ; preds = %60, %32
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %61, %56, %45, %43, %41, %39, %28, %18, %16, %14, %7
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i64 @Udd_setup_is_in(...) #1

declare dso_local i64 @Udd_setup_recipient(...) #1

declare dso_local i32 @udc_req_std_dev_get_status(...) #1

declare dso_local i32 @udc_req_std_dev_get_descriptor(...) #1

declare dso_local i32 @udc_req_std_dev_get_configuration(...) #1

declare dso_local i32 @udc_req_std_iface_get_setting(...) #1

declare dso_local i32 @udc_req_std_dev_set_address(...) #1

declare dso_local i32 @udc_req_std_dev_clear_feature(...) #1

declare dso_local i32 @udc_req_std_dev_set_feature(...) #1

declare dso_local i32 @udc_req_std_dev_set_configuration(...) #1

declare dso_local i32 @udc_req_std_iface_set_setting(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
