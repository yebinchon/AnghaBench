; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_status.c_ossl_cmp_statusinfo_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_status.c_ossl_cmp_statusinfo_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32 }

@OSSL_CMP_PKIFAILUREINFO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @ossl_cmp_statusinfo_new(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = call %struct.TYPE_5__* (...) @OSSL_CMP_PKISI_new()
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  store i32* null, i32** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %13 = icmp eq %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %87

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ASN1_INTEGER_set(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %87

23:                                               ; preds = %15
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = call i32* (...) @ASN1_UTF8STRING_new()
  store i32* %27, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %9, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @ASN1_STRING_set(i32* %30, i8* %31, i32 -1)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %26
  br label %87

35:                                               ; preds = %29
  %36 = call i32* (...) @sk_ASN1_UTF8STRING_new_null()
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = icmp eq i32* %36, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %87

41:                                               ; preds = %35
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @sk_ASN1_UTF8STRING_push(i32* %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %87

49:                                               ; preds = %41
  store i32* null, i32** %9, align 8
  br label %50

50:                                               ; preds = %49, %23
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %82, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @OSSL_CMP_PKIFAILUREINFO_MAX, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %85

55:                                               ; preds = %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = call i32* (...) @ASN1_BIT_STRING_new()
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32* %67, i32** %69, align 8
  %70 = icmp eq i32* %67, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %87

72:                                               ; preds = %66, %61
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @ASN1_BIT_STRING_set_bit(i32* %75, i32 %76, i32 1)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %87

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80, %55
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %51

85:                                               ; preds = %51
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %4, align 8
  br label %92

87:                                               ; preds = %79, %71, %48, %40, %34, %22, %14
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %89 = call i32 @OSSL_CMP_PKISI_free(%struct.TYPE_5__* %88)
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @ASN1_UTF8STRING_free(i32* %90)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %92

92:                                               ; preds = %87, %85
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %93
}

declare dso_local %struct.TYPE_5__* @OSSL_CMP_PKISI_new(...) #1

declare dso_local i32 @ASN1_INTEGER_set(i32, i32) #1

declare dso_local i32* @ASN1_UTF8STRING_new(...) #1

declare dso_local i32 @ASN1_STRING_set(i32*, i8*, i32) #1

declare dso_local i32* @sk_ASN1_UTF8STRING_new_null(...) #1

declare dso_local i32 @sk_ASN1_UTF8STRING_push(i32*, i32*) #1

declare dso_local i32* @ASN1_BIT_STRING_new(...) #1

declare dso_local i32 @ASN1_BIT_STRING_set_bit(i32*, i32, i32) #1

declare dso_local i32 @OSSL_CMP_PKISI_free(%struct.TYPE_5__*) #1

declare dso_local i32 @ASN1_UTF8STRING_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
