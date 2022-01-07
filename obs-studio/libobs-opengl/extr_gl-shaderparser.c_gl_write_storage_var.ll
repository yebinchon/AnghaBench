; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_storage_var.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_storage_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i64, i32, i32, i32 }
%struct.shader_var = type { i8*, i32, i32 }
%struct.shader_struct = type { i32 }
%struct.gl_parser_attrib = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"VERTEXID\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"POSITION\00", align 1
@GS_SHADER_VERTEX = common dso_local global i64 0, align 8
@GS_SHADER_PIXEL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"in \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"out \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*, %struct.shader_var*, i32, i8*)* @gl_write_storage_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_write_storage_var(%struct.gl_shader_parser* %0, %struct.shader_var* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.gl_shader_parser*, align 8
  %6 = alloca %struct.shader_var*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.shader_struct*, align 8
  %10 = alloca %struct.gl_parser_attrib, align 4
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %5, align 8
  store %struct.shader_var* %1, %struct.shader_var** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %12 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %11, i32 0, i32 3
  %13 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %14 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.shader_struct* @shader_parser_getstruct(i32* %12, i32 %15)
  store %struct.shader_struct* %16, %struct.shader_struct** %9, align 8
  %17 = load %struct.shader_struct*, %struct.shader_struct** %9, align 8
  %18 = icmp ne %struct.shader_struct* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %21 = load %struct.shader_struct*, %struct.shader_struct** %9, align 8
  %22 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %23 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @gl_unwrap_storage_struct(%struct.gl_shader_parser* %20, %struct.shader_struct* %21, i8* %24, i32 %25, i8* %26)
  br label %111

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %33 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @strcmp(i32 %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %111

38:                                               ; preds = %31, %28
  %39 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %40 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @strcmp(i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %49 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @GS_SHADER_VERTEX, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %111

54:                                               ; preds = %47, %44
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %59 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @GS_SHADER_PIXEL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %111

64:                                               ; preds = %57, %54
  br label %65

65:                                               ; preds = %64, %38
  %66 = call i32 @gl_parser_attrib_init(%struct.gl_parser_attrib* %10)
  %67 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %68 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %67, i32 0, i32 2
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %73 = call i32 @dstr_cat(i32* %68, i8* %72)
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = getelementptr inbounds %struct.gl_parser_attrib, %struct.gl_parser_attrib* %10, i32 0, i32 2
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @dstr_cat(i32* %77, i8* %78)
  br label %80

80:                                               ; preds = %76, %65
  %81 = getelementptr inbounds %struct.gl_parser_attrib, %struct.gl_parser_attrib* %10, i32 0, i32 2
  %82 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %83 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @dstr_cat(i32* %81, i8* %84)
  %86 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %87 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %88 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @gl_write_type(%struct.gl_shader_parser* %86, i32 %89)
  %91 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %92 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %91, i32 0, i32 2
  %93 = call i32 @dstr_cat(i32* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %94 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %95 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.gl_parser_attrib, %struct.gl_parser_attrib* %10, i32 0, i32 2
  %97 = call i32 @dstr_cat_dstr(i32* %95, i32* %96)
  %98 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %99 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %98, i32 0, i32 2
  %100 = call i32 @dstr_cat(i32* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32, i32* %7, align 4
  %102 = getelementptr inbounds %struct.gl_parser_attrib, %struct.gl_parser_attrib* %10, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = load %struct.shader_var*, %struct.shader_var** %6, align 8
  %104 = getelementptr inbounds %struct.shader_var, %struct.shader_var* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.gl_parser_attrib, %struct.gl_parser_attrib* %10, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  %107 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %5, align 8
  %108 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @da_push_back(i32 %109, %struct.gl_parser_attrib* %10)
  br label %111

111:                                              ; preds = %37, %53, %63, %80, %19
  ret void
}

declare dso_local %struct.shader_struct* @shader_parser_getstruct(i32*, i32) #1

declare dso_local i32 @gl_unwrap_storage_struct(%struct.gl_shader_parser*, %struct.shader_struct*, i8*, i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @gl_parser_attrib_init(%struct.gl_parser_attrib*) #1

declare dso_local i32 @dstr_cat(i32*, i8*) #1

declare dso_local i32 @gl_write_type(%struct.gl_shader_parser*, i32) #1

declare dso_local i32 @dstr_cat_dstr(i32*, i32*) #1

declare dso_local i32 @da_push_back(i32, %struct.gl_parser_attrib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
