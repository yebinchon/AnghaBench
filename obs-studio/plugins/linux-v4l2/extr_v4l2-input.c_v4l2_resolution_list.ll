; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_resolution_list.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/linux-v4l2/extr_v4l2-input.c_v4l2_resolution_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frmsizeenum = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dstr = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"LeaveUnchanged\00", align 1
@VIDIOC_ENUM_FRAMESIZES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Stepwise and Continuous framesizes are currently hardcoded\00", align 1
@v4l2_framesizes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @v4l2_resolution_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l2_resolution_list(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.v4l2_frmsizeenum, align 8
  %8 = alloca %struct.dstr, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %7, i32 0, i32 3
  store i32 %12, i32* %13, align 8
  %14 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %7, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = call i32 @dstr_init(%struct.dstr* %8)
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @obs_property_list_clear(i32* %16)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @obs_module_text(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @obs_property_list_add_int(i32* %18, i32 %19, i32 -1)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @VIDIOC_ENUM_FRAMESIZES, align 4
  %23 = call i32 @v4l2_ioctl(i32 %21, i32 %22, %struct.v4l2_frmsizeenum* %7)
  %24 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %55 [
    i32 128, label %26
  ]

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %32, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @VIDIOC_ENUM_FRAMESIZES, align 4
  %30 = call i32 @v4l2_ioctl(i32 %28, i32 %29, %struct.v4l2_frmsizeenum* %7)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %7, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %7, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dstr_printf(%struct.dstr* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %7, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %7, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @v4l2_pack_tuple(i32 %45, i32 %48)
  %50 = call i32 @obs_property_list_add_int(i32* %40, i32 %42, i32 %49)
  %51 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %7, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %27

54:                                               ; preds = %27
  br label %80

55:                                               ; preds = %3
  %56 = load i32, i32* @LOG_INFO, align 4
  %57 = call i32 @blog(i32 %56, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32*, i32** @v4l2_framesizes, align 8
  store i32* %58, i32** %9, align 8
  br label %59

59:                                               ; preds = %76, %55
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @v4l2_unpack_tuple(i32* %10, i32* %11, i32 %65)
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @dstr_printf(%struct.dstr* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds %struct.dstr, %struct.dstr* %8, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @obs_property_list_add_int(i32* %70, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %63
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %9, align 8
  br label %59

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79, %54
  %81 = call i32 @dstr_free(%struct.dstr* %8)
  ret void
}

declare dso_local i32 @dstr_init(%struct.dstr*) #1

declare dso_local i32 @obs_property_list_clear(i32*) #1

declare dso_local i32 @obs_property_list_add_int(i32*, i32, i32) #1

declare dso_local i32 @obs_module_text(i8*) #1

declare dso_local i32 @v4l2_ioctl(i32, i32, %struct.v4l2_frmsizeenum*) #1

declare dso_local i32 @dstr_printf(%struct.dstr*, i8*, i32, i32) #1

declare dso_local i32 @v4l2_pack_tuple(i32, i32) #1

declare dso_local i32 @blog(i32, i8*) #1

declare dso_local i32 @v4l2_unpack_tuple(i32*, i32*, i32) #1

declare dso_local i32 @dstr_free(%struct.dstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
