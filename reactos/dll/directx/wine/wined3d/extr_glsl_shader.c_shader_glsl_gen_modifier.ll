; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_gen_modifier.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_gen_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"-%s%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"!%s%s\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"(%s%s - vec4(0.5)%s)\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"-(%s%s - vec4(0.5)%s)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"(2.0 * (%s%s - 0.5))\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"-(2.0 * (%s%s - 0.5))\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"(1.0 - %s%s)\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"(2.0 * %s%s)\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"-(2.0 * %s%s)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"abs(%s%s)\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"-abs(%s%s)\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Unhandled modifier %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*, i8*)* @shader_glsl_gen_modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_gen_modifier(i32 %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %72 [
    i32 135, label %10
    i32 136, label %10
    i32 133, label %10
    i32 134, label %15
    i32 132, label %20
    i32 139, label %25
    i32 138, label %31
    i32 131, label %37
    i32 130, label %42
    i32 137, label %47
    i32 129, label %52
    i32 128, label %57
    i32 141, label %62
    i32 140, label %67
  ]

10:                                               ; preds = %4, %4, %4
  %11 = load i8*, i8** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13)
  br label %79

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %18)
  br label %79

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %22, i8* %23)
  br label %79

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %27, i8* %28, i8* %29)
  br label %79

31:                                               ; preds = %4
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %33, i8* %34, i8* %35)
  br label %79

37:                                               ; preds = %4
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %39, i8* %40)
  br label %79

42:                                               ; preds = %4
  %43 = load i8*, i8** %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %44, i8* %45)
  br label %79

47:                                               ; preds = %4
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %49, i8* %50)
  br label %79

52:                                               ; preds = %4
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %54, i8* %55)
  br label %79

57:                                               ; preds = %4
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %59, i8* %60)
  br label %79

62:                                               ; preds = %4
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %64, i8* %65)
  br label %79

67:                                               ; preds = %4
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %69, i8* %70)
  br label %79

72:                                               ; preds = %4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %73)
  %75 = load i8*, i8** %8, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %76, i8* %77)
  br label %79

79:                                               ; preds = %72, %67, %62, %57, %52, %47, %42, %37, %31, %25, %20, %15, %10
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
