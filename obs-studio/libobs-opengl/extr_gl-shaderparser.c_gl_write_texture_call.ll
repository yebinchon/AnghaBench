; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_texture_call.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_texture_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cf_parser }
%struct.cf_parser = type { i32 }
%struct.shader_var = type { i64, i8* }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gl_shader_parser*, %struct.shader_var*, i8*, i32)* @gl_write_texture_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl_write_texture_call(%struct.gl_shader_parser* %0, %struct.shader_var* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gl_shader_parser*, align 8
  %7 = alloca %struct.shader_var*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cf_parser*, align 8
  %11 = alloca i64, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %6, align 8
  store %struct.shader_var* %1, %struct.shader_var** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %13 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.cf_parser* %14, %struct.cf_parser** %10, align 8
  %15 = load %struct.cf_parser*, %struct.cf_parser** %10, align 8
  %16 = call i32 @cf_next_token(%struct.cf_parser* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %72

19:                                               ; preds = %4
  %20 = load %struct.cf_parser*, %struct.cf_parser** %10, align 8
  %21 = call i32 @cf_token_is(%struct.cf_parser* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %72

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %24
  %28 = load %struct.cf_parser*, %struct.cf_parser** %10, align 8
  %29 = call i32 @cf_next_token(%struct.cf_parser* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %72

32:                                               ; preds = %27
  %33 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %34 = load %struct.cf_parser*, %struct.cf_parser** %10, align 8
  %35 = getelementptr inbounds %struct.cf_parser, %struct.cf_parser* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @sp_getsampler(%struct.gl_shader_parser* %33, i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %72

41:                                               ; preds = %32
  %42 = load %struct.cf_parser*, %struct.cf_parser** %10, align 8
  %43 = call i32 @cf_next_token(%struct.cf_parser* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %72

46:                                               ; preds = %41
  %47 = load %struct.cf_parser*, %struct.cf_parser** %10, align 8
  %48 = call i32 @cf_token_is(%struct.cf_parser* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %72

51:                                               ; preds = %46
  %52 = load i64, i64* %11, align 8
  %53 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %54 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %24
  %56 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %57 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %56, i32 0, i32 0
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @dstr_cat(i32* %57, i8* %58)
  %60 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %61 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %60, i32 0, i32 0
  %62 = call i32 @dstr_cat(i32* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %64 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %63, i32 0, i32 0
  %65 = load %struct.shader_var*, %struct.shader_var** %7, align 8
  %66 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @dstr_cat(i32* %64, i8* %67)
  %69 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %6, align 8
  %70 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %69, i32 0, i32 0
  %71 = call i32 @dstr_cat(i32* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %72

72:                                               ; preds = %55, %50, %45, %40, %31, %23, %18
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @cf_next_token(%struct.cf_parser*) #1

declare dso_local i32 @cf_token_is(%struct.cf_parser*, i8*) #1

declare dso_local i64 @sp_getsampler(%struct.gl_shader_parser*, i32) #1

declare dso_local i32 @dstr_cat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
