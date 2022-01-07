; ModuleID = '/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_udc.c_udc_req_std_dev_get_descriptor.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/tmk_core/protocol/arm_atsam/usb/extr_udc.c_udc_req_std_dev_get_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@udd_g_ctrlreq = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@udc_config = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @udc_req_std_dev_get_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_req_std_dev_get_descriptor() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @udd_g_ctrlreq, i32 0, i32 1, i32 0), align 8
  %4 = and i32 %3, 255
  %5 = sext i32 %4 to i64
  store i64 %5, i64* %2, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @udd_g_ctrlreq, i32 0, i32 1, i32 0), align 8
  %7 = ashr i32 %6, 8
  %8 = sext i32 %7 to i64
  switch i64 %8, label %58 [
    i64 131, label %9
    i64 132, label %16
    i64 133, label %42
    i64 128, label %53
  ]

9:                                                ; preds = %0
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @udc_config, i32 0, i32 2), align 8
  %11 = bitcast %struct.TYPE_20__* %10 to i64*
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @udc_config, i32 0, i32 2), align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @udd_set_setup_payload(i64* %11, i32 %14)
  br label %59

16:                                               ; preds = %0
  %17 = load i64, i64* %2, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @udc_config, i32 0, i32 2), align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp uge i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %66

23:                                               ; preds = %16
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @udc_config, i32 0, i32 1), align 8
  %25 = load i64, i64* %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = bitcast %struct.TYPE_21__* %28 to i64*
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @udc_config, i32 0, i32 1), align 8
  %31 = load i64, i64* %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = call i32 @udd_set_setup_payload(i64* %29, i32 %37)
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @udd_g_ctrlreq, i32 0, i32 2), align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_13__*
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 132, i32* %41, align 4
  br label %59

42:                                               ; preds = %0
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @udc_config, i32 0, i32 0), align 8
  %44 = icmp eq %struct.TYPE_23__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %1, align 4
  br label %66

46:                                               ; preds = %42
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @udc_config, i32 0, i32 0), align 8
  %48 = bitcast %struct.TYPE_23__* %47 to i64*
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @udc_config, i32 0, i32 0), align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @udd_set_setup_payload(i64* %48, i32 %51)
  br label %59

53:                                               ; preds = %0
  %54 = call i32 (...) @udc_req_std_dev_get_str_desc()
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  store i32 0, i32* %1, align 4
  br label %66

57:                                               ; preds = %53
  br label %59

58:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %66

59:                                               ; preds = %57, %46, %23, %9
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @udd_g_ctrlreq, i32 0, i32 1, i32 1), align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @udd_g_ctrlreq, i32 0, i32 0), align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @udd_g_ctrlreq, i32 0, i32 1, i32 1), align 8
  store i64 %64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @udd_g_ctrlreq, i32 0, i32 0), align 8
  br label %65

65:                                               ; preds = %63, %59
  store i32 1, i32* %1, align 4
  br label %66

66:                                               ; preds = %65, %58, %56, %45, %22
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i32 @udd_set_setup_payload(i64*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @udc_req_std_dev_get_str_desc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
