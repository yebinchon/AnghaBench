; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_struct.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32 }
%struct.shader_struct = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.shader_var* }
%struct.shader_var = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*, %struct.shader_struct*)* @gl_write_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_write_struct(%struct.gl_shader_parser* %0, %struct.shader_struct* %1) #0 {
  %3 = alloca %struct.gl_shader_parser*, align 8
  %4 = alloca %struct.shader_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.shader_var*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %3, align 8
  store %struct.shader_struct* %1, %struct.shader_struct** %4, align 8
  %7 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %8 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %7, i32 0, i32 0
  %9 = call i32 @dstr_cat(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %11 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %10, i32 0, i32 0
  %12 = load %struct.shader_struct*, %struct.shader_struct** %4, align 8
  %13 = getelementptr inbounds %struct.shader_struct, %struct.shader_struct* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @dstr_cat(i32* %11, i8* %14)
  %16 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %17 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %16, i32 0, i32 0
  %18 = call i32 @dstr_cat(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %42, %2
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.shader_struct*, %struct.shader_struct** %4, align 8
  %22 = getelementptr inbounds %struct.shader_struct, %struct.shader_struct* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %20, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %19
  %27 = load %struct.shader_struct*, %struct.shader_struct** %4, align 8
  %28 = getelementptr inbounds %struct.shader_struct, %struct.shader_struct* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.shader_var*, %struct.shader_var** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %30, i64 %31
  store %struct.shader_var* %32, %struct.shader_var** %6, align 8
  %33 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %34 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %33, i32 0, i32 0
  %35 = call i32 @dstr_cat(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %37 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %38 = call i32 @gl_write_var(%struct.gl_shader_parser* %36, %struct.shader_var* %37)
  %39 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %40 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %39, i32 0, i32 0
  %41 = call i32 @dstr_cat(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %26
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %19

45:                                               ; preds = %19
  %46 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %3, align 8
  %47 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %46, i32 0, i32 0
  %48 = call i32 @dstr_cat(i32* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dstr_cat(i32*, i8*) #1

declare dso_local i32 @gl_write_var(%struct.gl_shader_parser*, %struct.shader_var*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
