; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/mac-capture/extr_mac-audio.c_coreaudio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coreaudio_data = type { i32, i32, i32, i32 }

@IO_TYPE_INPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"coreaudio_init\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"enable input io\00", align 1
@IO_TYPE_OUTPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"disable output io\00", align 1
@kAudioOutputUnitProperty_CurrentDevice = common dso_local global i32 0, align 4
@SCOPE_GLOBAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"set current device\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"coreaudio_initialize\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"coreaudio: device '%s' initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coreaudio_data*)* @coreaudio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coreaudio_init(%struct.coreaudio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coreaudio_data*, align 8
  %4 = alloca i32, align 4
  store %struct.coreaudio_data* %0, %struct.coreaudio_data** %3, align 8
  %5 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %6 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %99

10:                                               ; preds = %1
  %11 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %12 = call i32 @find_device_id_by_uid(%struct.coreaudio_data* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %99

15:                                               ; preds = %10
  %16 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %17 = call i32 @coreaudio_get_device_name(%struct.coreaudio_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %99

20:                                               ; preds = %15
  %21 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %22 = call i32 @coreaudio_init_unit(%struct.coreaudio_data* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %99

25:                                               ; preds = %20
  %26 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %27 = load i32, i32* @IO_TYPE_INPUT, align 4
  %28 = call i32 @enable_io(%struct.coreaudio_data* %26, i32 %27, i32 1)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %31 = call i32 @ca_success(i32 %29, %struct.coreaudio_data* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %96

34:                                               ; preds = %25
  %35 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %36 = load i32, i32* @IO_TYPE_OUTPUT, align 4
  %37 = call i32 @enable_io(%struct.coreaudio_data* %35, i32 %36, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %40 = call i32 @ca_success(i32 %38, %struct.coreaudio_data* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  br label %96

43:                                               ; preds = %34
  %44 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %45 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @kAudioOutputUnitProperty_CurrentDevice, align 4
  %48 = load i32, i32* @SCOPE_GLOBAL, align 4
  %49 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %50 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %49, i32 0, i32 3
  %51 = call i32 @set_property(i32 %46, i32 %47, i32 %48, i32 0, i32* %50, i32 4)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %54 = call i32 @ca_success(i32 %52, %struct.coreaudio_data* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %96

57:                                               ; preds = %43
  %58 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %59 = call i32 @coreaudio_init_format(%struct.coreaudio_data* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %96

62:                                               ; preds = %57
  %63 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %64 = call i32 @coreaudio_init_buffer(%struct.coreaudio_data* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %96

67:                                               ; preds = %62
  %68 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %69 = call i32 @coreaudio_init_hooks(%struct.coreaudio_data* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %96

72:                                               ; preds = %67
  %73 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %74 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @AudioUnitInitialize(i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %79 = call i32 @ca_success(i32 %77, %struct.coreaudio_data* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %72
  br label %96

82:                                               ; preds = %72
  %83 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %84 = call i32 @coreaudio_start(%struct.coreaudio_data* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  br label %96

87:                                               ; preds = %82
  %88 = load i32, i32* @LOG_INFO, align 4
  %89 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %90 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @blog(i32 %88, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %91)
  %93 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %94 = getelementptr inbounds %struct.coreaudio_data, %struct.coreaudio_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %2, align 4
  br label %99

96:                                               ; preds = %86, %81, %71, %66, %61, %56, %42, %33
  %97 = load %struct.coreaudio_data*, %struct.coreaudio_data** %3, align 8
  %98 = call i32 @coreaudio_uninit(%struct.coreaudio_data* %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %96, %87, %24, %19, %14, %9
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @find_device_id_by_uid(%struct.coreaudio_data*) #1

declare dso_local i32 @coreaudio_get_device_name(%struct.coreaudio_data*) #1

declare dso_local i32 @coreaudio_init_unit(%struct.coreaudio_data*) #1

declare dso_local i32 @enable_io(%struct.coreaudio_data*, i32, i32) #1

declare dso_local i32 @ca_success(i32, %struct.coreaudio_data*, i8*, i8*) #1

declare dso_local i32 @set_property(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @coreaudio_init_format(%struct.coreaudio_data*) #1

declare dso_local i32 @coreaudio_init_buffer(%struct.coreaudio_data*) #1

declare dso_local i32 @coreaudio_init_hooks(%struct.coreaudio_data*) #1

declare dso_local i32 @AudioUnitInitialize(i32) #1

declare dso_local i32 @coreaudio_start(%struct.coreaudio_data*) #1

declare dso_local i32 @blog(i32, i8*, i32) #1

declare dso_local i32 @coreaudio_uninit(%struct.coreaudio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
