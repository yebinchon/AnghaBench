; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_copy.c_test_deep_copy_object.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_copy.c_test_deep_copy_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [54 x i8] c"{\22foo\22: \22bar\22, \22a\22: 1, \22b\22: 3.141592, \22c\22: [1,2,3,4]}\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@__const.test_deep_copy_object.keys = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [26 x i8] c"unable to parse an object\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"unable to deep copy an object\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"deep copying an object doesn't copy\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"deep copying an object produces an inequal copy\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"deep copying an object doesn't copy its items\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"deep copying an object doesn't preserve key order\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_deep_copy_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_deep_copy_object() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca [4 x i8*], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %10 = bitcast [4 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x i8*]* @__const.test_deep_copy_object.keys to i8*), i64 32, i1 false)
  %11 = load i8*, i8** %1, align 8
  %12 = call i32* @json_loads(i8* %11, i32 0, i32* null)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %0
  %16 = call i32 @fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %0
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @json_deep_copy(i32* %18)
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = call i32 @fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = icmp eq i32* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 @fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @json_equal(i32* %31, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 @fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  store i32 0, i32* %3, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = call i8* @json_object_iter(i32* %38)
  store i8* %39, i8** %6, align 8
  br label %40

40:                                               ; preds = %66, %37
  %41 = load i8*, i8** %6, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %72

43:                                               ; preds = %40
  %44 = load i8*, i8** %6, align 8
  %45 = call i8* @json_object_iter_key(i8* %44)
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32* @json_object_iter_value(i8* %46)
  store i32* %47, i32** %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32* @json_object_get(i32* %48, i8* %49)
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = icmp eq i32* %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = call i32 @fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %43
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i8*], [4 x i8*]* %2, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %57, i8* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 @fail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %56
  %67 = load i32*, i32** %4, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i8* @json_object_iter_next(i32* %67, i8* %68)
  store i8* %69, i8** %6, align 8
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %40

72:                                               ; preds = %40
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @json_decref(i32* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @json_decref(i32* %75)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @json_loads(i8*, i32, i32*) #2

declare dso_local i32 @fail(i8*) #2

declare dso_local i32* @json_deep_copy(i32*) #2

declare dso_local i32 @json_equal(i32*, i32*) #2

declare dso_local i8* @json_object_iter(i32*) #2

declare dso_local i8* @json_object_iter_key(i8*) #2

declare dso_local i32* @json_object_iter_value(i8*) #2

declare dso_local i32* @json_object_get(i32*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @json_object_iter_next(i32*, i8*) #2

declare dso_local i32 @json_decref(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
