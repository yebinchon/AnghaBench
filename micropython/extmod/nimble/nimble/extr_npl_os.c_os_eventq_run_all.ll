; ModuleID = '/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_os_eventq_run_all.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_os_eventq_run_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_npl_eventq = type { %struct.ble_npl_event*, %struct.ble_npl_eventq* }
%struct.ble_npl_event = type { i32 (%struct.ble_npl_event*)*, i32*, %struct.ble_npl_event* }

@global_eventq = common dso_local global %struct.ble_npl_eventq* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"event_run(%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"event_run(%p) done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @os_eventq_run_all() #0 {
  %1 = alloca %struct.ble_npl_eventq*, align 8
  %2 = alloca %struct.ble_npl_event*, align 8
  %3 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** @global_eventq, align 8
  store %struct.ble_npl_eventq* %3, %struct.ble_npl_eventq** %1, align 8
  br label %4

4:                                                ; preds = %46, %0
  %5 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %1, align 8
  %6 = icmp ne %struct.ble_npl_eventq* %5, null
  br i1 %6, label %7, label %50

7:                                                ; preds = %4
  br label %8

8:                                                ; preds = %33, %7
  %9 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %1, align 8
  %10 = getelementptr inbounds %struct.ble_npl_eventq, %struct.ble_npl_eventq* %9, i32 0, i32 0
  %11 = load %struct.ble_npl_event*, %struct.ble_npl_event** %10, align 8
  %12 = icmp ne %struct.ble_npl_event* %11, null
  br i1 %12, label %13, label %45

13:                                               ; preds = %8
  %14 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %1, align 8
  %15 = getelementptr inbounds %struct.ble_npl_eventq, %struct.ble_npl_eventq* %14, i32 0, i32 0
  %16 = load %struct.ble_npl_event*, %struct.ble_npl_event** %15, align 8
  store %struct.ble_npl_event* %16, %struct.ble_npl_event** %2, align 8
  %17 = load %struct.ble_npl_event*, %struct.ble_npl_event** %2, align 8
  %18 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %17, i32 0, i32 2
  %19 = load %struct.ble_npl_event*, %struct.ble_npl_event** %18, align 8
  %20 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %1, align 8
  %21 = getelementptr inbounds %struct.ble_npl_eventq, %struct.ble_npl_eventq* %20, i32 0, i32 0
  store %struct.ble_npl_event* %19, %struct.ble_npl_event** %21, align 8
  %22 = load %struct.ble_npl_event*, %struct.ble_npl_event** %2, align 8
  %23 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %22, i32 0, i32 2
  %24 = load %struct.ble_npl_event*, %struct.ble_npl_event** %23, align 8
  %25 = icmp ne %struct.ble_npl_event* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %13
  %27 = load %struct.ble_npl_event*, %struct.ble_npl_event** %2, align 8
  %28 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %27, i32 0, i32 2
  %29 = load %struct.ble_npl_event*, %struct.ble_npl_event** %28, align 8
  %30 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load %struct.ble_npl_event*, %struct.ble_npl_event** %2, align 8
  %32 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %31, i32 0, i32 2
  store %struct.ble_npl_event* null, %struct.ble_npl_event** %32, align 8
  br label %33

33:                                               ; preds = %26, %13
  %34 = load %struct.ble_npl_event*, %struct.ble_npl_event** %2, align 8
  %35 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.ble_npl_event*, %struct.ble_npl_event** %2, align 8
  %37 = call i32 @DEBUG_EVENT_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.ble_npl_event* %36)
  %38 = load %struct.ble_npl_event*, %struct.ble_npl_event** %2, align 8
  %39 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %38, i32 0, i32 0
  %40 = load i32 (%struct.ble_npl_event*)*, i32 (%struct.ble_npl_event*)** %39, align 8
  %41 = load %struct.ble_npl_event*, %struct.ble_npl_event** %2, align 8
  %42 = call i32 %40(%struct.ble_npl_event* %41)
  %43 = load %struct.ble_npl_event*, %struct.ble_npl_event** %2, align 8
  %44 = call i32 @DEBUG_EVENT_printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.ble_npl_event* %43)
  br label %8

45:                                               ; preds = %8
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %1, align 8
  %48 = getelementptr inbounds %struct.ble_npl_eventq, %struct.ble_npl_eventq* %47, i32 0, i32 1
  %49 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %48, align 8
  store %struct.ble_npl_eventq* %49, %struct.ble_npl_eventq** %1, align 8
  br label %4

50:                                               ; preds = %4
  ret void
}

declare dso_local i32 @DEBUG_EVENT_printf(i8*, %struct.ble_npl_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
