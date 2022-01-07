; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_unix.c_TIFFOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_unix.c_TIFFOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIFFOpen.module = internal constant [9 x i8] c"TIFFOpen\00", align 1
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: Cannot open\00", align 1
@O_BINARY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @TIFFOpen(i8* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @_TIFFgetMode(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @TIFFOpen.module, i64 0, i64 0))
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %48

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @open(i8* %15, i32 %16, i32 438)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i64, i64* @errno, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i64, i64* @errno, align 8
  %25 = call i32* @strerror(i64 %24)
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* @errno, align 8
  %30 = call i32* @strerror(i64 %29)
  %31 = call i32 (i32, i8*, i8*, i8*, ...) @TIFFErrorExt(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @TIFFOpen.module, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %28, i32* %30)
  br label %35

32:                                               ; preds = %23, %20
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i32, i8*, i8*, i8*, ...) @TIFFErrorExt(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @TIFFOpen.module, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  br label %35

35:                                               ; preds = %32, %27
  store i32* null, i32** %3, align 8
  br label %48

36:                                               ; preds = %14
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32* @TIFFFdOpen(i32 %37, i8* %38, i8* %39)
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @close(i32 %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32*, i32** %8, align 8
  store i32* %47, i32** %3, align 8
  br label %48

48:                                               ; preds = %46, %35, %13
  %49 = load i32*, i32** %3, align 8
  ret i32* %49
}

declare dso_local i32 @_TIFFgetMode(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32* @strerror(i64) #1

declare dso_local i32 @TIFFErrorExt(i32, i8*, i8*, i8*, ...) #1

declare dso_local i32* @TIFFFdOpen(i32, i8*, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
