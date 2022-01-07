; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_setup_mode.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_drm_common.c_setup_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kms = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.drm_mode_spec = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"No available modes\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Parse error\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"setup_mode: Internal error\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Available modes:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kms*, i8*)* @setup_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_mode(%struct.kms* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kms*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_mode_spec, align 4
  store %struct.kms* %0, %struct.kms** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.kms*, %struct.kms** %4, align 8
  %8 = getelementptr inbounds %struct.kms, %struct.kms* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.kms*, %struct.kms** %4, align 8
  %15 = call i32 @MP_ERR(%struct.kms* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @parse_mode_spec(i8* %17, %struct.drm_mode_spec* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load %struct.kms*, %struct.kms** %4, align 8
  %22 = call i32 @MP_ERR(%struct.kms* %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %63

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.drm_mode_spec, %struct.drm_mode_spec* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %59 [
    i32 131, label %26
    i32 130, label %34
    i32 128, label %47
    i32 129, label %53
  ]

26:                                               ; preds = %23
  %27 = load %struct.kms*, %struct.kms** %4, align 8
  %28 = getelementptr inbounds %struct.drm_mode_spec, %struct.drm_mode_spec* %6, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @setup_mode_by_idx(%struct.kms* %27, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %63

33:                                               ; preds = %26
  br label %62

34:                                               ; preds = %23
  %35 = load %struct.kms*, %struct.kms** %4, align 8
  %36 = getelementptr inbounds %struct.drm_mode_spec, %struct.drm_mode_spec* %6, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.drm_mode_spec, %struct.drm_mode_spec* %6, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.drm_mode_spec, %struct.drm_mode_spec* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @setup_mode_by_numbers(%struct.kms* %35, i32 %37, i32 %39, i32 %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %63

46:                                               ; preds = %34
  br label %62

47:                                               ; preds = %23
  %48 = load %struct.kms*, %struct.kms** %4, align 8
  %49 = call i32 @setup_mode_preferred(%struct.kms* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %63

52:                                               ; preds = %47
  br label %62

53:                                               ; preds = %23
  %54 = load %struct.kms*, %struct.kms** %4, align 8
  %55 = call i32 @setup_mode_highest(%struct.kms* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  br label %63

58:                                               ; preds = %53
  br label %62

59:                                               ; preds = %23
  %60 = load %struct.kms*, %struct.kms** %4, align 8
  %61 = call i32 @MP_ERR(%struct.kms* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %63

62:                                               ; preds = %58, %52, %46, %33
  store i32 1, i32* %3, align 4
  br label %73

63:                                               ; preds = %59, %57, %51, %45, %32, %20
  %64 = load %struct.kms*, %struct.kms** %4, align 8
  %65 = call i32 @MP_INFO(%struct.kms* %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.kms*, %struct.kms** %4, align 8
  %67 = getelementptr inbounds %struct.kms, %struct.kms* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.kms*, %struct.kms** %4, align 8
  %70 = getelementptr inbounds %struct.kms, %struct.kms* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = call i32 @kms_show_available_modes(i32 %68, %struct.TYPE_2__* %71)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %63, %62, %13
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @MP_ERR(%struct.kms*, i8*) #1

declare dso_local i32 @parse_mode_spec(i8*, %struct.drm_mode_spec*) #1

declare dso_local i32 @setup_mode_by_idx(%struct.kms*, i32) #1

declare dso_local i32 @setup_mode_by_numbers(%struct.kms*, i32, i32, i32, i8*) #1

declare dso_local i32 @setup_mode_preferred(%struct.kms*) #1

declare dso_local i32 @setup_mode_highest(%struct.kms*) #1

declare dso_local i32 @MP_INFO(%struct.kms*, i8*) #1

declare dso_local i32 @kms_show_available_modes(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
