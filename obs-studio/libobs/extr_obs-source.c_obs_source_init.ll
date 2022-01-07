; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_init.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-source.c_obs_source_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_source = type { float, float, float, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.obs_source* }
%struct.TYPE_3__ = type { i64, i64 }

@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@OBS_SOURCE_TYPE_TRANSITION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_source*)* @obs_source_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @obs_source_init(%struct.obs_source* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.obs_source*, align 8
  %4 = alloca i32, align 4
  store %struct.obs_source* %0, %struct.obs_source** %3, align 8
  %5 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %6 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %5, i32 0, i32 0
  store float 1.000000e+00, float* %6, align 8
  %7 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %8 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %7, i32 0, i32 1
  store float 1.000000e+00, float* %8, align 4
  %9 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %10 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %9, i32 0, i32 15
  store i64 0, i64* %10, align 8
  %11 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %12 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %11, i32 0, i32 2
  store float 5.000000e-01, float* %12, align 8
  %13 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %14 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %13, i32 0, i32 3
  store i32 1, i32* %14, align 4
  %15 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %16 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %15, i32 0, i32 14
  %17 = call i32 @pthread_mutex_init_value(i32* %16)
  %18 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %19 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %18, i32 0, i32 9
  %20 = call i32 @pthread_mutex_init_value(i32* %19)
  %21 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %22 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %21, i32 0, i32 10
  %23 = call i32 @pthread_mutex_init_value(i32* %22)
  %24 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %25 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %24, i32 0, i32 13
  %26 = call i32 @pthread_mutex_init_value(i32* %25)
  %27 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %28 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %27, i32 0, i32 11
  %29 = call i32 @pthread_mutex_init_value(i32* %28)
  %30 = call i64 @pthread_mutexattr_init(i32* %4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %123

33:                                               ; preds = %1
  %34 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %35 = call i64 @pthread_mutexattr_settype(i32* %4, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %123

38:                                               ; preds = %33
  %39 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %40 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %39, i32 0, i32 14
  %41 = call i64 @pthread_mutex_init(i32* %40, i32* %4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %123

44:                                               ; preds = %38
  %45 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %46 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %45, i32 0, i32 13
  %47 = call i64 @pthread_mutex_init(i32* %46, i32* null)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %123

50:                                               ; preds = %44
  %51 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %52 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %51, i32 0, i32 12
  %53 = call i64 @pthread_mutex_init(i32* %52, i32* null)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %123

56:                                               ; preds = %50
  %57 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %58 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %57, i32 0, i32 11
  %59 = call i64 @pthread_mutex_init(i32* %58, i32* null)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %123

62:                                               ; preds = %56
  %63 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %64 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %63, i32 0, i32 10
  %65 = call i64 @pthread_mutex_init(i32* %64, i32* null)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %123

68:                                               ; preds = %62
  %69 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %70 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %69, i32 0, i32 9
  %71 = call i64 @pthread_mutex_init(i32* %70, i32* null)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %123

74:                                               ; preds = %68
  %75 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %76 = call i64 @is_audio_source(%struct.obs_source* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %80 = call i64 @is_composite_source(%struct.obs_source* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %74
  %83 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %84 = call i32 @allocate_audio_output_buffer(%struct.obs_source* %83)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %87 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %86, i32 0, i32 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %93 = call i32 @allocate_audio_mix_buffer(%struct.obs_source* %92)
  br label %94

94:                                               ; preds = %91, %85
  %95 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %96 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @OBS_SOURCE_TYPE_TRANSITION, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %103 = call i32 @obs_transition_init(%struct.obs_source* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %123

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %94
  %108 = call %struct.TYPE_4__* @bzalloc(i32 4)
  %109 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %110 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %109, i32 0, i32 7
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %110, align 8
  %111 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %112 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %111, i32 0, i32 4
  store i32 1, i32* %112, align 8
  %113 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %114 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %115 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %114, i32 0, i32 7
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store %struct.obs_source* %113, %struct.obs_source** %117, align 8
  %118 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %119 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %118, i32 0, i32 5
  store i32 255, i32* %119, align 4
  %120 = call i32 (...) @obs_data_create()
  %121 = load %struct.obs_source*, %struct.obs_source** %3, align 8
  %122 = getelementptr inbounds %struct.obs_source, %struct.obs_source* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 8
  store i32 1, i32* %2, align 4
  br label %123

123:                                              ; preds = %107, %105, %73, %67, %61, %55, %49, %43, %37, %32
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local i32 @pthread_mutex_init_value(i32*) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @is_audio_source(%struct.obs_source*) #1

declare dso_local i64 @is_composite_source(%struct.obs_source*) #1

declare dso_local i32 @allocate_audio_output_buffer(%struct.obs_source*) #1

declare dso_local i32 @allocate_audio_mix_buffer(%struct.obs_source*) #1

declare dso_local i32 @obs_transition_init(%struct.obs_source*) #1

declare dso_local %struct.TYPE_4__* @bzalloc(i32) #1

declare dso_local i32 @obs_data_create(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
