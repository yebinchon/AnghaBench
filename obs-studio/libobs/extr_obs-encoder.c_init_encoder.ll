; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_init_encoder.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/extr_obs-encoder.c_init_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.obs_encoder = type { %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 (i32, i32)*, i32 (i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@PTHREAD_MUTEX_RECURSIVE = common dso_local global i32 0, align 4
@OBS_OBJ_TYPE_ENCODER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.obs_encoder*, i8*, i32*, i32*)* @init_encoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_encoder(%struct.obs_encoder* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.obs_encoder*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.obs_encoder* %0, %struct.obs_encoder** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %12 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %11, i32 0, i32 5
  %13 = call i32 @pthread_mutex_init_value(i32* %12)
  %14 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %15 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %14, i32 0, i32 4
  %16 = call i32 @pthread_mutex_init_value(i32* %15)
  %17 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %18 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %17, i32 0, i32 3
  %19 = call i32 @pthread_mutex_init_value(i32* %18)
  %20 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %21 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @pthread_mutex_init_value(i32* %22)
  %24 = call i64 @pthread_mutexattr_init(i32* %10)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %104

27:                                               ; preds = %4
  %28 = load i32, i32* @PTHREAD_MUTEX_RECURSIVE, align 4
  %29 = call i64 @pthread_mutexattr_settype(i32* %10, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %104

32:                                               ; preds = %27
  %33 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %34 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %33, i32 0, i32 1
  %35 = load i32, i32* @OBS_OBJ_TYPE_ENCODER, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @obs_context_data_init(%struct.TYPE_6__* %34, i32 %35, i32* %36, i8* %37, i32* %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %104

42:                                               ; preds = %32
  %43 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %44 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %43, i32 0, i32 5
  %45 = call i64 @pthread_mutex_init(i32* %44, i32* %10)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %104

48:                                               ; preds = %42
  %49 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %50 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %49, i32 0, i32 4
  %51 = call i64 @pthread_mutex_init(i32* %50, i32* %10)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %104

54:                                               ; preds = %48
  %55 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %56 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %55, i32 0, i32 3
  %57 = call i64 @pthread_mutex_init(i32* %56, i32* null)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %104

60:                                               ; preds = %54
  %61 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %62 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i64 @pthread_mutex_init(i32* %63, i32* null)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %104

67:                                               ; preds = %60
  %68 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %69 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = load i32 (i32)*, i32 (i32)** %70, align 8
  %72 = icmp ne i32 (i32)* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %75 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32 (i32)*, i32 (i32)** %76, align 8
  %78 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %79 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 %77(i32 %81)
  br label %83

83:                                               ; preds = %73, %67
  %84 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %85 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32 (i32, i32)*, i32 (i32, i32)** %86, align 8
  %88 = icmp ne i32 (i32, i32)* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %83
  %90 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %91 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i32 (i32, i32)*, i32 (i32, i32)** %92, align 8
  %94 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %95 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.obs_encoder*, %struct.obs_encoder** %6, align 8
  %99 = getelementptr inbounds %struct.obs_encoder, %struct.obs_encoder* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 %93(i32 %97, i32 %101)
  br label %103

103:                                              ; preds = %89, %83
  store i32 1, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %66, %59, %53, %47, %41, %31, %26
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @pthread_mutex_init_value(i32*) #1

declare dso_local i64 @pthread_mutexattr_init(i32*) #1

declare dso_local i64 @pthread_mutexattr_settype(i32*, i32) #1

declare dso_local i32 @obs_context_data_init(%struct.TYPE_6__*, i32, i32*, i8*, i32*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
