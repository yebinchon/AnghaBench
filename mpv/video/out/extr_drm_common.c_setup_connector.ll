; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_setup_connector.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_setup_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kms = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"No connector with name %s found\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"No connected connectors found\0A\00", align 1
@DRM_MODE_CONNECTED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Chosen connector is disconnected\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Chosen connector has no valid modes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kms*, i32*, i8*)* @setup_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_connector(%struct.kms* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kms*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.kms* %0, %struct.kms** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load %struct.kms*, %struct.kms** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call %struct.TYPE_5__* @get_connector_by_name(%struct.kms* %20, i32* %21, i8* %22)
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %8, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %19
  %27 = load %struct.kms*, %struct.kms** %5, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 (%struct.kms*, i8*, ...) @MP_ERR(%struct.kms* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = load %struct.kms*, %struct.kms** %5, align 8
  %31 = getelementptr inbounds %struct.kms, %struct.kms* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kms*, %struct.kms** %5, align 8
  %34 = getelementptr inbounds %struct.kms, %struct.kms* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @kms_show_available_connectors(i32 %32, i32 %35)
  store i32 0, i32* %4, align 4
  br label %73

37:                                               ; preds = %19
  br label %48

38:                                               ; preds = %15, %11, %3
  %39 = load %struct.kms*, %struct.kms** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call %struct.TYPE_5__* @get_first_connected_connector(%struct.kms* %39, i32* %40)
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %8, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load %struct.kms*, %struct.kms** %5, align 8
  %46 = call i32 (%struct.kms*, i8*, ...) @MP_ERR(%struct.kms* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %73

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %37
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DRM_MODE_CONNECTED, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %56 = call i32 @drmModeFreeConnector(%struct.TYPE_5__* %55)
  %57 = load %struct.kms*, %struct.kms** %5, align 8
  %58 = call i32 (%struct.kms*, i8*, ...) @MP_ERR(%struct.kms* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %73

59:                                               ; preds = %48
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %66 = call i32 @drmModeFreeConnector(%struct.TYPE_5__* %65)
  %67 = load %struct.kms*, %struct.kms** %5, align 8
  %68 = call i32 (%struct.kms*, i8*, ...) @MP_ERR(%struct.kms* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %73

69:                                               ; preds = %59
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = load %struct.kms*, %struct.kms** %5, align 8
  %72 = getelementptr inbounds %struct.kms, %struct.kms* %71, i32 0, i32 0
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %72, align 8
  store i32 1, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %64, %54, %44, %26
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_5__* @get_connector_by_name(%struct.kms*, i32*, i8*) #1

declare dso_local i32 @MP_ERR(%struct.kms*, i8*, ...) #1

declare dso_local i32 @kms_show_available_connectors(i32, i32) #1

declare dso_local %struct.TYPE_5__* @get_first_connected_connector(%struct.kms*, i32*) #1

declare dso_local i32 @drmModeFreeConnector(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
