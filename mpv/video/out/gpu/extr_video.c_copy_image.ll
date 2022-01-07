; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_copy_image.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_copy_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_video = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.image = type { i32, i32, double, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"rgba\00", align 1
@RA_CTYPE_UINT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"color.%s = %f * vec4(texture(texture%d, texcoord%d)).%s;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_video*, i32*, %struct.image*)* @copy_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_image(%struct.gl_video* %0, i32* %1, %struct.image* byval(%struct.image) align 8 %2) #0 {
  %4 = alloca %struct.gl_video*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i8], align 1
  %9 = alloca [5 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gl_video* %0, %struct.gl_video** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = getelementptr inbounds %struct.image, %struct.image* %2, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  %20 = icmp sle i32 %19, 4
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = getelementptr inbounds %struct.image, %struct.image* %2, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  %27 = icmp sle i32 %26, 4
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %31 = call i32 @pass_bind(%struct.gl_video* %30, %struct.image* byval(%struct.image) align 8 %2)
  store i32 %31, i32* %7, align 4
  %32 = bitcast [5 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %32, i8 0, i64 5, i1 false)
  %33 = bitcast [5 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %33, i8 0, i64 5, i1 false)
  %34 = call i8* @get_tex_swizzle(%struct.image* %2)
  store i8* %34, i8** %10, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %62, %3
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %35
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds %struct.image, %struct.image* %2, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 %49
  store i8 %47, i8* %50, align 1
  %51 = load i8*, i8** %11, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %51, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 %60
  store i8 %58, i8* %61, align 1
  br label %62

62:                                               ; preds = %39
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %35

65:                                               ; preds = %35
  %66 = getelementptr inbounds %struct.image, %struct.image* %2, i32 0, i32 3
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %93

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.image, %struct.image* %2, i32 0, i32 3
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @RA_CTYPE_UINT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %69
  %80 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %81 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = shl i64 1, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sitofp i32 %87 to double
  %89 = fdiv double 1.000000e+00, %88
  %90 = getelementptr inbounds %struct.image, %struct.image* %2, i32 0, i32 2
  %91 = load double, double* %90, align 8
  %92 = fmul double %91, %89
  store double %92, double* %90, align 8
  br label %93

93:                                               ; preds = %79, %69, %65
  %94 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %95 = getelementptr inbounds %struct.image, %struct.image* %2, i32 0, i32 2
  %96 = load double, double* %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %100 = call i32 @GLSLF(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %94, double %96, i32 %97, i32 %98, i8* %99)
  %101 = load i32, i32* %6, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %101
  store i32 %104, i32* %102, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pass_bind(%struct.gl_video*, %struct.image* byval(%struct.image) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @get_tex_swizzle(%struct.image*) #1

declare dso_local i32 @GLSLF(i8*, i8*, double, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
