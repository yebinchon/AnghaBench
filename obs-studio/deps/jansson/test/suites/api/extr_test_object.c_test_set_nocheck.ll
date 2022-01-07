; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_set_nocheck.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_set_nocheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"unable to create object\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unable to create string\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"json_object_set_nocheck failed\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"json_object_get after json_object_set_nocheck failed\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"a\EFz\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"json_object_set_nocheck failed for invalid UTF-8\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"bax\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"json_object_set_new_nocheck failed\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"json_object_get after json_object_set_new_nocheck failed\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"asdf\FE\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"json_object_set_new_nocheck failed for invalid UTF-8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_set_nocheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_set_nocheck() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* (...) @json_object()
  store i32* %3, i32** %1, align 8
  %4 = call i32* @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i32 @fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32*, i32** %1, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i64 @json_object_set_nocheck(i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32*, i32** %1, align 8
  %23 = call i32* @json_object_get(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32*, i32** %2, align 8
  %25 = icmp ne i32* %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @fail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load i32*, i32** %1, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @json_object_set_nocheck(i32* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 @fail(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32*, i32** %1, align 8
  %37 = call i32* @json_object_get(i32* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %38 = load i32*, i32** %2, align 8
  %39 = icmp ne i32* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @fail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32*, i32** %1, align 8
  %44 = call i32 @json_integer(i32 123)
  %45 = call i64 @json_object_set_new_nocheck(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32*, i32** %1, align 8
  %51 = call i32* @json_object_get(i32* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %52 = call i32 @json_integer_value(i32* %51)
  %53 = icmp ne i32 %52, 123
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @fail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @json_integer(i32 321)
  %59 = call i64 @json_object_set_new_nocheck(i32* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @fail(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32*, i32** %1, align 8
  %65 = call i32* @json_object_get(i32* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %66 = call i32 @json_integer_value(i32* %65)
  %67 = icmp ne i32 %66, 321
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @fail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @json_decref(i32* %71)
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @json_decref(i32* %73)
  ret void
}

declare dso_local i32* @json_object(...) #1

declare dso_local i32* @json_string(i8*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i64 @json_object_set_nocheck(i32*, i8*, i32*) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i64 @json_object_set_new_nocheck(i32*, i8*, i32) #1

declare dso_local i32 @json_integer(i32) #1

declare dso_local i32 @json_integer_value(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
