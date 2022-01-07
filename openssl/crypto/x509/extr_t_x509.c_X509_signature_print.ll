; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_t_x509.c_X509_signature_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_t_x509.c_X509_signature_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32)* }

@.str = private unnamed_addr constant [25 x i8] c"%*sSignature Algorithm: \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\0A%*sSignature Value:\00", align 1
@NID_undef = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @X509_signature_print(i32* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 4, i32* %9, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i64 @BIO_printf(i32* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @i2a_ASN1_OBJECT(i32* %19, i32 %22)
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %84

26:                                               ; preds = %18
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @BIO_printf(i32* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %84

35:                                               ; preds = %29, %26
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @OBJ_obj2nid(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @NID_undef, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @OBJ_find_sigid_algs(i32 %44, i32* %11, i32* %10)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = call %struct.TYPE_7__* @EVP_PKEY_asn1_find(i32* null, i32 %48)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %12, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = icmp ne %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32)*, i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32)** %54, align 8
  %56 = icmp ne i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32)* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32)*, i32 (i32*, %struct.TYPE_6__*, i32*, i32, i32)** %59, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 4
  %66 = call i32 %60(i32* %61, %struct.TYPE_6__* %62, i32* %63, i32 %65, i32 0)
  store i32 %66, i32* %4, align 4
  br label %84

67:                                               ; preds = %52, %47
  br label %68

68:                                               ; preds = %67, %43
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @BIO_write(i32* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %84

74:                                               ; preds = %69
  %75 = load i32*, i32** %7, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 4
  %82 = call i32 @X509_signature_dump(i32* %78, i32* %79, i32 %81)
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %77, %73, %57, %34, %25, %17
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @BIO_printf(i32*, i8*, i32, i8*) #1

declare dso_local i64 @i2a_ASN1_OBJECT(i32*, i32) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i64 @OBJ_find_sigid_algs(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @EVP_PKEY_asn1_find(i32*, i32) #1

declare dso_local i32 @BIO_write(i32*, i8*, i32) #1

declare dso_local i32 @X509_signature_dump(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
