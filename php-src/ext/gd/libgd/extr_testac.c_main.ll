; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_testac.c_main.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_testac.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Usage: testac filename.png\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Can't load %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"noblending-fullsize-truecolor.png\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"blending-fullsize-truecolor.png\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"noblending-halfsize-truecolor.png\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"blending-halfsize-truecolor.png\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"noblending-doublesize-truecolor.png\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"blending-doublesize-truecolor.png\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"noblending-fullsize-palette.png\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"blending-fullsize-palette.png\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"noblending-halfsize-palette.png\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"blending-halfsize-palette.png\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"noblending-doublesize-palette.png\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"blending-doublesize-palette.png\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %16
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @gdImageCreateFromPng(i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @fclose(i32* %33)
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @testDrawing(i32 %36, double 1.000000e+00, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @testDrawing(i32 %38, double 1.000000e+00, i32 1, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @testDrawing(i32 %40, double 5.000000e-01, i32 0, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @testDrawing(i32 %42, double 5.000000e-01, i32 1, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @testDrawing(i32 %44, double 2.000000e+00, i32 0, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @testDrawing(i32 %46, double 2.000000e+00, i32 1, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @testDrawing(i32 %48, double 1.000000e+00, i32 0, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @testDrawing(i32 %50, double 1.000000e+00, i32 1, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @testDrawing(i32 %52, double 5.000000e-01, i32 0, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @testDrawing(i32 %54, double 5.000000e-01, i32 1, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @testDrawing(i32 %56, double 2.000000e+00, i32 0, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0))
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @testDrawing(i32 %58, double 2.000000e+00, i32 1, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @gdImageDestroy(i32 %60)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @gdImageCreateFromPng(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @testDrawing(i32, double, i32, i32, i8*) #1

declare dso_local i32 @gdImageDestroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
