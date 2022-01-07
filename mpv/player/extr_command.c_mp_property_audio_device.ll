; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_audio_device.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_audio_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.MPContext = type { %struct.command_ctx* }
%struct.command_ctx = type { i32 }
%struct.ao_device_list = type { i32, %struct.ao_device_desc* }
%struct.ao_device_desc = type { i8*, i64 }

@M_PROPERTY_PRINT = common dso_local global i32 0, align 4
@M_PROPERTY_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"?\00", align 1
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_audio_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_audio_device(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.MPContext*, align 8
  %11 = alloca %struct.command_ctx*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ao_device_list*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ao_device_desc*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.MPContext*
  store %struct.MPContext* %17, %struct.MPContext** %10, align 8
  %18 = load %struct.MPContext*, %struct.MPContext** %10, align 8
  %19 = getelementptr inbounds %struct.MPContext, %struct.MPContext* %18, i32 0, i32 0
  %20 = load %struct.command_ctx*, %struct.command_ctx** %19, align 8
  store %struct.command_ctx* %20, %struct.command_ctx** %11, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @M_PROPERTY_PRINT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %91

24:                                               ; preds = %4
  %25 = load %struct.MPContext*, %struct.MPContext** %10, align 8
  %26 = call i32 @create_hotplug(%struct.MPContext* %25)
  store i8* null, i8** %12, align 8
  %27 = load %struct.MPContext*, %struct.MPContext** %10, align 8
  %28 = load %struct.m_property*, %struct.m_property** %7, align 8
  %29 = load i32, i32* @M_PROPERTY_GET, align 4
  %30 = bitcast i8** %12 to i8*
  %31 = call i32 @mp_property_generic_option(%struct.MPContext* %27, %struct.m_property* %28, i32 %29, i8* %30)
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i8* null, i8** %12, align 8
  br label %34

34:                                               ; preds = %33, %24
  %35 = load %struct.command_ctx*, %struct.command_ctx** %11, align 8
  %36 = getelementptr inbounds %struct.command_ctx, %struct.command_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.ao_device_list* @ao_hotplug_get_device_list(i32 %37)
  store %struct.ao_device_list* %38, %struct.ao_device_list** %13, align 8
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %85, %34
  %40 = load i32, i32* %14, align 4
  %41 = load %struct.ao_device_list*, %struct.ao_device_list** %13, align 8
  %42 = getelementptr inbounds %struct.ao_device_list, %struct.ao_device_list* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %88

45:                                               ; preds = %39
  %46 = load %struct.ao_device_list*, %struct.ao_device_list** %13, align 8
  %47 = getelementptr inbounds %struct.ao_device_list, %struct.ao_device_list* %46, i32 0, i32 1
  %48 = load %struct.ao_device_desc*, %struct.ao_device_desc** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %48, i64 %50
  store %struct.ao_device_desc* %51, %struct.ao_device_desc** %15, align 8
  %52 = load %struct.ao_device_desc*, %struct.ao_device_desc** %15, align 8
  %53 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %84

56:                                               ; preds = %45
  %57 = load i8*, i8** %12, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load %struct.ao_device_desc*, %struct.ao_device_desc** %15, align 8
  %61 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i64 @strcmp(i64 %62, i8* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %59
  %67 = load %struct.ao_device_desc*, %struct.ao_device_desc** %15, align 8
  %68 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.ao_device_desc*, %struct.ao_device_desc** %15, align 8
  %73 = getelementptr inbounds %struct.ao_device_desc, %struct.ao_device_desc* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  br label %76

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %71
  %77 = phi i8* [ %74, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %75 ]
  %78 = call i8* @talloc_strdup(i32* null, i8* %77)
  %79 = load i8*, i8** %9, align 8
  %80 = bitcast i8* %79 to i8**
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @talloc_free(i8* %81)
  %83 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %83, i32* %5, align 4
  br label %97

84:                                               ; preds = %59, %56, %45
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %39

88:                                               ; preds = %39
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @talloc_free(i8* %89)
  br label %91

91:                                               ; preds = %88, %4
  %92 = load %struct.MPContext*, %struct.MPContext** %10, align 8
  %93 = load %struct.m_property*, %struct.m_property** %7, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @mp_property_generic_option(%struct.MPContext* %92, %struct.m_property* %93, i32 %94, i8* %95)
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %91, %76
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @create_hotplug(%struct.MPContext*) #1

declare dso_local i32 @mp_property_generic_option(%struct.MPContext*, %struct.m_property*, i32, i8*) #1

declare dso_local %struct.ao_device_list* @ao_hotplug_get_device_list(i32) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i8* @talloc_strdup(i32*, i8*) #1

declare dso_local i32 @talloc_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
