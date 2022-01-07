; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_modwlan.c_SimpleLinkWlanEventHandler.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/mods/extr_modwlan.c_SimpleLinkWlanEventHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@wlan_obj = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@STATUS_BIT_CONNECTION = common dso_local global i32 0, align 4
@STATUS_BIT_IP_ACQUIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SimpleLinkWlanEventHandler(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %4 = icmp ne %struct.TYPE_4__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %32 [
    i32 133, label %10
    i32 132, label %14
    i32 129, label %21
    i32 128, label %25
    i32 131, label %29
    i32 130, label %30
    i32 134, label %31
  ]

10:                                               ; preds = %6
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @wlan_obj, i32 0, i32 0), align 4
  %12 = load i32, i32* @STATUS_BIT_CONNECTION, align 4
  %13 = call i32 @SET_STATUS_BIT(i32 %11, i32 %12)
  br label %33

14:                                               ; preds = %6
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @wlan_obj, i32 0, i32 0), align 4
  %16 = load i32, i32* @STATUS_BIT_CONNECTION, align 4
  %17 = call i32 @CLR_STATUS_BIT(i32 %15, i32 %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @wlan_obj, i32 0, i32 0), align 4
  %19 = load i32, i32* @STATUS_BIT_IP_ACQUIRED, align 4
  %20 = call i32 @CLR_STATUS_BIT(i32 %18, i32 %19)
  br label %33

21:                                               ; preds = %6
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @wlan_obj, i32 0, i32 0), align 4
  %23 = load i32, i32* @STATUS_BIT_CONNECTION, align 4
  %24 = call i32 @SET_STATUS_BIT(i32 %22, i32 %23)
  br label %33

25:                                               ; preds = %6
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @wlan_obj, i32 0, i32 0), align 4
  %27 = load i32, i32* @STATUS_BIT_CONNECTION, align 4
  %28 = call i32 @CLR_STATUS_BIT(i32 %26, i32 %27)
  br label %33

29:                                               ; preds = %6
  br label %33

30:                                               ; preds = %6
  br label %33

31:                                               ; preds = %6
  br label %33

32:                                               ; preds = %6
  br label %33

33:                                               ; preds = %5, %32, %31, %30, %29, %25, %21, %14, %10
  ret void
}

declare dso_local i32 @SET_STATUS_BIT(i32, i32) #1

declare dso_local i32 @CLR_STATUS_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
