; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_cmp_status_test.c_execute_PKISI_test.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_cmp_status_test.c_execute_PKISI_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i64 }

@OSSL_CMP_PKIFAILUREINFO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @execute_PKISI_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_PKISI_test(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_13__* @ossl_cmp_statusinfo_new(i32 %10, i32 %13, i32 %16)
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %3, align 8
  %18 = call i32 @TEST_ptr(%struct.TYPE_13__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %88

21:                                               ; preds = %1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = call i32 @ossl_cmp_pkisi_get_pkistatus(%struct.TYPE_13__* %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @TEST_int_eq(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %21
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i8* @ossl_cmp_PKIStatus_to_string(i32 %34)
  %36 = call i32 @TEST_str_eq(i32 %33, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30, %21
  br label %88

39:                                               ; preds = %30
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = call i32 @ossl_cmp_pkisi_get0_statusstring(%struct.TYPE_13__* %40)
  %42 = call %struct.TYPE_13__* @sk_ASN1_UTF8STRING_value(i32 %41, i32 0)
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %5, align 8
  %43 = call i32 @TEST_ptr(%struct.TYPE_13__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call i32 @TEST_str_eq(i32 %48, i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %45, %39
  br label %88

56:                                               ; preds = %45
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %61 = call i32 @ossl_cmp_pkisi_get_pkifailureinfo(%struct.TYPE_13__* %60)
  %62 = call i32 @TEST_int_eq(i32 %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  br label %88

65:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %84, %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @OSSL_CMP_PKIFAILUREINFO_MAX, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %66
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %73, %74
  %76 = and i32 %75, 1
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @ossl_cmp_pkisi_pkifailureinfo_check(%struct.TYPE_13__* %77, i32 %78)
  %80 = call i32 @TEST_int_eq(i32 %76, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %70
  br label %88

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %66

87:                                               ; preds = %66
  store i32 1, i32* %6, align 4
  br label %88

88:                                               ; preds = %87, %82, %64, %55, %38, %20
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %90 = call i32 @OSSL_CMP_PKISI_free(%struct.TYPE_13__* %89)
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @TEST_ptr(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @ossl_cmp_statusinfo_new(i32, i32, i32) #1

declare dso_local i32 @ossl_cmp_pkisi_get_pkistatus(%struct.TYPE_13__*) #1

declare dso_local i32 @TEST_int_eq(i32, i32) #1

declare dso_local i32 @TEST_str_eq(i32, i8*) #1

declare dso_local i8* @ossl_cmp_PKIStatus_to_string(i32) #1

declare dso_local %struct.TYPE_13__* @sk_ASN1_UTF8STRING_value(i32, i32) #1

declare dso_local i32 @ossl_cmp_pkisi_get0_statusstring(%struct.TYPE_13__*) #1

declare dso_local i32 @ossl_cmp_pkisi_get_pkifailureinfo(%struct.TYPE_13__*) #1

declare dso_local i32 @ossl_cmp_pkisi_pkifailureinfo_check(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @OSSL_CMP_PKISI_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
