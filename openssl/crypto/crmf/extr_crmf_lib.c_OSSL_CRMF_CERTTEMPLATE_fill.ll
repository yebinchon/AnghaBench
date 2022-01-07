; ModuleID = '/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_OSSL_CRMF_CERTTEMPLATE_fill.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_OSSL_CRMF_CERTTEMPLATE_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32 }

@CRMF_F_OSSL_CRMF_CERTTEMPLATE_FILL = common dso_local global i32 0, align 4
@CRMF_R_NULL_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_CRMF_CERTTEMPLATE_fill(%struct.TYPE_3__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load i32, i32* @CRMF_F_OSSL_CRMF_CERTTEMPLATE_FILL, align 4
  %16 = load i32, i32* @CRMF_R_NULL_ARGUMENT, align 4
  %17 = call i32 @CRMFerr(i32 %15, i32 %16)
  store i32 0, i32* %6, align 4
  br label %64

18:                                               ; preds = %5
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @X509_NAME_set(i32* %23, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %64

28:                                               ; preds = %21, %18
  %29 = load i32*, i32** %10, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @X509_NAME_set(i32* %33, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %64

38:                                               ; preds = %31, %28
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @ASN1_INTEGER_free(i32* %44)
  %46 = load i32*, i32** %11, align 8
  %47 = call i32* @ASN1_INTEGER_dup(i32* %46)
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = icmp eq i32* %47, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 0, i32* %6, align 4
  br label %64

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %38
  %54 = load i32*, i32** %8, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @X509_PUBKEY_set(i32* %58, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %64

63:                                               ; preds = %56, %53
  store i32 1, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %62, %51, %37, %27, %14
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @CRMFerr(i32, i32) #1

declare dso_local i32 @X509_NAME_set(i32*, i32*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

declare dso_local i32* @ASN1_INTEGER_dup(i32*) #1

declare dso_local i32 @X509_PUBKEY_set(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
