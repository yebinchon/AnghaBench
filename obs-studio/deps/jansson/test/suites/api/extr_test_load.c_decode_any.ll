; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_decode_any.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load.c_decode_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"\22foo\22\00", align 1
@JSON_DECODE_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"json_load decoded any failed - string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"42\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"json_load decoded any failed - integer\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"json_load decoded any failed - boolean\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"json_load decoded any failed - null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @decode_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_any() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @JSON_DECODE_ANY, align 4
  %4 = call i32* @json_loads(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %3, i32* %2)
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @json_is_string(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7, %0
  %12 = call i32 @fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %7
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @json_decref(i32* %14)
  %16 = load i32, i32* @JSON_DECODE_ANY, align 4
  %17 = call i32* @json_loads(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32* %2)
  store i32* %17, i32** %1, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @json_is_integer(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %20, %13
  %25 = call i32 @fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = load i32*, i32** %1, align 8
  %28 = call i32 @json_decref(i32* %27)
  %29 = load i32, i32* @JSON_DECODE_ANY, align 4
  %30 = call i32* @json_loads(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %29, i32* %2)
  store i32* %30, i32** %1, align 8
  %31 = load i32*, i32** %1, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @json_is_true(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33, %26
  %38 = call i32 @fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @json_decref(i32* %40)
  %42 = load i32, i32* @JSON_DECODE_ANY, align 4
  %43 = call i32* @json_loads(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %42, i32* %2)
  store i32* %43, i32** %1, align 8
  %44 = load i32*, i32** %1, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @json_is_null(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46, %39
  %51 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @json_decref(i32* %53)
  ret void
}

declare dso_local i32* @json_loads(i8*, i32, i32*) #1

declare dso_local i32 @json_is_string(i32*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32 @json_is_integer(i32*) #1

declare dso_local i32 @json_is_true(i32*) #1

declare dso_local i32 @json_is_null(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
