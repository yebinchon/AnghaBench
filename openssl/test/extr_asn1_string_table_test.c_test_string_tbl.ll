; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_asn1_string_table_test.c_test_string_tbl.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_asn1_string_table_test.c_test_string_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"asn1 string table: ASN1_STRING_TABLE_get non-exist nid\00", align 1
@MBSTRING_ASC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"asn1 string table: add NID(%d) failed\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"asn1 string table: get NID(%d) failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_string_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_string_tbl() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32 12345678, i32* %2, align 4
  store i32 87654321, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32* @ASN1_STRING_TABLE_get(i32 %6)
  store i32* %7, i32** %1, align 8
  %8 = load i32*, i32** %1, align 8
  %9 = call i32 @TEST_ptr_null(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %71

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @MBSTRING_ASC, align 4
  %16 = call i32 @ASN1_STRING_TABLE_add(i32 %14, i32 -1, i32 -1, i32 %15, i32 0)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @TEST_true(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %71

23:                                               ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @MBSTRING_ASC, align 4
  %26 = call i32 @ASN1_STRING_TABLE_add(i32 %24, i32 -1, i32 -1, i32 %25, i32 0)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @TEST_true(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %71

33:                                               ; preds = %23
  %34 = load i32, i32* %2, align 4
  %35 = call i32* @ASN1_STRING_TABLE_get(i32 %34)
  store i32* %35, i32** %1, align 8
  %36 = load i32*, i32** %1, align 8
  %37 = call i32 @TEST_ptr(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %2, align 4
  %41 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %71

42:                                               ; preds = %33
  %43 = load i32, i32* %3, align 4
  %44 = call i32* @ASN1_STRING_TABLE_get(i32 %43)
  store i32* %44, i32** %1, align 8
  %45 = load i32*, i32** %1, align 8
  %46 = call i32 @TEST_ptr(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %3, align 4
  %50 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %71

51:                                               ; preds = %42
  %52 = call i32 (...) @ASN1_STRING_TABLE_cleanup()
  %53 = load i32, i32* %2, align 4
  %54 = call i32* @ASN1_STRING_TABLE_get(i32 %53)
  store i32* %54, i32** %1, align 8
  %55 = load i32*, i32** %1, align 8
  %56 = call i32 @TEST_ptr_null(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %2, align 4
  %60 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %71

61:                                               ; preds = %51
  %62 = load i32, i32* %3, align 4
  %63 = call i32* @ASN1_STRING_TABLE_get(i32 %62)
  store i32* %63, i32** %1, align 8
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @TEST_ptr_null(i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %3, align 4
  %69 = call i32 (i8*, ...) @TEST_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %71

70:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %67, %58, %48, %39, %30, %20, %11
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32* @ASN1_STRING_TABLE_get(i32) #1

declare dso_local i32 @TEST_ptr_null(i32*) #1

declare dso_local i32 @TEST_info(i8*, ...) #1

declare dso_local i32 @ASN1_STRING_TABLE_add(i32, i32, i32, i32, i32) #1

declare dso_local i32 @TEST_true(i32) #1

declare dso_local i32 @TEST_ptr(i32*) #1

declare dso_local i32 @ASN1_STRING_TABLE_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
