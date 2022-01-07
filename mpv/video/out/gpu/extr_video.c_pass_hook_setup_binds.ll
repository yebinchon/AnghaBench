; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_pass_hook_setup_binds.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_pass_hook_setup_binds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32, i32, i32, %struct.gl_user_shader_tex* }
%struct.gl_user_shader_tex = type { i32, i32 }
%struct.tex_hook = type { i64* }
%struct.image = type { i32 }

@SHADER_MAX_BINDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"HOOKED\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Skipping hook on %s due to no texture named %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_video*, i8*, i32, %struct.tex_hook*)* @pass_hook_setup_binds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pass_hook_setup_binds(%struct.gl_video* %0, i8* %1, i32 %2, %struct.tex_hook* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.image, align 4
  %7 = alloca %struct.gl_video*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tex_hook*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.gl_user_shader_tex*, align 8
  %15 = alloca %struct.image, align 4
  %16 = getelementptr inbounds %struct.image, %struct.image* %6, i32 0, i32 0
  store i32 %2, i32* %16, align 4
  store %struct.gl_video* %0, %struct.gl_video** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.tex_hook* %3, %struct.tex_hook** %9, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %112, %4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @SHADER_MAX_BINDS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %115

21:                                               ; preds = %17
  %22 = load %struct.tex_hook*, %struct.tex_hook** %9, align 8
  %23 = getelementptr inbounds %struct.tex_hook, %struct.tex_hook* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %112

33:                                               ; preds = %21
  %34 = load i8*, i8** %11, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %39 = getelementptr inbounds %struct.image, %struct.image* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @pass_bind(%struct.gl_video* %38, i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %43 = load i32, i32* %12, align 4
  %44 = getelementptr inbounds %struct.image, %struct.image* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @hook_prelude(%struct.gl_video* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45)
  %47 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = getelementptr inbounds %struct.image, %struct.image* %6, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @hook_prelude(%struct.gl_video* %47, i8* %48, i32 %49, i32 %51)
  br label %112

53:                                               ; preds = %33
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %83, %53
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %57 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %54
  %61 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %62 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %61, i32 0, i32 3
  %63 = load %struct.gl_user_shader_tex*, %struct.gl_user_shader_tex** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.gl_user_shader_tex, %struct.gl_user_shader_tex* %63, i64 %65
  store %struct.gl_user_shader_tex* %66, %struct.gl_user_shader_tex** %14, align 8
  %67 = load %struct.gl_user_shader_tex*, %struct.gl_user_shader_tex** %14, align 8
  %68 = getelementptr inbounds %struct.gl_user_shader_tex, %struct.gl_user_shader_tex* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %11, align 8
  %71 = call i64 @bstr_equals0(i32 %69, i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %60
  %74 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %75 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = load %struct.gl_user_shader_tex*, %struct.gl_user_shader_tex** %14, align 8
  %79 = getelementptr inbounds %struct.gl_user_shader_tex, %struct.gl_user_shader_tex* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @gl_sc_uniform_texture(i32 %76, i8* %77, i32 %80)
  br label %111

82:                                               ; preds = %60
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %54

86:                                               ; preds = %54
  %87 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @saved_img_find(%struct.gl_video* %87, i8* %88, %struct.image* %15)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %86
  %92 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = call i32 @MP_TRACE(%struct.gl_video* %92, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %93, i8* %94)
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %98 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, %96
  store i32 %100, i32* %98, align 4
  store i32 0, i32* %5, align 4
  br label %116

101:                                              ; preds = %86
  %102 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load %struct.gl_video*, %struct.gl_video** %7, align 8
  %105 = getelementptr inbounds %struct.image, %struct.image* %15, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @pass_bind(%struct.gl_video* %104, i32 %106)
  %108 = getelementptr inbounds %struct.image, %struct.image* %15, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @hook_prelude(%struct.gl_video* %102, i8* %103, i32 %107, i32 %109)
  br label %111

111:                                              ; preds = %101, %73
  br label %112

112:                                              ; preds = %111, %37, %32
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %17

115:                                              ; preds = %17
  store i32 1, i32* %5, align 4
  br label %116

116:                                              ; preds = %115, %91
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pass_bind(%struct.gl_video*, i32) #1

declare dso_local i32 @hook_prelude(%struct.gl_video*, i8*, i32, i32) #1

declare dso_local i64 @bstr_equals0(i32, i8*) #1

declare dso_local i32 @gl_sc_uniform_texture(i32, i8*, i32) #1

declare dso_local i32 @saved_img_find(%struct.gl_video*, i8*, %struct.image*) #1

declare dso_local i32 @MP_TRACE(%struct.gl_video*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
