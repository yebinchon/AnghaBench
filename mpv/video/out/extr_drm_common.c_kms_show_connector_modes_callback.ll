; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_kms_show_connector_modes_callback.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_kms_show_connector_modes_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.TYPE_5__ = type { i64 }

@DRM_MODE_CONNECTED = common dso_local global i64 0, align 8
@MAX_CONNECTOR_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Available modes for drm-connector=%d.%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mp_log*, i32, %struct.TYPE_5__*)* @kms_show_connector_modes_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kms_show_connector_modes_callback(%struct.mp_log* %0, i32 %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca %struct.mp_log*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.mp_log* %0, %struct.mp_log** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DRM_MODE_CONNECTED, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %31

15:                                               ; preds = %3
  %16 = load i32, i32* @MAX_CONNECTOR_NAME_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = call i32 @get_connector_name(%struct.TYPE_5__* %20, i8* %19)
  %22 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %19)
  %25 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = call i32 @kms_show_available_modes(%struct.mp_log* %25, %struct.TYPE_5__* %26)
  %28 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %29 = call i32 (%struct.mp_log*, i8*, ...) @mp_info(%struct.mp_log* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %30)
  br label %31

31:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_connector_name(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @mp_info(%struct.mp_log*, i8*, ...) #2

declare dso_local i32 @kms_show_available_modes(%struct.mp_log*, %struct.TYPE_5__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
