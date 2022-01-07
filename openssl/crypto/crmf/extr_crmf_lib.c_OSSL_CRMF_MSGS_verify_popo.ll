; ModuleID = '/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_OSSL_CRMF_MSGS_verify_popo.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_OSSL_CRMF_MSGS_verify_popo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_13__* }

@CRMF_F_OSSL_CRMF_MSGS_VERIFY_POPO = common dso_local global i32 0, align 4
@CRMF_R_NULL_ARGUMENT = common dso_local global i32 0, align 4
@OSSL_CRMF_POPOSIGNINGKEYINPUT = common dso_local global i32 0, align 4
@OSSL_CRMF_CERTREQUEST = common dso_local global i32 0, align 4
@CRMF_R_UNSUPPORTED_POPO_METHOD = common dso_local global i32 0, align 4
@CRMF_R_UNSUPPORTED_POPO_NOT_ACCEPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_CRMF_MSGS_verify_popo(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  store i32* null, i32** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.TYPE_12__* @sk_OSSL_CRMF_MSG_value(i32* %14, i32 %15)
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  %17 = icmp eq %struct.TYPE_12__* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = icmp eq %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18, %13, %3
  %24 = load i32, i32* @CRMF_F_OSSL_CRMF_MSGS_VERIFY_POPO, align 4
  %25 = load i32, i32* @CRMF_R_NULL_ARGUMENT, align 4
  %26 = call i32 @CRMFerr(i32 %24, i32 %25)
  store i32 0, i32* %4, align 4
  br label %133

27:                                               ; preds = %18
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %125 [
    i32 129, label %33
    i32 128, label %38
    i32 130, label %124
    i32 131, label %124
  ]

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %133

37:                                               ; preds = %33
  br label %129

38:                                               ; preds = %27
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %9, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %10, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %53, align 8
  %55 = icmp ne %struct.TYPE_13__* %54, null
  br i1 %55, label %56, label %93

56:                                               ; preds = %38
  %57 = load i32*, i32** %9, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %91, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %91, label %66

66:                                               ; preds = %59
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @X509_PUBKEY_cmp(i32* %67, i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @OSSL_CRMF_POPOSIGNINGKEYINPUT, align 4
  %77 = call i32 @ASN1_ITEM_rptr(i32 %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %85, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @X509_PUBKEY_get0(i32* %87)
  %89 = call i32 @ASN1_item_verify(i32 %77, i32 %80, i32 %83, %struct.TYPE_13__* %86, i32 %88)
  %90 = icmp slt i32 %89, 1
  br i1 %90, label %91, label %92

91:                                               ; preds = %75, %66, %59, %56
  br label %129

92:                                               ; preds = %75
  br label %123

93:                                               ; preds = %38
  %94 = load i32*, i32** %9, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %121, label %96

96:                                               ; preds = %93
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %121, label %105

105:                                              ; preds = %96
  %106 = load i32, i32* @OSSL_CRMF_CERTREQUEST, align 4
  %107 = call i32 @ASN1_ITEM_rptr(i32 %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = call i32 @X509_PUBKEY_get0(i32* %117)
  %119 = call i32 @ASN1_item_verify(i32 %107, i32 %110, i32 %113, %struct.TYPE_13__* %116, i32 %118)
  %120 = icmp slt i32 %119, 1
  br i1 %120, label %121, label %122

121:                                              ; preds = %105, %96, %93
  br label %129

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122, %92
  store i32 1, i32* %4, align 4
  br label %133

124:                                              ; preds = %27, %27
  br label %125

125:                                              ; preds = %27, %124
  %126 = load i32, i32* @CRMF_F_OSSL_CRMF_MSGS_VERIFY_POPO, align 4
  %127 = load i32, i32* @CRMF_R_UNSUPPORTED_POPO_METHOD, align 4
  %128 = call i32 @CRMFerr(i32 %126, i32 %127)
  store i32 0, i32* %4, align 4
  br label %133

129:                                              ; preds = %121, %91, %37
  %130 = load i32, i32* @CRMF_F_OSSL_CRMF_MSGS_VERIFY_POPO, align 4
  %131 = load i32, i32* @CRMF_R_UNSUPPORTED_POPO_NOT_ACCEPTED, align 4
  %132 = call i32 @CRMFerr(i32 %130, i32 %131)
  store i32 0, i32* %4, align 4
  br label %133

133:                                              ; preds = %129, %125, %123, %36, %23
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.TYPE_12__* @sk_OSSL_CRMF_MSG_value(i32*, i32) #1

declare dso_local i32 @CRMFerr(i32, i32) #1

declare dso_local i32 @X509_PUBKEY_cmp(i32*, i32*) #1

declare dso_local i32 @ASN1_item_verify(i32, i32, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @ASN1_ITEM_rptr(i32) #1

declare dso_local i32 @X509_PUBKEY_get0(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
