; ModuleID = '/home/carl/AnghaBench/openpilot/selfdrive/common/extr_glutil.c_load_shader.c'
source_filename = "/home/carl/AnghaBench/openpilot/selfdrive/common/extr_glutil.c_load_shader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GL_COMPILE_STATUS = common dso_local global i32 0, align 4
@GL_INFO_LOG_LENGTH = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"error compiling shader:\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_shader(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @glCreateShader(i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @glShaderSource(i32 %15, i32 1, i8** %5, i32* null)
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @glCompileShader(i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @GL_COMPILE_STATUS, align 4
  %21 = call i32 @glGetShaderiv(i32 %19, i32 %20, i32* %6)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %57

26:                                               ; preds = %14
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @GL_INFO_LOG_LENGTH, align 4
  %29 = call i32 @glGetShaderiv(i32 %27, i32 %28, i32* %7)
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @malloc(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @glGetShaderInfoLog(i32 %39, i32 %40, i32* null, i8* %41)
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 0, i8* %47, align 1
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %49)
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @free(i8* %51)
  br label %53

53:                                               ; preds = %38, %32
  br label %54

54:                                               ; preds = %53, %26
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @glDeleteShader(i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %24, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @glCreateShader(i32) #1

declare dso_local i32 @glShaderSource(i32, i32, i8**, i32*) #1

declare dso_local i32 @glCompileShader(i32) #1

declare dso_local i32 @glGetShaderiv(i32, i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @glGetShaderInfoLog(i32, i32, i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @glDeleteShader(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
