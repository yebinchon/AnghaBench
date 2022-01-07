; ModuleID = '/home/carl/AnghaBench/openssl/fuzz/extr_test-corpus.c_main.c'
source_filename = "/home/carl/AnghaBench/openssl/fuzz/extr_test-corpus.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = call i32 @FuzzerInitialize(i32* %4, i8*** %5)
  store i32 1, i32* %6, align 4
  br label %13

13:                                               ; preds = %78, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %81

17:                                               ; preds = %13
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %56, %17
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @OPENSSL_DIR_read(i32** %10, i8* %29)
  store i8* %30, i8** %8, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %64

32:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load i32, i32* @PATH_MAX, align 4
  %37 = call i8* @malloc(i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %64

41:                                               ; preds = %35
  %42 = load i8*, i8** %9, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strcpy(i8* %42, i8* %47)
  %49 = load i8*, i8** %9, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  %52 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 47, i8* %52, align 1
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %7, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %41, %32
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @strcpy(i8* %59, i8* %60)
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @testfile(i8* %62)
  br label %24

64:                                               ; preds = %40, %24
  %65 = call i32 @OPENSSL_DIR_end(i32** %10)
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load i8**, i8*** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @testfile(i8* %73)
  br label %75

75:                                               ; preds = %68, %64
  %76 = load i8*, i8** %9, align 8
  %77 = call i32 @free(i8* %76)
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %13

81:                                               ; preds = %13
  %82 = call i32 (...) @FuzzerCleanup()
  ret i32 0
}

declare dso_local i32 @FuzzerInitialize(i32*, i8***) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @OPENSSL_DIR_read(i32**, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @testfile(i8*) #1

declare dso_local i32 @OPENSSL_DIR_end(i32**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FuzzerCleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
