; ModuleID = '/home/carl/AnghaBench/openssl/fuzz/extr_test-corpus.c_testfile.c'
source_filename = "/home/carl/AnghaBench/openssl/fuzz/extr_test-corpus.c_testfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @testfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testfile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @stat(i8* %7, %struct.stat* %3)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @S_ISREG(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %52

16:                                               ; preds = %10
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @fflush(i32 %19)
  %21 = load i8*, i8** %2, align 8
  %22 = call i32* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %52

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i8* @malloc(i64 %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i64 @fread(i8* %33, i32 1, i64 %35, i32* %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %38, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @OPENSSL_assert(i32 %42)
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @FuzzerTestOneInput(i8* %44, i64 %45)
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @free(i8* %47)
  br label %49

49:                                               ; preds = %32, %26
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @fclose(i32* %50)
  br label %52

52:                                               ; preds = %49, %25, %15
  ret void
}

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i32 @FuzzerTestOneInput(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
