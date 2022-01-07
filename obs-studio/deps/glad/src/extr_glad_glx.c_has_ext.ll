; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_glx.c_has_ext.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/glad/src/extr_glad_glx.c_has_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLAD_GLX_VERSION_1_1 = common dso_local global i32 0, align 4
@GLADGLXDisplay = common dso_local global i32 0, align 4
@GLADGLXscreen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @has_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_ext(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @GLAD_GLX_VERSION_1_1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %57

10:                                               ; preds = %1
  %11 = load i32, i32* @GLADGLXDisplay, align 4
  %12 = load i32, i32* @GLADGLXscreen, align 4
  %13 = call i8* @glXQueryExtensionsString(i32 %11, i32 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %10
  store i32 0, i32* %2, align 4
  br label %57

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %20, %54
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i8* @strstr(i8* %22, i8* %23)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %56

28:                                               ; preds = %21
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %28
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %43, label %54

43:                                               ; preds = %37, %28
  %44 = load i8*, i8** %4, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 32
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %4, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %43
  store i32 1, i32* %2, align 4
  br label %57

54:                                               ; preds = %48, %37
  %55 = load i8*, i8** %4, align 8
  store i8* %55, i8** %6, align 8
  br label %21

56:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %53, %19, %9
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i8* @glXQueryExtensionsString(i32, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
