; ModuleID = '/home/carl/AnghaBench/netdata/collectors/macos.plugin/extr_plugin_macos.c_macos_main.c'
source_filename = "/home/carl/AnghaBench/netdata/collectors/macos.plugin/extr_plugin_macos.c_macos_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@macos_main_cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"plugin:macos\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"netdata server resources\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"sysctl\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"mach system management interface\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"iokit\00", align 1
@localhost = common dso_local global %struct.TYPE_2__* null, align 8
@USEC_PER_SEC = common dso_local global i32 0, align 4
@netdata_exit = common dso_local global i32 0, align 4
@D_PROCNETDEV_LOOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"MACOS: calling do_macos_sysctl().\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"MACOS: calling do_macos_mach_smi().\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"MACOS: calling do_macos_iokit().\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @macos_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i32, i32* @macos_main_cleanup, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @netdata_thread_cleanup_push(i32 %13, i8* %14)
  %16 = call i32 @config_get_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = call i32 @config_get_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %4, align 4
  %24 = call i32 @config_get_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = call i32 @config_get_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localhost, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @USEC_PER_SEC, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = call i32 @heartbeat_init(i32* %11)
  br label %38

38:                                               ; preds = %103, %1
  %39 = load i32, i32* @netdata_exit, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %104

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @heartbeat_next(i32* %11, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @netdata_exit, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %104

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* @D_PROCNETDEV_LOOP, align 4
  %54 = call i32 @debug(i32 %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localhost, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @do_macos_sysctl(i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %52, %49
  %61 = load i32, i32* @netdata_exit, align 4
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %104

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @D_PROCNETDEV_LOOP, align 4
  %70 = call i32 @debug(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localhost, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @do_macos_mach_smi(i32 %73, i32 %74)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %68, %65
  %77 = load i32, i32* @netdata_exit, align 4
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %104

81:                                               ; preds = %76
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* @D_PROCNETDEV_LOOP, align 4
  %86 = call i32 @debug(i32 %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @localhost, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @do_macos_iokit(i32 %89, i32 %90)
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %84, %81
  %93 = load i32, i32* @netdata_exit, align 4
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %104

97:                                               ; preds = %92
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = call i32 (...) @global_statistics_charts()
  %102 = call i32 (...) @registry_statistics()
  br label %103

103:                                              ; preds = %100, %97
  br label %38

104:                                              ; preds = %96, %80, %64, %48, %38
  %105 = call i32 @netdata_thread_cleanup_pop(i32 1)
  ret i8* null
}

declare dso_local i32 @netdata_thread_cleanup_push(i32, i8*) #1

declare dso_local i32 @config_get_boolean(i8*, i8*, i32) #1

declare dso_local i32 @heartbeat_init(i32*) #1

declare dso_local i32 @heartbeat_next(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i32 @do_macos_sysctl(i32, i32) #1

declare dso_local i32 @do_macos_mach_smi(i32, i32) #1

declare dso_local i32 @do_macos_iokit(i32, i32) #1

declare dso_local i32 @global_statistics_charts(...) #1

declare dso_local i32 @registry_statistics(...) #1

declare dso_local i32 @netdata_thread_cleanup_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
