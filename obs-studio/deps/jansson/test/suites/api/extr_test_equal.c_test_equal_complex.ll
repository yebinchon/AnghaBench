; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_equal.c_test_equal_complex.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_equal.c_test_equal_complex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [233 x i8] c"{    \22integer\22: 1,     \22real\22: 3.141592,     \22string\22: \22foobar\22,     \22true\22: true,     \22object\22: {        \22array-in-object\22: [1,true,\22foo\22,{}],        \22object-in-object\22: {\22foo\22: \22bar\22}    },    \22array\22: [\22foo\22, false, null, 1.234]}\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"unable to parse JSON\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"json_equal fails for two inequal strings\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_equal_complex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_equal_complex() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([233 x i8], [233 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32* @json_loads(i8* %4, i32 0, i32* null)
  store i32* %5, i32** %1, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32* @json_loads(i8* %6, i32 0, i32* null)
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32*, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %0
  %14 = call i32 @fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i32*, i32** %1, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @json_equal(i32* %16, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call i32 @fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @json_decref(i32* %23)
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @json_decref(i32* %25)
  ret void
}

declare dso_local i32* @json_loads(i8*, i32, i32*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @json_equal(i32*, i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
