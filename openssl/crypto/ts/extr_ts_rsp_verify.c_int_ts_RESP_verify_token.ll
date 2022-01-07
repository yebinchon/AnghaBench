; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_verify.c_int_ts_RESP_verify_token.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_verify.c_int_ts_RESP_verify_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i32, i32*, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32* }

@TS_VFY_SIGNER = common dso_local global i32 0, align 4
@TS_VFY_TSA_NAME = common dso_local global i32 0, align 4
@TS_VFY_SIGNATURE = common dso_local global i32 0, align 4
@TS_VFY_VERSION = common dso_local global i32 0, align 4
@TS_F_INT_TS_RESP_VERIFY_TOKEN = common dso_local global i32 0, align 4
@TS_R_UNSUPPORTED_VERSION = common dso_local global i32 0, align 4
@TS_VFY_POLICY = common dso_local global i32 0, align 4
@TS_VFY_IMPRINT = common dso_local global i32 0, align 4
@TS_VFY_DATA = common dso_local global i32 0, align 4
@TS_VFY_NONCE = common dso_local global i32 0, align 4
@TS_R_TSA_NAME_MISMATCH = common dso_local global i32 0, align 4
@TS_R_TSA_UNTRUSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_11__*)* @int_ts_RESP_verify_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @int_ts_RESP_verify_token(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  store i32* null, i32** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* @TS_VFY_SIGNER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24, %3
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @TS_VFY_TSA_NAME, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27, %24
  %33 = load i32, i32* @TS_VFY_SIGNATURE, align 4
  %34 = load i32, i32* %13, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @TS_VFY_SIGNATURE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @TS_RESP_verify_signature(i32* %42, i32 %45, i32 %48, i32** %7)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %164

52:                                               ; preds = %41, %36
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* @TS_VFY_VERSION, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = call i32 @TS_TST_INFO_get_version(%struct.TYPE_11__* %58)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @TS_F_INT_TS_RESP_VERIFY_TOKEN, align 4
  %63 = load i32, i32* @TS_R_UNSUPPORTED_VERSION, align 4
  %64 = call i32 @TSerr(i32 %62, i32 %63)
  br label %164

65:                                               ; preds = %57, %52
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @TS_VFY_POLICY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = call i32 @ts_check_policy(i32 %73, %struct.TYPE_11__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %70
  br label %164

78:                                               ; preds = %70, %65
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @TS_VFY_IMPRINT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %94 = call i32 @ts_check_imprints(i32* %86, i8* %89, i32 %92, %struct.TYPE_11__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %83
  br label %164

97:                                               ; preds = %83, %78
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @TS_VFY_DATA, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = call i32 @ts_compute_imprint(i32 %105, %struct.TYPE_11__* %106, i32** %9, i8** %10, i32* %11)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %102
  %110 = load i32*, i32** %9, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %114 = call i32 @ts_check_imprints(i32* %110, i8* %111, i32 %112, %struct.TYPE_11__* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %109, %102
  br label %164

117:                                              ; preds = %109, %97
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @TS_VFY_NONCE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = call i32 @ts_check_nonces(i32 %125, %struct.TYPE_11__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %122
  br label %164

130:                                              ; preds = %122, %117
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @TS_VFY_SIGNER, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = load i32*, i32** %8, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load i32*, i32** %8, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @ts_check_signer_name(i32* %139, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* @TS_F_INT_TS_RESP_VERIFY_TOKEN, align 4
  %145 = load i32, i32* @TS_R_TSA_NAME_MISMATCH, align 4
  %146 = call i32 @TSerr(i32 %144, i32 %145)
  br label %164

147:                                              ; preds = %138, %135, %130
  %148 = load i32, i32* %13, align 4
  %149 = load i32, i32* @TS_VFY_TSA_NAME, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @ts_check_signer_name(i32* %155, i32* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* @TS_F_INT_TS_RESP_VERIFY_TOKEN, align 4
  %161 = load i32, i32* @TS_R_TSA_UNTRUSTED, align 4
  %162 = call i32 @TSerr(i32 %160, i32 %161)
  br label %164

163:                                              ; preds = %152, %147
  store i32 1, i32* %12, align 4
  br label %164

164:                                              ; preds = %163, %159, %143, %129, %116, %96, %77, %61, %51
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 @X509_free(i32* %165)
  %167 = load i32*, i32** %9, align 8
  %168 = call i32 @X509_ALGOR_free(i32* %167)
  %169 = load i8*, i8** %10, align 8
  %170 = call i32 @OPENSSL_free(i8* %169)
  %171 = load i32, i32* %12, align 4
  ret i32 %171
}

declare dso_local i32 @TS_RESP_verify_signature(i32*, i32, i32, i32**) #1

declare dso_local i32 @TS_TST_INFO_get_version(%struct.TYPE_11__*) #1

declare dso_local i32 @TSerr(i32, i32) #1

declare dso_local i32 @ts_check_policy(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ts_check_imprints(i32*, i8*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ts_compute_imprint(i32, %struct.TYPE_11__*, i32**, i8**, i32*) #1

declare dso_local i32 @ts_check_nonces(i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ts_check_signer_name(i32*, i32*) #1

declare dso_local i32 @X509_free(i32*) #1

declare dso_local i32 @X509_ALGOR_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
