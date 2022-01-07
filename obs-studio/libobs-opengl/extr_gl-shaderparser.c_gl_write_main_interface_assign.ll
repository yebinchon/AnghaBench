; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_main_interface_assign.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_main_interface_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i64, i32 }
%struct.shader_var = type { i8*, i32 }

@GS_SHADER_VERTEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"POSITION\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"\09gl_Position = \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*, %struct.shader_var*, i8*)* @gl_write_main_interface_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_write_main_interface_assign(%struct.gl_shader_parser* %0, %struct.shader_var* %1, i8* %2) #0 {
  %4 = alloca %struct.gl_shader_parser*, align 8
  %5 = alloca %struct.shader_var*, align 8
  %6 = alloca i8*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %4, align 8
  store %struct.shader_var* %1, %struct.shader_var** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %8 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GS_SHADER_VERTEX, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %3
  %13 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %14 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @strcmp(i32 %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %12
  %19 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %20 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %19, i32 0, i32 1
  %21 = call i32 @dstr_cat(i32* %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %23 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %22, i32 0, i32 1
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @dstr_cat(i32* %23, i8* %24)
  %26 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %27 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %26, i32 0, i32 1
  %28 = load %struct.shader_var*, %struct.shader_var** %5, align 8
  %29 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @dstr_cat(i32* %27, i8* %30)
  %32 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %33 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %32, i32 0, i32 1
  %34 = call i32 @dstr_cat(i32* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %18, %12, %3
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @dstr_cat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
