; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_dump.c_circular_references.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_dump.c_circular_references.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"json_dumps encoded a circular reference!\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"{\22a\22: {\22b\22: {}}}\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"json_dumps failed!\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"[[[]]]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @circular_references to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @circular_references() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = call i32* (...) @json_object()
  store i32* %3, i32** %1, align 8
  %4 = load i32*, i32** %1, align 8
  %5 = call i32* (...) @json_object()
  %6 = call i32 @json_object_set_new(i32* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i32* @json_object_get(i32* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = call i32* (...) @json_object()
  %10 = call i32 @json_object_set_new(i32* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32* @json_object_get(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = call i32* @json_object_get(i32* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %1, align 8
  %15 = call i32* @json_object_get(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 @json_object_set(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i8* @json_dumps(i32* %17, i32 0)
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 @fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %0
  %23 = load i32*, i32** %1, align 8
  %24 = call i32* @json_object_get(i32* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = call i32* @json_object_get(i32* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @json_object_del(i32* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32*, i32** %1, align 8
  %28 = call i8* @json_dumps(i32* %27, i32 0)
  store i8* %28, i8** %2, align 8
  %29 = load i8*, i8** %2, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i8*, i8** %2, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %22
  %36 = call i32 @fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @json_decref(i32* %40)
  %42 = call i32* (...) @json_array()
  store i32* %42, i32** %1, align 8
  %43 = load i32*, i32** %1, align 8
  %44 = call i32* (...) @json_array()
  %45 = call i32 @json_array_append_new(i32* %43, i32* %44)
  %46 = load i32*, i32** %1, align 8
  %47 = call i32* @json_array_get(i32* %46, i32 0)
  %48 = call i32* (...) @json_array()
  %49 = call i32 @json_array_append_new(i32* %47, i32* %48)
  %50 = load i32*, i32** %1, align 8
  %51 = call i32* @json_array_get(i32* %50, i32 0)
  %52 = call i32* @json_array_get(i32* %51, i32 0)
  %53 = load i32*, i32** %1, align 8
  %54 = call i32* @json_array_get(i32* %53, i32 0)
  %55 = call i32 @json_array_append(i32* %52, i32* %54)
  %56 = load i32*, i32** %1, align 8
  %57 = call i8* @json_dumps(i32* %56, i32 0)
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %37
  %60 = call i32 @fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %37
  %62 = load i32*, i32** %1, align 8
  %63 = call i32* @json_array_get(i32* %62, i32 0)
  %64 = call i32* @json_array_get(i32* %63, i32 0)
  %65 = call i32 @json_array_remove(i32* %64, i32 0)
  %66 = load i32*, i32** %1, align 8
  %67 = call i8* @json_dumps(i32* %66, i32 0)
  store i8* %67, i8** %2, align 8
  %68 = load i8*, i8** %2, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  %71 = load i8*, i8** %2, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %61
  %75 = call i32 @fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i8*, i8** %2, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i32*, i32** %1, align 8
  %80 = call i32 @json_decref(i32* %79)
  ret void
}

declare dso_local i32* @json_object(...) #1

declare dso_local i32 @json_object_set_new(i32*, i8*, i32*) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i32 @json_object_set(i32*, i8*, i32*) #1

declare dso_local i8* @json_dumps(i32*, i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @json_object_del(i32*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i32* @json_array(...) #1

declare dso_local i32 @json_array_append_new(i32*, i32*) #1

declare dso_local i32* @json_array_get(i32*, i32) #1

declare dso_local i32 @json_array_append(i32*, i32*) #1

declare dso_local i32 @json_array_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
