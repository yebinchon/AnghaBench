; ModuleID = '/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@CRMF_F_OSSL_CRMF_MSG_PKIPUBLICATIONINFO_PUSH0_SINGLEPUBINFO = common dso_local global i32 0, align 4
@CRMF_R_NULL_ARGUMENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_CRMF_MSG_PKIPublicationInfo_push0_SinglePubInfo(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @CRMF_F_OSSL_CRMF_MSG_PKIPUBLICATIONINFO_PUSH0_SINGLEPUBINFO, align 4
  %13 = load i32, i32* @CRMF_R_NULL_ARGUMENT, align 4
  %14 = call i32 @CRMFerr(i32 %12, i32 %13)
  store i32 0, i32* %3, align 4
  br label %36

15:                                               ; preds = %8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = call i32* (...) @sk_OSSL_CRMF_SINGLEPUBINFO_new_null()
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %36

30:                                               ; preds = %24
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @sk_OSSL_CRMF_SINGLEPUBINFO_push(i32* %33, i32* %34)
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %29, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @CRMFerr(i32, i32) #1

declare dso_local i32* @sk_OSSL_CRMF_SINGLEPUBINFO_new_null(...) #1

declare dso_local i32 @sk_OSSL_CRMF_SINGLEPUBINFO_push(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
