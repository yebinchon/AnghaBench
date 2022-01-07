; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/common/extr_glutil.c_load_program.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/common/extr_glutil.c_load_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_VERTEX_SHADER = common dso_local global i32 0, align 4
@GL_FRAGMENT_SHADER = common dso_local global i32 0, align 4
@GL_LINK_STATUS = common dso_local global i32 0, align 4
@GL_INFO_LOG_LENGTH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"error linking program:\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_program(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* @GL_VERTEX_SHADER, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @load_shader(i32 %12, i8* %13)
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %80

17:                                               ; preds = %2
  %18 = load i32, i32* @GL_FRAGMENT_SHADER, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @load_shader(i32 %18, i8* %19)
  store i32 %20, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %77

23:                                               ; preds = %17
  %24 = call i32 (...) @glCreateProgram()
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  br label %74

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @glAttachShader(i32 %28, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @glAttachShader(i32 %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @glLinkProgram(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GL_LINK_STATUS, align 4
  %38 = call i32 @glGetProgramiv(i32 %36, i32 %37, i32* %9)
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %80

43:                                               ; preds = %27
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @GL_INFO_LOG_LENGTH, align 4
  %46 = call i32 @glGetProgramiv(i32 %44, i32 %45, i32* %10)
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @malloc(i32 %50)
  %52 = inttoptr i64 %51 to i8*
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %70

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @glGetProgramInfoLog(i32 %56, i32 %57, i32* null, i8* %58)
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i32, i32* @stderr, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %66)
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @free(i8* %68)
  br label %70

70:                                               ; preds = %55, %49
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @glDeleteProgram(i32 %72)
  br label %74

74:                                               ; preds = %71, %26
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @glDeleteShader(i32 %75)
  br label %77

77:                                               ; preds = %74, %22
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @glDeleteShader(i32 %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %41, %16
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @load_shader(i32, i8*) #1

declare dso_local i32 @glCreateProgram(...) #1

declare dso_local i32 @glAttachShader(i32, i32) #1

declare dso_local i32 @glLinkProgram(i32) #1

declare dso_local i32 @glGetProgramiv(i32, i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @glGetProgramInfoLog(i32, i32, i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @glDeleteProgram(i32) #1

declare dso_local i32 @glDeleteShader(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
