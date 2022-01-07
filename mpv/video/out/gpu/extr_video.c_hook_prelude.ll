; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_hook_prelude.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_hook_prelude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { i32 }
%struct.image = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"#define %s_raw texture%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"#define %s_pos texcoord%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"#define %s_size texture_size%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"#define %s_rot texture_rot%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"#define %s_off texture_off%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"#define %s_pt pixel_size%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"#define %s_map texmap%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"#define %s_mul %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"#define %s_tex(pos) (%s_mul * vec4(texture(%s_raw, pos)).%s)\0A\00", align 1
@identity_trans = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [59 x i8] c"#define %s_texOff(off) %s_tex(%s_pos + %s_pt * vec2(off))\0A\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"#define %s_texOff(off) %s_tex(%s_pos + %s_rot * vec2(off)/%s_size)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*, i8*, i32, i64, i32)* @hook_prelude to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hook_prelude(%struct.gl_video* %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.image, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca %struct.gl_video*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [5 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %3, i64* %15, align 4
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %4, i32* %16, align 4
  %17 = bitcast %struct.image* %6 to i8*
  %18 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  store %struct.gl_video* %0, %struct.gl_video** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 (i8*, i8*, ...) @GLSLHF(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 (i8*, i8*, ...) @GLSLHF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %23)
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 (i8*, i8*, ...) @GLSLHF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i8*, i8*, ...) @GLSLHF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 (i8*, i8*, ...) @GLSLHF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %31, i32 %32)
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i8*, i8*, ...) @GLSLHF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %34, i32 %35)
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i8*, i8*, ...) @GLSLHF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %37, i32 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = getelementptr inbounds %struct.image, %struct.image* %6, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i8*, ...) @GLSLHF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %40, i32 %42)
  %44 = bitcast [5 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %44, i8 0, i64 5, i1 false)
  %45 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %46 = call i8* @get_tex_swizzle(%struct.image* %6)
  %47 = call i32 @snprintf(i8* %45, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %46)
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %49 = call i32 @strlen(i8* %48)
  store i32 %49, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %73, %5
  %51 = load i32, i32* %13, align 4
  %52 = getelementptr inbounds %struct.image, %struct.image* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %50
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %55
  %59 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %14, align 1
  %61 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %62 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i32, i32* %12, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @memmove(i8* %61, i8* %63, i32 %65)
  %67 = load i8, i8* %14, align 1
  %68 = load i32, i32* %12, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 %70
  store i8 %67, i8* %71, align 1
  br label %72

72:                                               ; preds = %58, %55
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %50

76:                                               ; preds = %50
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %81 = call i32 (i8*, i8*, ...) @GLSLHF(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.9, i64 0, i64 0), i8* %77, i8* %78, i8* %79, i8* %80)
  %82 = getelementptr inbounds %struct.image, %struct.image* %6, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @identity_trans, align 4
  %85 = call i64 @gl_transform_eq(i32 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 (i8*, i8*, ...) @GLSLHF(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i8* %88, i8* %89, i8* %90, i8* %91)
  br label %100

93:                                               ; preds = %76
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %9, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 (i8*, i8*, ...) @GLSLHF(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0), i8* %94, i8* %95, i8* %96, i8* %97, i8* %98)
  br label %100

100:                                              ; preds = %93, %87
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @GLSLHF(i8*, i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @get_tex_swizzle(%struct.image*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local i64 @gl_transform_eq(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
