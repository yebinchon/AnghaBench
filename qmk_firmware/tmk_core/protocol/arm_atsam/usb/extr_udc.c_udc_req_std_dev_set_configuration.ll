; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_udc.c_udc_req_std_dev_set_configuration.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_udc.c_udc_req_std_dev_set_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_13__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@udd_g_ctrlreq = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@udc_config = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@udc_num_configuration = common dso_local global i32 0, align 4
@udc_ptr_conf = common dso_local global %struct.TYPE_13__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udc_req_std_dev_set_configuration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_req_std_dev_set_configuration() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @udd_g_ctrlreq, i32 0, i32 0, i32 1), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %49

6:                                                ; preds = %0
  %7 = call i32 (...) @udd_getaddress()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store i32 0, i32* %1, align 4
  br label %49

10:                                               ; preds = %6
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @udd_g_ctrlreq, i32 0, i32 0, i32 0), align 8
  %12 = and i32 %11, 255
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @udc_config, i32 0, i32 2), align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %49

18:                                               ; preds = %10
  %19 = call i32 (...) @udc_reset()
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @udd_g_ctrlreq, i32 0, i32 0, i32 0), align 8
  %21 = and i32 %20, 255
  store i32 %21, i32* @udc_num_configuration, align 4
  %22 = load i32, i32* @udc_num_configuration, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 1, i32* %1, align 4
  br label %49

25:                                               ; preds = %18
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @udc_config, i32 0, i32 0), align 8
  %27 = load i32, i32* @udc_num_configuration, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i64 %29
  store %struct.TYPE_13__* %30, %struct.TYPE_13__** @udc_ptr_conf, align 8
  store i64 0, i64* %2, align 8
  br label %31

31:                                               ; preds = %45, %25
  %32 = load i64, i64* %2, align 8
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** @udc_ptr_conf, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %32, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load i64, i64* %2, align 8
  %41 = call i32 @udc_iface_enable(i64 %40, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  br label %49

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %2, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %2, align 8
  br label %31

48:                                               ; preds = %31
  store i32 1, i32* %1, align 4
  br label %49

49:                                               ; preds = %48, %43, %24, %17, %9, %5
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @udd_getaddress(...) #1

declare dso_local i32 @udc_reset(...) #1

declare dso_local i32 @udc_iface_enable(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
