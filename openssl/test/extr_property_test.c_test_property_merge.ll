; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_property_test.c_test_property_merge.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_property_test.c_test_property_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"colour\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"urn\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"clouds\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pot\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"day\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"night\00", align 1
@merge_tests = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_property_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_property_merge(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32* @ossl_method_store_new(i32* null)
  store i32* %9, i32** %3, align 8
  %10 = call i64 @TEST_ptr(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %58

12:                                               ; preds = %1
  %13 = call i64 @add_property_names(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %58

15:                                               ; preds = %12
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @merge_tests, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @ossl_parse_property(i32* null, i32 %21)
  store i32* %22, i32** %7, align 8
  %23 = call i64 @TEST_ptr(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %15
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @merge_tests, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @ossl_parse_query(i32* null, i32 %31)
  store i32* %32, i32** %4, align 8
  %33 = call i64 @TEST_ptr(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %25
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @merge_tests, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32* @ossl_parse_query(i32* null, i32 %41)
  store i32* %42, i32** %5, align 8
  %43 = call i64 @TEST_ptr(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %35
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32* @ossl_property_merge(i32* %46, i32* %47)
  store i32* %48, i32** %6, align 8
  %49 = call i64 @TEST_ptr(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @ossl_property_match_count(i32* %52, i32* %53)
  %55 = call i64 @TEST_int_ge(i32 %54, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %51, %45, %35, %25, %15, %12, %1
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @ossl_property_free(i32* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @ossl_property_free(i32* %61)
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @ossl_property_free(i32* %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @ossl_property_free(i32* %65)
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @ossl_method_store_free(i32* %67)
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @ossl_method_store_new(i32*) #1

declare dso_local i64 @add_property_names(i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32* @ossl_parse_property(i32*, i32) #1

declare dso_local i32* @ossl_parse_query(i32*, i32) #1

declare dso_local i32* @ossl_property_merge(i32*, i32*) #1

declare dso_local i64 @TEST_int_ge(i32, i32) #1

declare dso_local i32 @ossl_property_match_count(i32*, i32*) #1

declare dso_local i32 @ossl_property_free(i32*) #1

declare dso_local i32 @ossl_method_store_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
