; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_d2i_test.c_setup_tests.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_d2i_test.c_setup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@setup_tests.expected_errors = internal global [5 x %struct.TYPE_5__] [%struct.TYPE_5__ { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i64 128, i32 0, i32 0 }, %struct.TYPE_5__ { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i64 132, i32 0, i32 0 }, %struct.TYPE_5__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i64 130, i32 0, i32 0 }, %struct.TYPE_5__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i64 129, i32 0, i32 0 }, %struct.TYPE_5__ { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i64 131, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"BIO\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"encode\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@test_file = common dso_local global i8* null, align 8
@item_type = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"Unknown type %s\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Supported types:\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@expected_error = common dso_local global i64 0, align 8
@ASN1_UNKNOWN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"Unknown expected error %s\0A\00", align 1
@test_bad_asn1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = call i8* @test_get_argument(i32 0)
  store i8* %6, i8** %2, align 8
  %7 = call i32 @TEST_ptr(i8* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %0
  %10 = call i8* @test_get_argument(i32 1)
  store i8* %10, i8** %3, align 8
  %11 = call i32 @TEST_ptr(i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = call i8* @test_get_argument(i32 2)
  store i8* %14, i8** @test_file, align 8
  %15 = call i32 @TEST_ptr(i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %9, %0
  store i32 0, i32* %1, align 4
  br label %74

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = call i32* @ASN1_ITEM_lookup(i8* %19)
  store i32* %20, i32** @item_type, align 8
  %21 = load i32*, i32** @item_type, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @TEST_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %24)
  %26 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %27

27:                                               ; preds = %38, %23
  %28 = load i64, i64* %4, align 8
  %29 = call %struct.TYPE_6__* @ASN1_ITEM_get(i64 %28)
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %5, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = icmp eq %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %41

33:                                               ; preds = %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @TEST_note(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %4, align 8
  br label %27

41:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %74

42:                                               ; preds = %18
  store i64 0, i64* %4, align 8
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @OSSL_NELEM(%struct.TYPE_5__* getelementptr inbounds ([5 x %struct.TYPE_5__], [5 x %struct.TYPE_5__]* @setup_tests.expected_errors, i64 0, i64 0))
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds [5 x %struct.TYPE_5__], [5 x %struct.TYPE_5__]* @setup_tests.expected_errors, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @strcmp(i32 %51, i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds [5 x %struct.TYPE_5__], [5 x %struct.TYPE_5__]* @setup_tests.expected_errors, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* @expected_error, align 8
  br label %64

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %4, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %4, align 8
  br label %43

64:                                               ; preds = %55, %43
  %65 = load i64, i64* @expected_error, align 8
  %66 = load i64, i64* @ASN1_UNKNOWN, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @TEST_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %69)
  store i32 0, i32* %1, align 4
  br label %74

71:                                               ; preds = %64
  %72 = load i32, i32* @test_bad_asn1, align 4
  %73 = call i32 @ADD_TEST(i32 %72)
  store i32 1, i32* %1, align 4
  br label %74

74:                                               ; preds = %71, %68, %41, %17
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32 @TEST_ptr(i8*) #1

declare dso_local i8* @test_get_argument(i32) #1

declare dso_local i32* @ASN1_ITEM_lookup(i8*) #1

declare dso_local i32 @TEST_error(i8*, i8*) #1

declare dso_local i32 @TEST_note(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @ASN1_ITEM_get(i64) #1

declare dso_local i64 @OSSL_NELEM(%struct.TYPE_5__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ADD_TEST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
