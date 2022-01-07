; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_hotkeys.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs.c_obs_init_hotkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.obs_core_hotkeys }
%struct.obs_core_hotkeys = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@obs = common dso_local global %struct.TYPE_2__* null, align 8
@obs_pthread_once_init_token = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Mute\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Unmute\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Push-to-mute\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Push-to-talk\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Show '%1'\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Hide '%1'\00", align 1
@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@OS_EVENT_TYPE_MANUAL = common dso_local global i32 0, align 4
@obs_hotkey_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @obs_init_hotkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_init_hotkeys() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.obs_core_hotkeys*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store %struct.obs_core_hotkeys* %6, %struct.obs_core_hotkeys** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %8 = icmp ne %struct.obs_core_hotkeys* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %12 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @da_init(i32 %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obs, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %19 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %18, i32 0, i32 11
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @obs_pthread_once_init_token, align 4
  %21 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %22 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 8
  %23 = call i8* @bstrdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %25 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %24, i32 0, i32 9
  store i8* %23, i8** %25, align 8
  %26 = call i8* @bstrdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %28 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %27, i32 0, i32 8
  store i8* %26, i8** %28, align 8
  %29 = call i8* @bstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %31 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %30, i32 0, i32 7
  store i8* %29, i8** %31, align 8
  %32 = call i8* @bstrdup(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %34 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = call i8* @bstrdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %37 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = call i8* @bstrdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %39 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %40 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %42 = call i32 @obs_hotkeys_platform_init(%struct.obs_core_hotkeys* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %80

45:                                               ; preds = %0
  %46 = call i64 @pthread_mutexattr_init(i32* %3)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %1, align 4
  br label %80

49:                                               ; preds = %45
  %50 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %51 = call i64 @pthread_mutexattr_settype(i32* %3, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %77

54:                                               ; preds = %49
  %55 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %56 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %55, i32 0, i32 3
  %57 = call i64 @pthread_mutex_init(i32* %56, i32* %3)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %77

60:                                               ; preds = %54
  %61 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %62 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %61, i32 0, i32 2
  %63 = load i32, i32* @OS_EVENT_TYPE_MANUAL, align 4
  %64 = call i64 @os_event_init(i32* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %77

67:                                               ; preds = %60
  %68 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %69 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %68, i32 0, i32 1
  %70 = load i32, i32* @obs_hotkey_thread, align 4
  %71 = call i64 @pthread_create(i32* %69, i32* null, i32 %70, i32* null)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %77

74:                                               ; preds = %67
  %75 = load %struct.obs_core_hotkeys*, %struct.obs_core_hotkeys** %2, align 8
  %76 = getelementptr inbounds %struct.obs_core_hotkeys, %struct.obs_core_hotkeys* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %73, %66, %59, %53
  %78 = call i32 @pthread_mutexattr_destroy(i32* %3)
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %1, align 4
  br label %80

80:                                               ; preds = %77, %48, %44
  %81 = load i32, i32* %1, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @da_init(i32) #1

declare dso_local i8* @bstrdup(i8*) #1

declare dso_local i32 @obs_hotkeys_platform_init(%struct.obs_core_hotkeys*) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @os_event_init(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pthread_mutexattr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
