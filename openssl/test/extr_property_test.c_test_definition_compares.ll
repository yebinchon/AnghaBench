; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_property_test.c_test_definition_compares.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_property_test.c_test_definition_compares.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"omega\00", align 1
@definition_tests = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @test_definition_compares to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_definition_compares(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = call i32* @ossl_method_store_new(i32* null)
  store i32* %7, i32** %3, align 8
  %8 = call i64 @TEST_ptr(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %1
  %11 = call i64 @add_property_names(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %10
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @definition_tests, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32* @ossl_parse_property(i32* null, i32 %19)
  store i32* %20, i32** %4, align 8
  %21 = call i64 @TEST_ptr(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %13
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @definition_tests, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @ossl_parse_query(i32* null, i32 %29)
  store i32* %30, i32** %5, align 8
  %31 = call i64 @TEST_ptr(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %23
  %34 = load i32*, i32** %5, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ossl_property_match_count(i32* %34, i32* %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @definition_tests, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @TEST_int_eq(i32 %36, i32 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %33, %23, %13, %10, %1
  %46 = phi i1 [ false, %23 ], [ false, %13 ], [ false, %10 ], [ false, %1 ], [ %44, %33 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @ossl_property_free(i32* %48)
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @ossl_property_free(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @ossl_method_store_free(i32* %52)
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @ossl_method_store_new(i32*) #1

declare dso_local i64 @add_property_names(i8*, i8*, i32*) #1

declare dso_local i32* @ossl_parse_property(i32*, i32) #1

declare dso_local i32* @ossl_parse_query(i32*, i32) #1

declare dso_local i64 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @ossl_property_match_count(i32*, i32*) #1

declare dso_local i32 @ossl_property_free(i32*) #1

declare dso_local i32 @ossl_method_store_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
