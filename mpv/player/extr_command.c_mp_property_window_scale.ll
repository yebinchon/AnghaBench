; ModuleID = '/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_window_scale.c'
source_filename = "/home/carl/AnghaBench/mpv/player/extr_command.c_mp_property_window_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_property = type { i32 }
%struct.TYPE_4__ = type { %struct.vo* }
%struct.vo = type { i32 }
%struct.mp_image_params = type { i32 }

@VOCTRL_SET_UNFS_WINDOW_SIZE = common dso_local global i32 0, align 4
@VOCTRL_GET_UNFS_WINDOW_SIZE = common dso_local global i32 0, align 4
@M_PROPERTY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.m_property*, i32, i8*)* @mp_property_window_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_property_window_scale(i8* %0, %struct.m_property* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.m_property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.vo*, align 8
  %12 = alloca %struct.mp_image_params, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca [2 x i32], align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store i8* %0, i8** %6, align 8
  store %struct.m_property* %1, %struct.m_property** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %10, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.vo*, %struct.vo** %23, align 8
  store %struct.vo* %24, %struct.vo** %11, align 8
  %25 = load %struct.vo*, %struct.vo** %11, align 8
  %26 = icmp ne %struct.vo* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %106

28:                                               ; preds = %4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = call i32 @get_video_out_params(%struct.TYPE_4__* %29)
  %31 = getelementptr inbounds %struct.mp_image_params, %struct.mp_image_params* %12, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = call i32 @mp_image_params_get_dsize(%struct.mp_image_params* %12, i32* %13, i32* %14)
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %28
  br label %106

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %105 [
    i32 128, label %41
    i32 129, label %70
  ]

41:                                               ; preds = %39
  %42 = load i8*, i8** %9, align 8
  %43 = bitcast i8* %42 to double*
  %44 = load double, double* %43, align 8
  store double %44, double* %15, align 8
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %46 = load i32, i32* %13, align 4
  %47 = sitofp i32 %46 to double
  %48 = load double, double* %15, align 8
  %49 = fmul double %47, %48
  %50 = fptosi double %49 to i32
  store i32 %50, i32* %45, align 4
  %51 = getelementptr inbounds i32, i32* %45, i64 1
  %52 = load i32, i32* %14, align 4
  %53 = sitofp i32 %52 to double
  %54 = load double, double* %15, align 8
  %55 = fmul double %53, %54
  %56 = fptosi double %55 to i32
  store i32 %56, i32* %51, align 4
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %41
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.vo*, %struct.vo** %11, align 8
  %66 = load i32, i32* @VOCTRL_SET_UNFS_WINDOW_SIZE, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %68 = call i32 @vo_control(%struct.vo* %65, i32 %66, i32* %67)
  br label %69

69:                                               ; preds = %64, %60, %41
  br label %106

70:                                               ; preds = %39
  %71 = load %struct.vo*, %struct.vo** %11, align 8
  %72 = load i32, i32* @VOCTRL_GET_UNFS_WINDOW_SIZE, align 4
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %74 = call i32 @vo_control(%struct.vo* %71, i32 %72, i32* %73)
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 1
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %76, %70
  br label %106

85:                                               ; preds = %80
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = sitofp i32 %87 to double
  %89 = load i32, i32* %13, align 4
  %90 = sitofp i32 %89 to double
  %91 = fdiv double %88, %90
  store double %91, double* %18, align 8
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = sitofp i32 %93 to double
  %95 = load i32, i32* %14, align 4
  %96 = sitofp i32 %95 to double
  %97 = fdiv double %94, %96
  store double %97, double* %19, align 8
  %98 = load double, double* %18, align 8
  %99 = load double, double* %19, align 8
  %100 = fadd double %98, %99
  %101 = fdiv double %100, 2.000000e+00
  %102 = load i8*, i8** %9, align 8
  %103 = bitcast i8* %102 to double*
  store double %101, double* %103, align 8
  %104 = load i32, i32* @M_PROPERTY_OK, align 4
  store i32 %104, i32* %5, align 4
  br label %112

105:                                              ; preds = %39
  br label %106

106:                                              ; preds = %105, %84, %69, %38, %27
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %108 = load %struct.m_property*, %struct.m_property** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @mp_property_generic_option(%struct.TYPE_4__* %107, %struct.m_property* %108, i32 %109, i8* %110)
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %106, %85
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @get_video_out_params(%struct.TYPE_4__*) #1

declare dso_local i32 @mp_image_params_get_dsize(%struct.mp_image_params*, i32*, i32*) #1

declare dso_local i32 @vo_control(%struct.vo*, i32, i32*) #1

declare dso_local i32 @mp_property_generic_option(%struct.TYPE_4__*, %struct.m_property*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
