; ModuleID = '/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_ble_npl_eventq_init.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_ble_npl_eventq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_npl_eventq = type { %struct.ble_npl_eventq*, i32* }

@.str = private unnamed_addr constant [25 x i8] c"ble_npl_eventq_init(%p)\0A\00", align 1
@global_eventq = common dso_local global %struct.ble_npl_eventq* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ble_npl_eventq_init(%struct.ble_npl_eventq* %0) #0 {
  %2 = alloca %struct.ble_npl_eventq*, align 8
  %3 = alloca %struct.ble_npl_eventq**, align 8
  store %struct.ble_npl_eventq* %0, %struct.ble_npl_eventq** %2, align 8
  %4 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %2, align 8
  %5 = call i32 @DEBUG_EVENT_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.ble_npl_eventq* %4)
  %6 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %2, align 8
  %7 = getelementptr inbounds %struct.ble_npl_eventq, %struct.ble_npl_eventq* %6, i32 0, i32 1
  store i32* null, i32** %7, align 8
  store %struct.ble_npl_eventq** @global_eventq, %struct.ble_npl_eventq*** %3, align 8
  br label %8

8:                                                ; preds = %13, %1
  %9 = load %struct.ble_npl_eventq**, %struct.ble_npl_eventq*** %3, align 8
  %10 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %9, align 8
  %11 = icmp ne %struct.ble_npl_eventq* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  br label %13

13:                                               ; preds = %12
  %14 = load %struct.ble_npl_eventq**, %struct.ble_npl_eventq*** %3, align 8
  %15 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %14, align 8
  %16 = getelementptr inbounds %struct.ble_npl_eventq, %struct.ble_npl_eventq* %15, i32 0, i32 0
  store %struct.ble_npl_eventq** %16, %struct.ble_npl_eventq*** %3, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %2, align 8
  %19 = load %struct.ble_npl_eventq**, %struct.ble_npl_eventq*** %3, align 8
  store %struct.ble_npl_eventq* %18, %struct.ble_npl_eventq** %19, align 8
  %20 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %2, align 8
  %21 = getelementptr inbounds %struct.ble_npl_eventq, %struct.ble_npl_eventq* %20, i32 0, i32 0
  store %struct.ble_npl_eventq* null, %struct.ble_npl_eventq** %21, align 8
  ret void
}

declare dso_local i32 @DEBUG_EVENT_printf(i8*, %struct.ble_npl_eventq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
