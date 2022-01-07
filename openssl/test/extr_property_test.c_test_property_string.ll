; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_property_test.c_test_property_string.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_property_test.c_test_property_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"fnord\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"illuminati\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_property_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_property_string() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  %5 = call i32* @ossl_method_store_new(i32* null)
  store i32* %5, i32** %1, align 8
  %6 = call i64 @TEST_ptr(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %72

8:                                                ; preds = %0
  %9 = call i64 @ossl_property_name(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %10 = call i64 @TEST_int_eq(i64 %9, i64 0)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %72

12:                                               ; preds = %8
  %13 = call i64 @ossl_property_name(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  %14 = call i64 @TEST_int_ne(i64 %13, i64 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %12
  %17 = call i64 @ossl_property_name(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %18 = call i64 @TEST_int_ne(i64 %17, i64 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %16
  %21 = call i64 @ossl_property_value(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %22 = call i64 @TEST_int_eq(i64 %21, i64 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  %25 = call i64 @ossl_property_value(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i64 %25, i64* %3, align 8
  %26 = call i64 @TEST_int_ne(i64 %25, i64 0)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %24
  %29 = call i64 @ossl_property_value(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store i64 %29, i64* %4, align 8
  %30 = call i64 @TEST_int_ne(i64 %29, i64 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @TEST_int_ne(i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %72

37:                                               ; preds = %32
  %38 = call i64 @ossl_property_value(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @TEST_int_eq(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = call i64 @ossl_property_value(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @TEST_int_eq(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %72

47:                                               ; preds = %42
  %48 = call i64 @ossl_property_value(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store i64 %48, i64* %3, align 8
  %49 = call i64 @TEST_int_ne(i64 %48, i64 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = call i64 @ossl_property_value(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %3, align 8
  %54 = add nsw i64 %53, 1
  %55 = call i64 @TEST_int_eq(i64 %52, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %51
  %58 = call i64 @ossl_property_value(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1)
  %59 = load i64, i64* %4, align 8
  %60 = call i64 @TEST_int_eq(i64 %58, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = call i64 @ossl_property_value(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %64 = call i64 @TEST_int_eq(i64 %63, i64 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = call i64 @ossl_property_name(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %68 = call i64 @ossl_property_value(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0)
  %69 = call i64 @TEST_int_ne(i64 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %66, %62, %57, %51, %47, %42, %37, %32, %28, %24, %20, %16, %12, %8, %0
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @ossl_method_store_free(i32* %73)
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @TEST_ptr(i32*) #1

declare dso_local i32* @ossl_method_store_new(i32*) #1

declare dso_local i64 @TEST_int_eq(i64, i64) #1

declare dso_local i64 @ossl_property_name(i32*, i8*, i32) #1

declare dso_local i64 @TEST_int_ne(i64, i64) #1

declare dso_local i64 @ossl_property_value(i32*, i8*, i32) #1

declare dso_local i32 @ossl_method_store_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
