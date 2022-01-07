; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_add_user_hook.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_video.c_add_user_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_user_shader_hook = type { i32*, i32*, i32, i32, i32 }
%struct.gl_video = type { i32, i32 }
%struct.tex_hook = type { i8*, i8**, i8**, %struct.gl_user_shader_hook*, i32, i32, i32, i32 }

@user_hook_cond = common dso_local global i32 0, align 4
@user_hook = common dso_local global i32 0, align 4
@SHADER_MAX_HOOKS = common dso_local global i32 0, align 4
@SHADER_MAX_BINDS = common dso_local global i32 0, align 4
@copy = common dso_local global %struct.gl_user_shader_hook* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.gl_user_shader_hook*)* @add_user_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_user_hook(i8* %0, %struct.gl_user_shader_hook* byval(%struct.gl_user_shader_hook) align 8 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.gl_video*, align 8
  %5 = alloca %struct.gl_user_shader_hook*, align 8
  %6 = alloca %struct.tex_hook, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.gl_video*
  store %struct.gl_video* %10, %struct.gl_video** %4, align 8
  %11 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %12 = load %struct.gl_user_shader_hook*, %struct.gl_user_shader_hook** %5, align 8
  %13 = ptrtoint %struct.gl_user_shader_hook* %12 to i32
  %14 = call %struct.gl_user_shader_hook* @talloc_ptrtype(%struct.gl_video* %11, i32 %13)
  store %struct.gl_user_shader_hook* %14, %struct.gl_user_shader_hook** %5, align 8
  %15 = load %struct.gl_user_shader_hook*, %struct.gl_user_shader_hook** %5, align 8
  %16 = bitcast %struct.gl_user_shader_hook* %15 to i8*
  %17 = bitcast %struct.gl_user_shader_hook* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 32, i1 false)
  %18 = getelementptr inbounds %struct.tex_hook, %struct.tex_hook* %6, i32 0, i32 0
  %19 = load %struct.gl_user_shader_hook*, %struct.gl_user_shader_hook** %5, align 8
  %20 = getelementptr inbounds %struct.gl_user_shader_hook, %struct.gl_user_shader_hook* %1, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @bstrdup0(%struct.gl_user_shader_hook* %19, i32 %21)
  store i8* %22, i8** %18, align 8
  %23 = getelementptr inbounds %struct.tex_hook, %struct.tex_hook* %6, i32 0, i32 1
  store i8** null, i8*** %23, align 8
  %24 = getelementptr inbounds %struct.tex_hook, %struct.tex_hook* %6, i32 0, i32 2
  store i8** null, i8*** %24, align 8
  %25 = getelementptr inbounds %struct.tex_hook, %struct.tex_hook* %6, i32 0, i32 3
  %26 = load %struct.gl_user_shader_hook*, %struct.gl_user_shader_hook** %5, align 8
  store %struct.gl_user_shader_hook* %26, %struct.gl_user_shader_hook** %25, align 8
  %27 = getelementptr inbounds %struct.tex_hook, %struct.tex_hook* %6, i32 0, i32 4
  %28 = load i32, i32* @user_hook_cond, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.tex_hook, %struct.tex_hook* %6, i32 0, i32 5
  %30 = load i32, i32* @user_hook, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.tex_hook, %struct.tex_hook* %6, i32 0, i32 6
  %32 = getelementptr inbounds %struct.gl_user_shader_hook, %struct.gl_user_shader_hook* %1, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %31, align 8
  %34 = getelementptr inbounds %struct.tex_hook, %struct.tex_hook* %6, i32 0, i32 7
  %35 = getelementptr inbounds %struct.gl_user_shader_hook, %struct.gl_user_shader_hook* %1, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %34, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %55, %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @SHADER_MAX_HOOKS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load %struct.gl_user_shader_hook*, %struct.gl_user_shader_hook** %5, align 8
  %43 = getelementptr inbounds %struct.gl_user_shader_hook, %struct.gl_user_shader_hook* %1, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @bstrdup0(%struct.gl_user_shader_hook* %42, i32 %48)
  %50 = getelementptr inbounds %struct.tex_hook, %struct.tex_hook* %6, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %49, i8** %54, align 8
  br label %55

55:                                               ; preds = %41
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %37

58:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %77, %58
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SHADER_MAX_BINDS, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.gl_user_shader_hook*, %struct.gl_user_shader_hook** %5, align 8
  %65 = getelementptr inbounds %struct.gl_user_shader_hook, %struct.gl_user_shader_hook* %1, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @bstrdup0(%struct.gl_user_shader_hook* %64, i32 %70)
  %72 = getelementptr inbounds %struct.tex_hook, %struct.tex_hook* %6, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %71, i8** %76, align 8
  br label %77

77:                                               ; preds = %63
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %59

80:                                               ; preds = %59
  %81 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %82 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %83 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.gl_video*, %struct.gl_video** %4, align 8
  %86 = getelementptr inbounds %struct.gl_video, %struct.gl_video* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @MP_TARRAY_APPEND(%struct.gl_video* %81, i32 %84, i32 %87, %struct.tex_hook* byval(%struct.tex_hook) align 8 %6)
  ret i32 1
}

declare dso_local %struct.gl_user_shader_hook* @talloc_ptrtype(%struct.gl_video*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @bstrdup0(%struct.gl_user_shader_hook*, i32) #1

declare dso_local i32 @MP_TARRAY_APPEND(%struct.gl_video*, i32, i32, %struct.tex_hook* byval(%struct.tex_hook) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
