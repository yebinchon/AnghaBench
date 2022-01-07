; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_conditional_updates.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_conditional_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"{sisi}\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"baz\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"json_object_update_existing failed\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"json_object_update_existing added new items\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"json_object_update_existing failed to update existing key\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"json_object_update_existing updated wrong key\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"json_object_update_missing failed\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"json_object_update_missing didn't add new items\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"json_object_update_missing updated existing key\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"json_object_update_missing updated wrong key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_conditional_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_conditional_updates() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* @json_pack(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 2)
  store i32* %3, i32** %1, align 8
  %4 = call i32* @json_pack(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 4)
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @json_object_update_existing(i32* %5, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = call i32 @fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %0
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @json_object_size(i32* %12)
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32*, i32** %1, align 8
  %19 = call i32 @json_object_get(i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @json_integer_value(i32 %19)
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 @fail(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @json_object_get(i32* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %27 = call i32 @json_integer_value(i32 %26)
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @json_decref(i32* %32)
  %34 = call i32* @json_pack(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 2)
  store i32* %34, i32** %1, align 8
  %35 = load i32*, i32** %1, align 8
  %36 = load i32*, i32** %2, align 8
  %37 = call i64 @json_object_update_missing(i32* %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %31
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @json_object_size(i32* %42)
  %44 = icmp ne i32 %43, 3
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32*, i32** %1, align 8
  %49 = call i32 @json_object_get(i32* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 @json_integer_value(i32 %49)
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 @fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %47
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @json_object_get(i32* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @json_integer_value(i32 %56)
  %58 = icmp ne i32 %57, 2
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  %62 = load i32*, i32** %1, align 8
  %63 = call i32 @json_object_get(i32* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %64 = call i32 @json_integer_value(i32 %63)
  %65 = icmp ne i32 %64, 4
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = call i32 @fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %61
  %69 = load i32*, i32** %1, align 8
  %70 = call i32 @json_decref(i32* %69)
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 @json_decref(i32* %71)
  ret void
}

declare dso_local i32* @json_pack(i8*, i8*, i32, i8*, i32) #1

declare dso_local i64 @json_object_update_existing(i32*, i32*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @json_object_size(i32*) #1

declare dso_local i32 @json_integer_value(i32) #1

declare dso_local i32 @json_object_get(i32*, i8*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i64 @json_object_update_missing(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
