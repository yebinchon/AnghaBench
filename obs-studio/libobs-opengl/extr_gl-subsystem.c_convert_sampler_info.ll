; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_convert_sampler_info.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_convert_sampler_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_sampler_state = type { i32, i8*, i8*, i8*, i32, i32 }
%struct.gs_sampler_info = type { i32, i32, i32, i32, i32 }

@GLAD_GL_EXT_texture_filter_anisotropic = common dso_local global i64 0, align 8
@GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"glGetIntegerv(GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT)\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"convert_sampler_info: 1 <= max_anisotropy <= %d violated, selected: %d, set: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_sampler_info(%struct.gs_sampler_state* %0, %struct.gs_sampler_info* %1) #0 {
  %3 = alloca %struct.gs_sampler_state*, align 8
  %4 = alloca %struct.gs_sampler_info*, align 8
  %5 = alloca i32, align 4
  store %struct.gs_sampler_state* %0, %struct.gs_sampler_state** %3, align 8
  store %struct.gs_sampler_info* %1, %struct.gs_sampler_info** %4, align 8
  %6 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %7 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %10 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %9, i32 0, i32 5
  %11 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %12 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %11, i32 0, i32 4
  %13 = call i32 @convert_filter(i32 %8, i32* %10, i32* %12)
  %14 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %15 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @convert_address_mode(i32 %16)
  %18 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %19 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %21 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @convert_address_mode(i32 %22)
  %24 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %25 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %27 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @convert_address_mode(i32 %28)
  %30 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %31 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %33 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %36 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 1, i32* %5, align 4
  %37 = load i64, i64* @GLAD_GL_EXT_texture_filter_anisotropic, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i32, i32* @GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT, align 4
  %41 = call i32 @glGetIntegerv(i32 %40, i32* %5)
  %42 = call i32 @gl_success(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %2
  %44 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %45 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sle i32 1, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %50 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %84

55:                                               ; preds = %48, %43
  %56 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %57 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 1
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %62 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %74

63:                                               ; preds = %55
  %64 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %65 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %72 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %63
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i32, i32* @LOG_DEBUG, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.gs_sampler_info*, %struct.gs_sampler_info** %4, align 8
  %78 = getelementptr inbounds %struct.gs_sampler_info, %struct.gs_sampler_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.gs_sampler_state*, %struct.gs_sampler_state** %3, align 8
  %81 = getelementptr inbounds %struct.gs_sampler_state, %struct.gs_sampler_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @blog(i32 %75, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %79, i32 %82)
  br label %84

84:                                               ; preds = %74, %54
  ret void
}

declare dso_local i32 @convert_filter(i32, i32*, i32*) #1

declare dso_local i8* @convert_address_mode(i32) #1

declare dso_local i32 @glGetIntegerv(i32, i32*) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @blog(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
