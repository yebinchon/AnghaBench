; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd2time.c_main.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd2time.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Usage: gd2time filename.gd count x y w h\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Extracting %d times from (%d, %d), size is %dx%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Input file does not exist!\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Error reading source file!\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"%d seconds to extract (& destroy) %d times\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 7
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @exit(i32 1) #3
  unreachable

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @atoi(i8* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 3
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @atoi(i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 4
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @atoi(i8* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 5
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @atoi(i8* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 6
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @atoi(i8* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = call i32 @time(i32 0)
  store i32 %48, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %82, %21
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %49
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32* @fopen(i8* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 @fprintf(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %63 = call i32 @exit(i32 1) #3
  unreachable

64:                                               ; preds = %53
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @gdImageCreateFromGd2Part(i32* %65, i32 %66, i32 %67, i32 %68, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @fclose(i32* %71)
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 @fprintf(i32 %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %78 = call i32 @exit(i32 1) #3
  unreachable

79:                                               ; preds = %64
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @gdImageDestroy(i32 %80)
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %49

85:                                               ; preds = %49
  %86 = call i32 @time(i32 0)
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 %86, %87
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %89, i32 %90)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

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
