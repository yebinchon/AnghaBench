; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_preserve_order.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/jansson/test/suites/api/extr_test_object.c_test_preserve_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [78 x i8] c"{\22foobar\22: 1, \22bazquux\22: 6, \22lorem ipsum\22: 3, \22sit amet\22: 5, \22helicopter\22: 7}\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"bazquux\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"lorem ipsum\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"dolor\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"sit amet\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"helicopter\00", align 1
@JSON_PRESERVE_ORDER = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"%s != %s\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"JSON_PRESERVE_ORDER doesn't work\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_preserve_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_preserve_order() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = call i32* (...) @json_object()
  store i32* %4, i32** %1, align 8
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @json_integer(i32 1)
  %7 = call i32 @json_object_set_new(i32* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %6)
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @json_integer(i32 2)
  %10 = call i32 @json_object_set_new(i32* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @json_integer(i32 3)
  %13 = call i32 @json_object_set_new(i32* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @json_integer(i32 4)
  %16 = call i32 @json_object_set_new(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @json_integer(i32 5)
  %19 = call i32 @json_object_set_new(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @json_integer(i32 6)
  %22 = call i32 @json_object_set_new(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @json_object_del(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @json_integer(i32 7)
  %27 = call i32 @json_object_set_new(i32* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %1, align 8
  %29 = load i32, i32* @JSON_PRESERVE_ORDER, align 4
  %30 = call i8* @json_dumps(i32* %28, i32 %29)
  store i8* %30, i8** %2, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = call i64 @strcmp(i8* %31, i8* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %0
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %37, i8* %38)
  %40 = call i32 @fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %41

41:                                               ; preds = %35, %0
  %42 = load i8*, i8** %2, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i32*, i32** %1, align 8
  %45 = call i32 @json_decref(i32* %44)
  ret void
}

declare dso_local i32* @json_object(...) #1

declare dso_local i32 @json_object_set_new(i32*, i8*, i32) #1

declare dso_local i32 @json_integer(i32) #1

declare dso_local i32 @json_object_del(i32*, i8*) #1

declare dso_local i8* @json_dumps(i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
