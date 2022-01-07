; ModuleID = '/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_OSSL_CRMF_MSG_create_popo.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/crmf/extr_crmf_lib.c_OSSL_CRMF_MSG_create_popo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__*, i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32* }

@CRMF_F_OSSL_CRMF_MSG_CREATE_POPO = common dso_local global i32 0, align 4
@CRMF_R_NULL_ARGUMENT = common dso_local global i32 0, align 4
@OSSL_CRMF_POPO_NONE = common dso_local global i32 0, align 4
@OSSL_CRMF_POPOPRIVKEY_SUBSEQUENTMESSAGE = common dso_local global i32 0, align 4
@OSSL_CRMF_SUBSEQUENTMESSAGE_ENCRCERT = common dso_local global i32 0, align 4
@CRMF_R_UNSUPPORTED_METHOD_FOR_CREATING_POPO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @OSSL_CRMF_MSG_create_popo(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %10, align 8
  store i32* null, i32** %11, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32*, i32** %7, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %4
  %22 = load i32, i32* @CRMF_F_OSSL_CRMF_MSG_CREATE_POPO, align 4
  %23 = load i32, i32* @CRMF_R_NULL_ARGUMENT, align 4
  %24 = call i32 @CRMFerr(i32 %22, i32 %23)
  store i32 0, i32* %5, align 4
  br label %115

25:                                               ; preds = %18, %15
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @OSSL_CRMF_POPO_NONE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %104

30:                                               ; preds = %25
  %31 = call %struct.TYPE_11__* (...) @OSSL_CRMF_POPO_new()
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %10, align 8
  %32 = icmp eq %struct.TYPE_11__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %112

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  switch i32 %38, label %99 [
    i32 129, label %39
    i32 128, label %47
    i32 130, label %68
  ]

39:                                               ; preds = %34
  %40 = call i32* (...) @ASN1_NULL_new()
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  store i32* %40, i32** %43, align 8
  %44 = icmp eq i32* %40, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %112

46:                                               ; preds = %39
  br label %103

47:                                               ; preds = %34
  %48 = call i32* (...) @OSSL_CRMF_POPOSIGNINGKEY_new()
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %12, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @CRMF_poposigningkey_init(i32* %52, i32 %55, i32* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %51, %47
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @OSSL_CRMF_POPOSIGNINGKEY_free(i32* %61)
  br label %112

63:                                               ; preds = %51
  %64 = load i32*, i32** %12, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32* %64, i32** %67, align 8
  br label %103

68:                                               ; preds = %34
  %69 = call %struct.TYPE_13__* (...) @OSSL_CRMF_POPOPRIVKEY_new()
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %72, align 8
  %73 = icmp eq %struct.TYPE_13__* %69, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %112

75:                                               ; preds = %68
  %76 = call i32* (...) @ASN1_INTEGER_new()
  store i32* %76, i32** %11, align 8
  %77 = load i32, i32* @OSSL_CRMF_POPOPRIVKEY_SUBSEQUENTMESSAGE, align 4
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  store i32 %77, i32* %82, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i32* %83, i32** %89, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %75
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* @OSSL_CRMF_SUBSEQUENTMESSAGE_ENCRCERT, align 4
  %95 = call i32 @ASN1_INTEGER_set(i32* %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %92, %75
  br label %112

98:                                               ; preds = %92
  br label %103

99:                                               ; preds = %34
  %100 = load i32, i32* @CRMF_F_OSSL_CRMF_MSG_CREATE_POPO, align 4
  %101 = load i32, i32* @CRMF_R_UNSUPPORTED_METHOD_FOR_CREATING_POPO, align 4
  %102 = call i32 @CRMFerr(i32 %100, i32 %101)
  br label %112

103:                                              ; preds = %98, %63, %46
  br label %104

104:                                              ; preds = %103, %29
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = call i32 @OSSL_CRMF_POPO_free(%struct.TYPE_11__* %107)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %111, align 8
  store i32 1, i32* %5, align 4
  br label %115

112:                                              ; preds = %99, %97, %74, %60, %45, %33
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %114 = call i32 @OSSL_CRMF_POPO_free(%struct.TYPE_11__* %113)
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %112, %104, %21
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @CRMFerr(i32, i32) #1

declare dso_local %struct.TYPE_11__* @OSSL_CRMF_POPO_new(...) #1

declare dso_local i32* @ASN1_NULL_new(...) #1

declare dso_local i32* @OSSL_CRMF_POPOSIGNINGKEY_new(...) #1

declare dso_local i32 @CRMF_poposigningkey_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @OSSL_CRMF_POPOSIGNINGKEY_free(i32*) #1

declare dso_local %struct.TYPE_13__* @OSSL_CRMF_POPOPRIVKEY_new(...) #1

declare dso_local i32* @ASN1_INTEGER_new(...) #1

declare dso_local i32 @ASN1_INTEGER_set(i32*, i32) #1

declare dso_local i32 @OSSL_CRMF_POPO_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
