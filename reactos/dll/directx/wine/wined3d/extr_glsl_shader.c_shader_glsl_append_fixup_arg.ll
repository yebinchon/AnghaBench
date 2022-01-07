; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_append_fixup_arg.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_glsl_shader.c_shader_glsl_append_fixup_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".y\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c".z\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c".w\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Unhandled channel source %#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c" * 2.0 - 1.0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i32)* @shader_glsl_append_fixup_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shader_glsl_append_fixup_arg(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %40 [
    i32 128, label %10
    i32 133, label %13
    i32 131, label %16
    i32 130, label %22
    i32 129, label %28
    i32 132, label %34
  ]

10:                                               ; preds = %4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @strcat(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %45

13:                                               ; preds = %4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcat(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %45

16:                                               ; preds = %4
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @strcat(i8* %17, i8* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @strcat(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %45

22:                                               ; preds = %4
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strcat(i8* %23, i8* %24)
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strcat(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %45

28:                                               ; preds = %4
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @strcat(i8* %29, i8* %30)
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @strcat(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %45

34:                                               ; preds = %4
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strcat(i8* %35, i8* %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @strcat(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %45

40:                                               ; preds = %4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @FIXME(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %41)
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @strcat(i8* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %34, %28, %22, %16, %13, %10
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strcat(i8* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
