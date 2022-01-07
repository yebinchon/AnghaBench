; ModuleID = '/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_gl_sc_uniform_texture.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/gpu/extr_shader_cache.c_gl_sc_uniform_texture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_cache = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.ra_tex = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.sc_uniform = type { i8*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.ra_tex* }
%struct.TYPE_9__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"sampler2D\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sampler1D\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sampler3D\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"sampler2DRect\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"samplerExternalOES\00", align 1
@RA_CTYPE_UINT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"highp usampler2D\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"usampler2D\00", align 1
@RA_VARTYPE_TEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_sc_uniform_texture(%struct.gl_shader_cache* %0, i8* %1, %struct.ra_tex* %2) #0 {
  %4 = alloca %struct.gl_shader_cache*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ra_tex*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sc_uniform*, align 8
  store %struct.gl_shader_cache* %0, %struct.gl_shader_cache** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ra_tex* %2, %struct.ra_tex** %6, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %9 = load %struct.ra_tex*, %struct.ra_tex** %6, align 8
  %10 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %58

15:                                               ; preds = %3
  %16 = load %struct.ra_tex*, %struct.ra_tex** %6, align 8
  %17 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %57

22:                                               ; preds = %15
  %23 = load %struct.ra_tex*, %struct.ra_tex** %6, align 8
  %24 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %56

29:                                               ; preds = %22
  %30 = load %struct.ra_tex*, %struct.ra_tex** %6, align 8
  %31 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %55

36:                                               ; preds = %29
  %37 = load %struct.ra_tex*, %struct.ra_tex** %6, align 8
  %38 = getelementptr inbounds %struct.ra_tex, %struct.ra_tex* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RA_CTYPE_UINT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %4, align 8
  %47 = getelementptr inbounds %struct.gl_shader_cache, %struct.gl_shader_cache* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)
  store i8* %53, i8** %7, align 8
  br label %54

54:                                               ; preds = %45, %36
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %28
  br label %57

57:                                               ; preds = %56, %21
  br label %58

58:                                               ; preds = %57, %14
  %59 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %4, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call %struct.sc_uniform* @find_uniform(%struct.gl_shader_cache* %59, i8* %60)
  store %struct.sc_uniform* %61, %struct.sc_uniform** %8, align 8
  %62 = load i32, i32* @RA_VARTYPE_TEX, align 4
  %63 = load %struct.sc_uniform*, %struct.sc_uniform** %8, align 8
  %64 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.sc_uniform*, %struct.sc_uniform** %8, align 8
  %68 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load %struct.gl_shader_cache*, %struct.gl_shader_cache** %4, align 8
  %70 = load %struct.sc_uniform*, %struct.sc_uniform** %8, align 8
  %71 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @gl_sc_next_binding(%struct.gl_shader_cache* %69, i32 %73)
  %75 = load %struct.sc_uniform*, %struct.sc_uniform** %8, align 8
  %76 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load %struct.ra_tex*, %struct.ra_tex** %6, align 8
  %79 = load %struct.sc_uniform*, %struct.sc_uniform** %8, align 8
  %80 = getelementptr inbounds %struct.sc_uniform, %struct.sc_uniform* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store %struct.ra_tex* %78, %struct.ra_tex** %81, align 8
  ret void
}

declare dso_local %struct.sc_uniform* @find_uniform(%struct.gl_shader_cache*, i8*) #1

declare dso_local i32 @gl_sc_next_binding(%struct.gl_shader_cache*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
