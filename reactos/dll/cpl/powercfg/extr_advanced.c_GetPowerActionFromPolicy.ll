; ModuleID = '/home/carl/AnghaBench/reactos/dll/cpl/powercfg/extr_advanced.c_GetPowerActionFromPolicy.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/cpl/powercfg/extr_advanced.c_GetPowerActionFromPolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64 }

@PowerActionNone = common dso_local global i64 0, align 8
@POWER_ACTION_UI_ALLOWED = common dso_local global i32 0, align 4
@POWER_ACTION_QUERY_ALLOWED = common dso_local global i32 0, align 4
@POWER_FORCE_TRIGGER_RESET = common dso_local global i64 0, align 8
@POWER_USER_NOTIFY_BUTTON = common dso_local global i64 0, align 8
@PowerActionWarmEject = common dso_local global i64 0, align 8
@POWER_USER_NOTIFY_SHUTDOWN = common dso_local global i64 0, align 8
@PowerActionShutdown = common dso_local global i64 0, align 8
@PowerActionHibernate = common dso_local global i64 0, align 8
@PowerActionSleep = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetPowerActionFromPolicy(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @PowerActionNone, align 8
  store i64 %8, i64* %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PowerActionNone, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @POWER_ACTION_UI_ALLOWED, align 4
  %19 = load i32, i32* @POWER_ACTION_QUERY_ALLOWED, align 4
  %20 = or i32 %18, %19
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %49

22:                                               ; preds = %14
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @POWER_FORCE_TRIGGER_RESET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @PowerActionNone, align 8
  store i64 %29, i64* %7, align 8
  br label %48

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @POWER_USER_NOTIFY_BUTTON, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* @PowerActionWarmEject, align 8
  store i64 %37, i64* %7, align 8
  br label %47

38:                                               ; preds = %30
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @POWER_USER_NOTIFY_SHUTDOWN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* @PowerActionShutdown, align 8
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %44, %38
  br label %47

47:                                               ; preds = %46, %36
  br label %48

48:                                               ; preds = %47, %28
  br label %49

49:                                               ; preds = %48, %14
  br label %97

50:                                               ; preds = %3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @PowerActionHibernate, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %50
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62, %57
  %68 = load i64, i64* @PowerActionSleep, align 8
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %67, %62, %50
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* @PowerActionSleep, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %96, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = load i64, i64* %6, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load i64, i64* @PowerActionNone, align 8
  store i64 %92, i64* %7, align 8
  br label %95

93:                                               ; preds = %88
  %94 = load i64, i64* @PowerActionShutdown, align 8
  store i64 %94, i64* %7, align 8
  br label %95

95:                                               ; preds = %93, %91
  br label %96

96:                                               ; preds = %95, %83, %78, %73, %69
  br label %97

97:                                               ; preds = %96, %49
  %98 = load i64, i64* %7, align 8
  ret i64 %98
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
