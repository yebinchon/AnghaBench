; ModuleID = '/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/extr_wizchip_conf.c_reg_wizchip_cs_cbfunc.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/wiznet5k/ethernet/extr_wizchip_conf.c_reg_wizchip_cs_cbfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { void (...)*, void (...)* }

@WIZCHIP = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reg_wizchip_cs_cbfunc(void ()* %0, void ()* %1) #0 {
  %3 = alloca void ()*, align 8
  %4 = alloca void ()*, align 8
  store void ()* %0, void ()** %3, align 8
  store void ()* %1, void ()** %4, align 8
  %5 = load void ()*, void ()** %3, align 8
  %6 = icmp ne void ()* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load void ()*, void ()** %4, align 8
  %9 = icmp ne void ()* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %2
  store void (...)* @wizchip_cs_select, void (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @WIZCHIP, i32 0, i32 0, i32 0), align 8
  store void (...)* @wizchip_cs_deselect, void (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @WIZCHIP, i32 0, i32 0, i32 1), align 8
  br label %16

11:                                               ; preds = %7
  %12 = load void ()*, void ()** %3, align 8
  %13 = bitcast void ()* %12 to void (...)*
  store void (...)* %13, void (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @WIZCHIP, i32 0, i32 0, i32 0), align 8
  %14 = load void ()*, void ()** %4, align 8
  %15 = bitcast void ()* %14 to void (...)*
  store void (...)* %15, void (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @WIZCHIP, i32 0, i32 0, i32 1), align 8
  br label %16

16:                                               ; preds = %11, %10
  ret void
}

declare dso_local void @wizchip_cs_select(...) #1

declare dso_local void @wizchip_cs_deselect(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
