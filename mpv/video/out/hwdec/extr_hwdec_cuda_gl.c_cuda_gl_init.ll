; ModuleID = '/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda_gl.c_cuda_gl_init.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/hwdec/extr_hwdec_cuda_gl.c_cuda_gl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_hwdec = type { i32, i32, %struct.cuda_hw_priv* }
%struct.cuda_hw_priv = type { i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32*, i32, i64)*, i32 (i32*)*, i32 (i64*, i32)*, i32 (i32*, i64*, i32, i32)* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"need OpenGL >= 2.1 or OpenGL-ES >= 3.0\0A\00", align 1
@CU_GL_DEVICE_LIST_ALL = common dso_local global i32 0, align 4
@CU_CTX_SCHED_BLOCKING_SYNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"cuda-decode-device\00", align 1
@m_option_type_choice = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Using separate decoder and display devices\0A\00", align 1
@cuda_ext_gl_init = common dso_local global i32 0, align 4
@cuda_ext_gl_uninit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cuda_gl_init(%struct.ra_hwdec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ra_hwdec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cuda_hw_priv*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.ra_hwdec* %0, %struct.ra_hwdec** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %14 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %13, i32 0, i32 2
  %15 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %14, align 8
  store %struct.cuda_hw_priv* %15, %struct.cuda_hw_priv** %5, align 8
  %16 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %17 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %16, i32 0, i32 5
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %6, align 8
  %19 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %20 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ra_is_gl(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %1
  %25 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %26 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_4__* @ra_gl_get(i32 %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %7, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 210
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 300
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %40 = call i32 @MP_VERBOSE(%struct.ra_hwdec* %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %132

41:                                               ; preds = %33, %24
  br label %43

42:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %132

43:                                               ; preds = %41
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32 (i32*, i64*, i32, i32)*, i32 (i32*, i64*, i32, i32)** %45, align 8
  %47 = load i32, i32* @CU_GL_DEVICE_LIST_ALL, align 4
  %48 = call i32 %46(i32* %9, i64* %8, i32 1, i32 %47)
  %49 = call i32 @CHECK_CU(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %132

53:                                               ; preds = %43
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32 (i32*, i32, i64)*, i32 (i32*, i32, i64)** %55, align 8
  %57 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %58 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %57, i32 0, i32 4
  %59 = load i32, i32* @CU_CTX_SCHED_BLOCKING_SYNC, align 4
  %60 = load i64, i64* %8, align 8
  %61 = call i32 %56(i32* %58, i32 %59, i64 %60)
  %62 = call i32 @CHECK_CU(i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %132

66:                                               ; preds = %53
  %67 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %68 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %71 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  store i32 -1, i32* %10, align 4
  %72 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %73 = getelementptr inbounds %struct.ra_hwdec, %struct.ra_hwdec* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @mp_read_option_raw(i32 %74, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* @m_option_type_choice, i32* %10)
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %78, label %123

78:                                               ; preds = %66
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32 (i64*, i32)*, i32 (i64*, i32)** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 %81(i64* %12, i32 %82)
  %84 = call i32 @CHECK_CU(i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32 (i32*)*, i32 (i32*)** %89, align 8
  %91 = call i32 %90(i32* %11)
  %92 = call i32 @CHECK_CU(i32 %91)
  store i32 0, i32* %2, align 4
  br label %132

93:                                               ; preds = %78
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %8, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %122

97:                                               ; preds = %93
  %98 = load %struct.ra_hwdec*, %struct.ra_hwdec** %3, align 8
  %99 = call i32 @MP_INFO(%struct.ra_hwdec* %98, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32 (i32*)*, i32 (i32*)** %101, align 8
  %103 = call i32 %102(i32* %11)
  %104 = call i32 @CHECK_CU(i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %132

108:                                              ; preds = %97
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32 (i32*, i32, i64)*, i32 (i32*, i32, i64)** %110, align 8
  %112 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %113 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %112, i32 0, i32 3
  %114 = load i32, i32* @CU_CTX_SCHED_BLOCKING_SYNC, align 4
  %115 = load i64, i64* %12, align 8
  %116 = call i32 %111(i32* %113, i32 %114, i64 %115)
  %117 = call i32 @CHECK_CU(i32 %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %132

121:                                              ; preds = %108
  br label %122

122:                                              ; preds = %121, %93
  br label %123

123:                                              ; preds = %122, %66
  %124 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %125 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  %126 = load i32, i32* @cuda_ext_gl_init, align 4
  %127 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %128 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @cuda_ext_gl_uninit, align 4
  %130 = load %struct.cuda_hw_priv*, %struct.cuda_hw_priv** %5, align 8
  %131 = getelementptr inbounds %struct.cuda_hw_priv, %struct.cuda_hw_priv* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 4
  store i32 1, i32* %2, align 4
  br label %132

132:                                              ; preds = %123, %120, %107, %87, %65, %52, %42, %38
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @ra_is_gl(i32) #1

declare dso_local %struct.TYPE_4__* @ra_gl_get(i32) #1

declare dso_local i32 @MP_VERBOSE(%struct.ra_hwdec*, i8*) #1

declare dso_local i32 @CHECK_CU(i32) #1

declare dso_local i32 @mp_read_option_raw(i32, i8*, i32*, i32*) #1

declare dso_local i32 @MP_INFO(%struct.ra_hwdec*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
