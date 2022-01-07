; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/regex/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/regex/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"^hi\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"patata\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"hillow\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Using default values\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"result (%s) = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"oops, cannot compile regexp\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 3
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 2
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 3
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %8, align 8
  br label %25

23:                                               ; preds = %2
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %13
  %26 = load i8*, i8** %6, align 8
  %27 = call i32* @r_regex_new(i8* %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32*, i32** %9, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @r_regex_exec(i32* %31, i8* %32, i32 0, i32 0, i32 0)
  store i32 %33, i32* %10, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %34, i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @r_regex_exec(i32* %37, i8* %38, i32 0, i32 0, i32 0)
  store i32 %39, i32* %10, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @r_regex_free(i32* %43)
  br label %47

45:                                               ; preds = %25
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %30
  %48 = call i32 (...) @test_or()
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @r_regex_new(i8*, i8*) #1

declare dso_local i32 @r_regex_exec(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @r_regex_free(i32*) #1

declare dso_local i32 @test_or(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
