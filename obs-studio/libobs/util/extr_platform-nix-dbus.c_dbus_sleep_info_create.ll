; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix-dbus.c_dbus_sleep_info_create.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_platform-nix-dbus.c_dbus_sleep_info_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_info = type { i32 }
%struct.dbus_sleep_info = type { i32, %struct.service_info*, i32 }
%struct.TYPE_4__ = type { i32 }

@DBUS_BUS_SESSION = common dso_local global i32 0, align 4
@LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not create dbus connection: %s\00", align 1
@num_services = common dso_local global i64 0, align 8
@services = common dso_local global %struct.service_info* null, align 8
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Found dbus service: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dbus_sleep_info* @dbus_sleep_info_create() #0 {
  %1 = alloca %struct.dbus_sleep_info*, align 8
  %2 = alloca %struct.dbus_sleep_info*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.service_info*, align 8
  %6 = call %struct.dbus_sleep_info* @bzalloc(i32 24)
  store %struct.dbus_sleep_info* %6, %struct.dbus_sleep_info** %2, align 8
  %7 = call i32 @dbus_error_init(%struct.TYPE_4__* %3)
  %8 = load i32, i32* @DBUS_BUS_SESSION, align 4
  %9 = call i32 @dbus_bus_get_private(i32 %8, %struct.TYPE_4__* %3)
  %10 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %11 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 8
  %12 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %13 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %0
  %17 = load i32, i32* @LOG_ERROR, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @blog(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %22 = call i32 @bfree(%struct.dbus_sleep_info* %21)
  store %struct.dbus_sleep_info* null, %struct.dbus_sleep_info** %1, align 8
  br label %67

23:                                               ; preds = %0
  store i64 0, i64* %4, align 8
  br label %24

24:                                               ; preds = %61, %23
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @num_services, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  %29 = load %struct.service_info*, %struct.service_info** @services, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.service_info, %struct.service_info* %29, i64 %30
  store %struct.service_info* %31, %struct.service_info** %5, align 8
  %32 = load %struct.service_info*, %struct.service_info** %5, align 8
  %33 = getelementptr inbounds %struct.service_info, %struct.service_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %61

37:                                               ; preds = %28
  %38 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %39 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.service_info*, %struct.service_info** %5, align 8
  %42 = getelementptr inbounds %struct.service_info, %struct.service_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @dbus_bus_name_has_owner(i32 %40, i32 %43, i32* null)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %37
  %47 = load i32, i32* @LOG_DEBUG, align 4
  %48 = load %struct.service_info*, %struct.service_info** %5, align 8
  %49 = getelementptr inbounds %struct.service_info, %struct.service_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @blog(i32 %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.service_info*, %struct.service_info** %5, align 8
  %53 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %54 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %53, i32 0, i32 1
  store %struct.service_info* %52, %struct.service_info** %54, align 8
  %55 = load i64, i64* %4, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %58 = getelementptr inbounds %struct.dbus_sleep_info, %struct.dbus_sleep_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  store %struct.dbus_sleep_info* %59, %struct.dbus_sleep_info** %1, align 8
  br label %67

60:                                               ; preds = %37
  br label %61

61:                                               ; preds = %60, %36
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %4, align 8
  br label %24

64:                                               ; preds = %24
  %65 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %2, align 8
  %66 = call i32 @dbus_sleep_info_destroy(%struct.dbus_sleep_info* %65)
  store %struct.dbus_sleep_info* null, %struct.dbus_sleep_info** %1, align 8
  br label %67

67:                                               ; preds = %64, %46, %16
  %68 = load %struct.dbus_sleep_info*, %struct.dbus_sleep_info** %1, align 8
  ret %struct.dbus_sleep_info* %68
}

declare dso_local %struct.dbus_sleep_info* @bzalloc(i32) #1

declare dso_local i32 @dbus_error_init(%struct.TYPE_4__*) #1

declare dso_local i32 @dbus_bus_get_private(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @bfree(%struct.dbus_sleep_info*) #1

declare dso_local i64 @dbus_bus_name_has_owner(i32, i32, i32*) #1

declare dso_local i32 @dbus_sleep_info_destroy(%struct.dbus_sleep_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
