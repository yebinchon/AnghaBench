; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_framerate_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_framerate_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frmivalenum = type { i32, i64, %struct.TYPE_2__, i8*, i8*, i8* }
%struct.TYPE_2__ = type { float, i64 }
%struct.dstr = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"LeaveUnchanged\00", align 1
@VIDIOC_ENUM_FRAMEINTERVALS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Stepwise and Continuous framerates are currently hardcoded\00", align 1
@v4l2_framerates = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*, i32*)* @v4l2_framerate_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_framerate_list(i32 %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.v4l2_frmivalenum, align 8
  %12 = alloca %struct.dstr, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %11, i32 0, i32 5
  store i8* %19, i8** %20, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %11, i32 0, i32 4
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %11, i32 0, i32 3
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %11, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = call i32 @dstr_init(%struct.dstr* %12)
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @obs_property_list_clear(i32* %27)
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @obs_module_text(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @obs_property_list_add_int(i32* %29, i32 %30, i32 -1)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @VIDIOC_ENUM_FRAMEINTERVALS, align 4
  %34 = call i32 @v4l2_ioctl(i32 %32, i32 %33, %struct.v4l2_frmivalenum* %11)
  %35 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %11, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %70 [
    i32 128, label %37
  ]

37:                                               ; preds = %5
  br label %38

38:                                               ; preds = %43, %37
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @VIDIOC_ENUM_FRAMEINTERVALS, align 4
  %41 = call i32 @v4l2_ioctl(i32 %39, i32 %40, %struct.v4l2_frmivalenum* %11)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %11, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sitofp i64 %46 to float
  %48 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %11, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load float, float* %49, align 8
  %51 = fdiv float %47, %50
  store float %51, float* %13, align 4
  %52 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %11, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 8
  %55 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %11, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @v4l2_pack_tuple(float %54, i64 %57)
  store i32 %58, i32* %14, align 4
  %59 = load float, float* %13, align 4
  %60 = call i32 @dstr_printf(%struct.dstr* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float %59)
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds %struct.dstr, %struct.dstr* %12, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @obs_property_list_add_int(i32* %61, i32 %63, i32 %64)
  %66 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %11, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  br label %38

69:                                               ; preds = %38
  br label %99

70:                                               ; preds = %5
  %71 = load i32, i32* @LOG_INFO, align 4
  %72 = call i32 @blog(i32 %71, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32*, i32** @v4l2_framerates, align 8
  store i32* %73, i32** %15, align 8
  br label %74

74:                                               ; preds = %95, %70
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %74
  %79 = load i32*, i32** %15, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @v4l2_unpack_tuple(i32* %16, i32* %17, i32 %80)
  %82 = load i32, i32* %17, align 4
  %83 = sitofp i32 %82 to float
  %84 = load i32, i32* %16, align 4
  %85 = sitofp i32 %84 to float
  %86 = fdiv float %83, %85
  store float %86, float* %18, align 4
  %87 = load float, float* %18, align 4
  %88 = call i32 @dstr_printf(%struct.dstr* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), float %87)
  %89 = load i32*, i32** %10, align 8
  %90 = getelementptr inbounds %struct.dstr, %struct.dstr* %12, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %15, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @obs_property_list_add_int(i32* %89, i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %78
  %96 = load i32*, i32** %15, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %15, align 8
  br label %74

98:                                               ; preds = %74
  br label %99

99:                                               ; preds = %98, %69
  %100 = call i32 @dstr_free(%struct.dstr* %12)
  ret void
}

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i32 @obs_property_list_clear(i32*) #1

declare dso_local i32 @obs_property_list_add_int(i32*, i32, i32) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32 @v4l2_ioctl(i32, i32, %struct.v4l2_frmivalenum*) #1

declare dso_local i32 @v4l2_pack_tuple(float, i64) #1

declare dso_local i32 @dstr_printf(%struct.dstr*, i8*, float) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @v4l2_unpack_tuple(i32*, i32*, i32) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
