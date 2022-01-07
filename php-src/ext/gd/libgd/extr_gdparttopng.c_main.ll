; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdparttopng.c_main.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gdparttopng.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Usage: gdparttopng filename.gd filename.png x y w h\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Input file does not exist!\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Extracting from (%d, %d), size is %dx%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Input is not in GD2 format!\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Output file cannot be written to!\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"No PNG library support.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 7
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %23, i32** %7, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %19
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @atoi(i8* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 4
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @atoi(i8* %37)
  store i32 %38, i32* %10, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 5
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @atoi(i8* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 6
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @atoi(i8* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @gdImageCreateFromGd2Part(i32* %52, i32 %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @fclose(i32* %58)
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %30
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %65 = call i32 @exit(i32 1) #3
  unreachable

66:                                               ; preds = %30
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32* @fopen(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @stderr, align 4
  %75 = call i32 @fprintf(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @gdImageDestroy(i32 %76)
  %78 = call i32 @exit(i32 1) #3
  unreachable

79:                                               ; preds = %66
  %80 = load i32, i32* @stderr, align 4
  %81 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @fclose(i32* %82)
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @gdImageDestroy(i32 %84)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @gdImageCreateFromGd2Part(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @gdImageDestroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
