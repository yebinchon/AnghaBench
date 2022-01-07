; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_function_contents.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shaderparser.c_gl_write_function_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gl_shader_parser = type { i32 }
%struct.cf_token = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@CFTOKEN_NAME = common dso_local global i64 0, align 8
@CFTOKEN_NONE = common dso_local global i64 0, align 8
@CFTOKEN_OTHER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gl_shader_parser*, %struct.cf_token**, i8*)* @gl_write_function_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gl_write_function_contents(%struct.gl_shader_parser* %0, %struct.cf_token** %1, i8* %2) #0 {
  %4 = alloca %struct.gl_shader_parser*, align 8
  %5 = alloca %struct.cf_token**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cf_token*, align 8
  store %struct.gl_shader_parser* %0, %struct.gl_shader_parser** %4, align 8
  store %struct.cf_token** %1, %struct.cf_token*** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.cf_token**, %struct.cf_token*** %5, align 8
  %9 = load %struct.cf_token*, %struct.cf_token** %8, align 8
  store %struct.cf_token* %9, %struct.cf_token** %7, align 8
  %10 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %11 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CFTOKEN_NAME, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %17 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %18 = call i32 @gl_write_type_token(%struct.gl_shader_parser* %16, %struct.cf_token* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %22 = call i32 @gl_write_intrinsic(%struct.gl_shader_parser* %21, %struct.cf_token** %7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20, %3
  %25 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %26 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %25, i32 0, i32 0
  %27 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %28 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %27, i32 0, i32 1
  %29 = call i32 @dstr_cat_strref(i32* %26, %struct.TYPE_3__* %28)
  br label %30

30:                                               ; preds = %24, %20, %15
  br label %31

31:                                               ; preds = %111, %30
  %32 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %33 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CFTOKEN_NONE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %112

37:                                               ; preds = %31
  %38 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %39 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %38, i32 1
  store %struct.cf_token* %39, %struct.cf_token** %7, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %44 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %43, i32 0, i32 1
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strref_cmp(%struct.TYPE_3__* %44, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %112

49:                                               ; preds = %42, %37
  %50 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %51 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CFTOKEN_NAME, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %49
  %56 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %57 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %58 = call i32 @gl_write_type_token(%struct.gl_shader_parser* %56, %struct.cf_token* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %62 = call i32 @gl_write_intrinsic(%struct.gl_shader_parser* %61, %struct.cf_token** %7)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %66 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %65, i32 0, i32 0
  %67 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %68 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %67, i32 0, i32 1
  %69 = call i32 @dstr_cat_strref(i32* %66, %struct.TYPE_3__* %68)
  br label %70

70:                                               ; preds = %64, %60, %55
  br label %111

71:                                               ; preds = %49
  %72 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %73 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @CFTOKEN_OTHER, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %71
  %78 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %79 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 123
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  call void @gl_write_function_contents(%struct.gl_shader_parser* %86, %struct.cf_token** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %98

87:                                               ; preds = %77
  %88 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %89 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 40
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  call void @gl_write_function_contents(%struct.gl_shader_parser* %96, %struct.cf_token** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %87
  br label %98

98:                                               ; preds = %97, %85
  %99 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %100 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %99, i32 0, i32 0
  %101 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %102 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %101, i32 0, i32 1
  %103 = call i32 @dstr_cat_strref(i32* %100, %struct.TYPE_3__* %102)
  br label %110

104:                                              ; preds = %71
  %105 = load %struct.gl_shader_parser*, %struct.gl_shader_parser** %4, align 8
  %106 = getelementptr inbounds %struct.gl_shader_parser, %struct.gl_shader_parser* %105, i32 0, i32 0
  %107 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %108 = getelementptr inbounds %struct.cf_token, %struct.cf_token* %107, i32 0, i32 1
  %109 = call i32 @dstr_cat_strref(i32* %106, %struct.TYPE_3__* %108)
  br label %110

110:                                              ; preds = %104, %98
  br label %111

111:                                              ; preds = %110, %70
  br label %31

112:                                              ; preds = %48, %31
  %113 = load %struct.cf_token*, %struct.cf_token** %7, align 8
  %114 = load %struct.cf_token**, %struct.cf_token*** %5, align 8
  store %struct.cf_token* %113, %struct.cf_token** %114, align 8
  ret void
}

declare dso_local i32 @gl_write_type_token(%struct.gl_shader_parser*, %struct.cf_token*) #1

declare dso_local i32 @gl_write_intrinsic(%struct.gl_shader_parser*, %struct.cf_token**) #1

declare dso_local i32 @dstr_cat_strref(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @strref_cmp(%struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
