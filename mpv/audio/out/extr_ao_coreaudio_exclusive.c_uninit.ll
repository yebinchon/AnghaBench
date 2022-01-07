; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_exclusive.c_uninit.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_exclusive.c_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32, i32, i32, i32, i32 }

@noErr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"can't remove device listener, this may cause a crash\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to stop audio device\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to remove device render callback\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"can't revert to original device format\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"can't re-enable mixing\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"can't release hog mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uninit(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %5 = load %struct.ao*, %struct.ao** %2, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load i32, i32* @noErr, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ao*, %struct.ao** %2, align 8
  %10 = call i32 @enable_property_listener(%struct.ao* %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = call i32 @CHECK_CA_WARN(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.priv*, %struct.priv** %3, align 8
  %13 = getelementptr inbounds %struct.priv, %struct.priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.priv*, %struct.priv** %3, align 8
  %16 = getelementptr inbounds %struct.priv, %struct.priv* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @AudioDeviceStop(i32 %14, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = call i32 @CHECK_CA_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.priv*, %struct.priv** %3, align 8
  %21 = getelementptr inbounds %struct.priv, %struct.priv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.priv*, %struct.priv** %3, align 8
  %24 = getelementptr inbounds %struct.priv, %struct.priv* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @AudioDeviceDestroyIOProcID(i32 %22, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = call i32 @CHECK_CA_WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.ao*, %struct.ao** %2, align 8
  %29 = load %struct.priv*, %struct.priv** %3, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.priv*, %struct.priv** %3, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ca_change_physical_format_sync(%struct.ao* %28, i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load %struct.ao*, %struct.ao** %2, align 8
  %39 = call i32 @MP_WARN(%struct.ao* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %1
  %41 = load %struct.ao*, %struct.ao** %2, align 8
  %42 = load %struct.priv*, %struct.priv** %3, align 8
  %43 = getelementptr inbounds %struct.priv, %struct.priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.priv*, %struct.priv** %3, align 8
  %46 = getelementptr inbounds %struct.priv, %struct.priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ca_enable_mixing(%struct.ao* %41, i32 %44, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = call i32 @CHECK_CA_WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %50 = load %struct.priv*, %struct.priv** %3, align 8
  %51 = getelementptr inbounds %struct.priv, %struct.priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.priv*, %struct.priv** %3, align 8
  %54 = getelementptr inbounds %struct.priv, %struct.priv* %53, i32 0, i32 0
  %55 = call i32 @ca_unlock_device(i32 %52, i32* %54)
  store i32 %55, i32* %4, align 4
  %56 = call i32 @CHECK_CA_WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @enable_property_listener(%struct.ao*, i32) #1

declare dso_local i32 @CHECK_CA_WARN(i8*) #1

declare dso_local i32 @AudioDeviceStop(i32, i32) #1

declare dso_local i32 @AudioDeviceDestroyIOProcID(i32, i32) #1

declare dso_local i32 @ca_change_physical_format_sync(%struct.ao*, i32, i32) #1

declare dso_local i32 @MP_WARN(%struct.ao*, i8*) #1

declare dso_local i32 @ca_enable_mixing(%struct.ao*, i32, i32) #1

declare dso_local i32 @ca_unlock_device(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
