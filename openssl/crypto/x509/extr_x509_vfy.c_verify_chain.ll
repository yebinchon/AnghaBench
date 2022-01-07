; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_verify_chain.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_verify_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { {}*, {}*, {}*, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@X509_V_OK = common dso_local global i32 0, align 4
@X509_V_FLAG_POLICY_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @verify_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_chain(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %7 = call i32 @build_chain(%struct.TYPE_17__* %6)
  store i32 %7, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %11 = call i32 @check_chain_extensions(%struct.TYPE_17__* %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = call i32 @check_auth_level(%struct.TYPE_17__* %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = call i32 @check_id(%struct.TYPE_17__* %18)
  store i32 %19, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br i1 true, label %22, label %27

22:                                               ; preds = %21, %17, %13, %9, %1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @X509_get_pubkey_parameters(i32* null, i32 %25)
  br label %27

27:                                               ; preds = %22, %21
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.TYPE_17__*)**
  %34 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %33, align 8
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %36 = call i32 %34(%struct.TYPE_17__* %35)
  store i32 %36, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %27
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %124

40:                                               ; preds = %30
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @X509_chain_check_suiteb(i32* %42, i32* null, i32 %45, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @X509_V_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %40
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @verify_cb_cert(%struct.TYPE_17__* %56, i32* null, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %124

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = bitcast {}** %68 to i32 (%struct.TYPE_17__*)**
  %70 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %69, align 8
  %71 = icmp ne i32 (%struct.TYPE_17__*)* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 1
  %75 = bitcast {}** %74 to i32 (%struct.TYPE_17__*)**
  %76 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %75, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %78 = call i32 %76(%struct.TYPE_17__* %77)
  br label %82

79:                                               ; preds = %66
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = call i32 @internal_verify(%struct.TYPE_17__* %80)
  br label %82

82:                                               ; preds = %79, %72
  %83 = phi i32 [ %78, %72 ], [ %81, %79 ]
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %124

88:                                               ; preds = %82
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = call i32 @check_name_constraints(%struct.TYPE_17__* %89)
  store i32 %90, i32* %5, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %124

94:                                               ; preds = %88
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %96 = call i32 @X509v3_asid_validate_path(%struct.TYPE_17__* %95)
  store i32 %96, i32* %5, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %124

100:                                              ; preds = %94
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %102 = call i32 @X509v3_addr_validate_path(%struct.TYPE_17__* %101)
  store i32 %102, i32* %5, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %124

106:                                              ; preds = %100
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @X509_V_FLAG_POLICY_CHECK, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %106
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 2
  %118 = bitcast {}** %117 to i32 (%struct.TYPE_17__*)**
  %119 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %118, align 8
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %121 = call i32 %119(%struct.TYPE_17__* %120)
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %115, %106
  %123 = load i32, i32* %5, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %104, %98, %92, %86, %63, %38
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @build_chain(%struct.TYPE_17__*) #1

declare dso_local i32 @check_chain_extensions(%struct.TYPE_17__*) #1

declare dso_local i32 @check_auth_level(%struct.TYPE_17__*) #1

declare dso_local i32 @check_id(%struct.TYPE_17__*) #1

declare dso_local i32 @X509_get_pubkey_parameters(i32*, i32) #1

declare dso_local i32 @X509_chain_check_suiteb(i32*, i32*, i32, i32) #1

declare dso_local i32 @verify_cb_cert(%struct.TYPE_17__*, i32*, i32, i32) #1

declare dso_local i32 @internal_verify(%struct.TYPE_17__*) #1

declare dso_local i32 @check_name_constraints(%struct.TYPE_17__*) #1

declare dso_local i32 @X509v3_asid_validate_path(%struct.TYPE_17__*) #1

declare dso_local i32 @X509v3_addr_validate_path(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
