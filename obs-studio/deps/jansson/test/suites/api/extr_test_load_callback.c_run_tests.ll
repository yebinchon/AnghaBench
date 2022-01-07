; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load_callback.c_run_tests.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_load_callback.c_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_source = type { i8*, i8*, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@my_str = common dso_local global i8* null, align 8
@greedy_reader = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"json_load_callback failed on a valid callback\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"json_load_callback should have failed on an incomplete stream, but it didn't\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"<callback>\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"json_load_callback returned an invalid error source\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"']' expected near end of file\00", align 1
@.str.5 = private unnamed_addr constant [85 x i8] c"json_load_callback returned an invalid error message for an unclosed top-level array\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"json_load_callback should have failed on NULL load callback, but it didn't\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"wrong arguments\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"json_load_callback returned an invalid error message for a NULL load callback\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_tests() #0 {
  %1 = alloca %struct.my_source, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = getelementptr inbounds %struct.my_source, %struct.my_source* %1, i32 0, i32 2
  store i64 0, i64* %4, align 8
  %5 = load i8*, i8** @my_str, align 8
  %6 = call i8* @strlen(i8* %5)
  %7 = getelementptr inbounds %struct.my_source, %struct.my_source* %1, i32 0, i32 1
  store i8* %6, i8** %7, align 8
  %8 = load i8*, i8** @my_str, align 8
  %9 = getelementptr inbounds %struct.my_source, %struct.my_source* %1, i32 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = load i32*, i32** @greedy_reader, align 8
  %11 = call i32* @json_load_callback(i32* %10, %struct.my_source* %1, i32 0, %struct.TYPE_3__* %3)
  store i32* %11, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = call i32 @fail(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @json_decref(i32* %17)
  %19 = getelementptr inbounds %struct.my_source, %struct.my_source* %1, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load i8*, i8** @my_str, align 8
  %21 = call i8* @strlen(i8* %20)
  %22 = getelementptr i8, i8* %21, i64 -1
  %23 = getelementptr inbounds %struct.my_source, %struct.my_source* %1, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** @my_str, align 8
  %25 = getelementptr inbounds %struct.my_source, %struct.my_source* %1, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load i32*, i32** @greedy_reader, align 8
  %27 = call i32* @json_load_callback(i32* %26, %struct.my_source* %1, i32 0, %struct.TYPE_3__* %3)
  store i32* %27, i32** %2, align 8
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @json_decref(i32* %31)
  %33 = call i32 @fail(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %16
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @strcmp(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @fail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @strcmp(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @fail(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.5, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = call i32* @json_load_callback(i32* null, %struct.my_source* null, i32 0, %struct.TYPE_3__* %3)
  store i32* %49, i32** %2, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @json_decref(i32* %53)
  %55 = call i32 @fail(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0))
  br label %56

56:                                               ; preds = %52, %48
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @strcmp(i32 %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 @fail(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %56
  ret void
}

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32* @json_load_callback(i32*, %struct.my_source*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
