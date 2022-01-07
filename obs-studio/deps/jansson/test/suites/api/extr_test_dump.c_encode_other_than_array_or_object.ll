; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_dump.c_encode_other_than_array_or_object.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_dump.c_encode_other_than_array_or_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"json_dumps encoded a string!\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"json_dumpf encoded a string!\00", align 1
@JSON_ENCODE_ANY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"\22foo\22\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"json_dumps failed to encode a string with JSON_ENCODE_ANY\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"json_dumps encoded an integer!\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"json_dumpf encoded an integer!\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"42\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"json_dumps failed to encode an integer with JSON_ENCODE_ANY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @encode_other_than_array_or_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_other_than_array_or_object() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* null, i32** %2, align 8
  %4 = call i32* @json_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = call i8* @json_dumps(i32* %5, i32 0)
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  %11 = load i32*, i32** %1, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @json_dumpf(i32* %11, i32* %12, i32 0)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* @JSON_ENCODE_ANY, align 4
  %20 = call i8* @json_dumps(i32* %18, i32 %19)
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %17
  %28 = call i32 @fail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @free(i8* %30)
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @json_decref(i32* %32)
  %34 = call i32* @json_integer(i32 42)
  store i32* %34, i32** %1, align 8
  %35 = load i32*, i32** %1, align 8
  %36 = call i8* @json_dumps(i32* %35, i32 0)
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 @fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %29
  %41 = load i32*, i32** %1, align 8
  %42 = load i32*, i32** %2, align 8
  %43 = call i64 @json_dumpf(i32* %41, i32* %42, i32 0)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = load i32*, i32** %1, align 8
  %49 = load i32, i32* @JSON_ENCODE_ANY, align 4
  %50 = call i8* @json_dumps(i32* %48, i32 %49)
  store i8* %50, i8** %3, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53, %47
  %58 = call i32 @fail(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @free(i8* %60)
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @json_decref(i32* %62)
  ret void
}

declare dso_local i32* @json_string(i8*) #1

declare dso_local i8* @json_dumps(i32*, i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i64 @json_dumpf(i32*, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32* @json_integer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
