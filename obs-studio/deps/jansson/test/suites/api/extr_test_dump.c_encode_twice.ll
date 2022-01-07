; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_dump.c_encode_twice.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_dump.c_encode_twice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"json_dumps failed\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"{\22foo\22: 5}\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"[5]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @encode_twice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_twice() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = call i32* (...) @json_object()
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i8* @json_dumps(i32* %4, i32 0)
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %0
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %0
  %13 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @free(i8* %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @json_integer(i32 5)
  %19 = call i32 @json_object_set_new(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i8* @json_dumps(i32* %20, i32 0)
  store i8* %21, i8** %2, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %14
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %14
  %29 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i32*, i32** %1, align 8
  %34 = call i32 @json_decref(i32* %33)
  %35 = call i32* (...) @json_array()
  store i32* %35, i32** %1, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = call i8* @json_dumps(i32* %36, i32 0)
  store i8* %37, i8** %2, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i8*, i8** %2, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40, %30
  %45 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %40
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @free(i8* %47)
  %49 = load i32*, i32** %1, align 8
  %50 = call i32 @json_integer(i32 5)
  %51 = call i32 @json_array_append_new(i32* %49, i32 %50)
  %52 = load i32*, i32** %1, align 8
  %53 = call i8* @json_dumps(i32* %52, i32 0)
  store i8* %53, i8** %2, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i8*, i8** %2, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56, %46
  %61 = call i32 @fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i8*, i8** %2, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32*, i32** %1, align 8
  %66 = call i32 @json_decref(i32* %65)
  ret void
}

declare dso_local i32* @json_object(...) #1

declare dso_local i8* @json_dumps(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @json_object_set_new(i32*, i8*, i32) #1

declare dso_local i32 @json_integer(i32) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32* @json_array(...) #1

declare dso_local i32 @json_array_append_new(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
