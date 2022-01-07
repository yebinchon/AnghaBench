; ModuleID = '/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_check_trust.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/x509/extr_x509_vfy.c_check_trust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }

@X509_V_FLAG_PARTIAL_CHAIN = common dso_local global i32 0, align 4
@X509_TRUST_UNTRUSTED = common dso_local global i32 0, align 4
@X509_V_ERR_CERT_REJECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @check_trust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_trust(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* null, i32** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %9, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sk_X509_num(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = call i64 @DANETLS_HAS_TA(%struct.TYPE_12__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @check_dane_issuer(%struct.TYPE_11__* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  switch i32 %32, label %35 [
    i32 128, label %33
    i32 129, label %33
  ]

33:                                               ; preds = %29, %29
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %3, align 4
  br label %165

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %25, %22, %2
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %63, %36
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %38
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32* @sk_X509_value(i32 %45, i32 %46)
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @X509_check_trust(i32* %48, i32 %53, i32 0)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %57, label %58

57:                                               ; preds = %42
  br label %143

58:                                               ; preds = %42
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 129
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %133

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %38

66:                                               ; preds = %38
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @X509_V_FLAG_PARTIAL_CHAIN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %143

80:                                               ; preds = %70
  %81 = load i32, i32* @X509_TRUST_UNTRUSTED, align 4
  store i32 %81, i32* %3, align 4
  br label %165

82:                                               ; preds = %66
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %131

86:                                               ; preds = %82
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @X509_V_FLAG_PARTIAL_CHAIN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %131

95:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call i32* @sk_X509_value(i32 %98, i32 %99)
  store i32* %100, i32** %7, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i32* @lookup_cert_match(%struct.TYPE_11__* %101, i32* %102)
  store i32* %103, i32** %8, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %95
  %107 = load i32, i32* @X509_TRUST_UNTRUSTED, align 4
  store i32 %107, i32* %3, align 4
  br label %165

108:                                              ; preds = %95
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @X509_check_trust(i32* %109, i32 %114, i32 0)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %116, 129
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @X509_free(i32* %119)
  br label %133

121:                                              ; preds = %108
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = call i32 @sk_X509_set(i32 %124, i32 0, i32* %125)
  %127 = load i32*, i32** %7, align 8
  %128 = call i32 @X509_free(i32* %127)
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  br label %143

131:                                              ; preds = %86, %82
  %132 = load i32, i32* @X509_TRUST_UNTRUSTED, align 4
  store i32 %132, i32* %3, align 4
  br label %165

133:                                              ; preds = %118, %61
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @X509_V_ERR_CERT_REJECTED, align 4
  %138 = call i32 @verify_cb_cert(%struct.TYPE_11__* %134, i32* %135, i32 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %133
  store i32 129, i32* %3, align 4
  br label %165

141:                                              ; preds = %133
  %142 = load i32, i32* @X509_TRUST_UNTRUSTED, align 4
  store i32 %142, i32* %3, align 4
  br label %165

143:                                              ; preds = %121, %79, %57
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %145 = call i32 @DANETLS_ENABLED(%struct.TYPE_12__* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  store i32 128, i32* %3, align 4
  br label %165

148:                                              ; preds = %143
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %153, %148
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp sge i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store i32 128, i32* %3, align 4
  br label %165

163:                                              ; preds = %157
  %164 = load i32, i32* @X509_TRUST_UNTRUSTED, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %163, %162, %147, %141, %140, %131, %106, %80, %33
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @sk_X509_num(i32) #1

declare dso_local i64 @DANETLS_HAS_TA(%struct.TYPE_12__*) #1

declare dso_local i32 @check_dane_issuer(%struct.TYPE_11__*, i32) #1

declare dso_local i32* @sk_X509_value(i32, i32) #1

declare dso_local i32 @X509_check_trust(i32*, i32, i32) #1

declare dso_local i32* @lookup_cert_match(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @sk_X509_set(i32, i32, i32*) #1

declare dso_local i32 @verify_cb_cert(%struct.TYPE_11__*, i32*, i32, i32) #1

declare dso_local i32 @DANETLS_ENABLED(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
