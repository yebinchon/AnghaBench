; ModuleID = '/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_ble_npl_eventq_put.c'
source_filename = "/home/carl/AnghaBench/micropython/extmod/nimble/nimble/extr_npl_os.c_ble_npl_eventq_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_npl_eventq = type { %struct.ble_npl_event* }
%struct.ble_npl_event = type { %struct.ble_npl_event*, %struct.ble_npl_event*, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"ble_npl_eventq_put(%p, %p (%p, %p))\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"  --> already in queue\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"  --> %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ble_npl_eventq_put(%struct.ble_npl_eventq* %0, %struct.ble_npl_event* %1) #0 {
  %3 = alloca %struct.ble_npl_eventq*, align 8
  %4 = alloca %struct.ble_npl_event*, align 8
  %5 = alloca %struct.ble_npl_event*, align 8
  store %struct.ble_npl_eventq* %0, %struct.ble_npl_eventq** %3, align 8
  store %struct.ble_npl_event* %1, %struct.ble_npl_event** %4, align 8
  %6 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %3, align 8
  %7 = load %struct.ble_npl_event*, %struct.ble_npl_event** %4, align 8
  %8 = load %struct.ble_npl_event*, %struct.ble_npl_event** %4, align 8
  %9 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ble_npl_event*, %struct.ble_npl_event** %4, align 8
  %12 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i8*, ...) @DEBUG_EVENT_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.ble_npl_eventq* %6, %struct.ble_npl_event* %7, i32 %10, i32 %13)
  %15 = load %struct.ble_npl_event*, %struct.ble_npl_event** %4, align 8
  %16 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %15, i32 0, i32 1
  store %struct.ble_npl_event* null, %struct.ble_npl_event** %16, align 8
  %17 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %3, align 8
  %18 = getelementptr inbounds %struct.ble_npl_eventq, %struct.ble_npl_eventq* %17, i32 0, i32 0
  %19 = load %struct.ble_npl_event*, %struct.ble_npl_event** %18, align 8
  %20 = icmp eq %struct.ble_npl_event* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.ble_npl_event*, %struct.ble_npl_event** %4, align 8
  %23 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %3, align 8
  %24 = getelementptr inbounds %struct.ble_npl_eventq, %struct.ble_npl_eventq* %23, i32 0, i32 0
  store %struct.ble_npl_event* %22, %struct.ble_npl_event** %24, align 8
  %25 = load %struct.ble_npl_event*, %struct.ble_npl_event** %4, align 8
  %26 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %25, i32 0, i32 0
  store %struct.ble_npl_event* null, %struct.ble_npl_event** %26, align 8
  br label %58

27:                                               ; preds = %2
  %28 = load %struct.ble_npl_eventq*, %struct.ble_npl_eventq** %3, align 8
  %29 = getelementptr inbounds %struct.ble_npl_eventq, %struct.ble_npl_eventq* %28, i32 0, i32 0
  %30 = load %struct.ble_npl_event*, %struct.ble_npl_event** %29, align 8
  store %struct.ble_npl_event* %30, %struct.ble_npl_event** %5, align 8
  br label %31

31:                                               ; preds = %27, %43
  %32 = load %struct.ble_npl_event*, %struct.ble_npl_event** %5, align 8
  %33 = load %struct.ble_npl_event*, %struct.ble_npl_event** %4, align 8
  %34 = icmp eq %struct.ble_npl_event* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (i8*, ...) @DEBUG_EVENT_printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %58

37:                                               ; preds = %31
  %38 = load %struct.ble_npl_event*, %struct.ble_npl_event** %5, align 8
  %39 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %38, i32 0, i32 1
  %40 = load %struct.ble_npl_event*, %struct.ble_npl_event** %39, align 8
  %41 = icmp eq %struct.ble_npl_event* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %51

43:                                               ; preds = %37
  %44 = load %struct.ble_npl_event*, %struct.ble_npl_event** %5, align 8
  %45 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %44, i32 0, i32 1
  %46 = load %struct.ble_npl_event*, %struct.ble_npl_event** %45, align 8
  %47 = call i32 (i8*, ...) @DEBUG_EVENT_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), %struct.ble_npl_event* %46)
  %48 = load %struct.ble_npl_event*, %struct.ble_npl_event** %5, align 8
  %49 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %48, i32 0, i32 1
  %50 = load %struct.ble_npl_event*, %struct.ble_npl_event** %49, align 8
  store %struct.ble_npl_event* %50, %struct.ble_npl_event** %5, align 8
  br label %31

51:                                               ; preds = %42
  %52 = load %struct.ble_npl_event*, %struct.ble_npl_event** %4, align 8
  %53 = load %struct.ble_npl_event*, %struct.ble_npl_event** %5, align 8
  %54 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %53, i32 0, i32 1
  store %struct.ble_npl_event* %52, %struct.ble_npl_event** %54, align 8
  %55 = load %struct.ble_npl_event*, %struct.ble_npl_event** %5, align 8
  %56 = load %struct.ble_npl_event*, %struct.ble_npl_event** %4, align 8
  %57 = getelementptr inbounds %struct.ble_npl_event, %struct.ble_npl_event* %56, i32 0, i32 0
  store %struct.ble_npl_event* %55, %struct.ble_npl_event** %57, align 8
  br label %58

58:                                               ; preds = %35, %51, %21
  ret void
}

declare dso_local i32 @DEBUG_EVENT_printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
