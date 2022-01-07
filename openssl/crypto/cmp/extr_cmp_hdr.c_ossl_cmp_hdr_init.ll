; ModuleID = '/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_hdr.c_ossl_cmp_hdr_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/cmp/extr_cmp_hdr.c_ossl_cmp_hdr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_12__ = type { i32*, i32, i32 }

@OSSL_CMP_PVNO = common dso_local global i32 0, align 4
@CMP_R_MISSING_SENDER_IDENTIFICATION = common dso_local global i32 0, align 4
@OSSL_CMP_TRANSACTIONID_LENGTH = common dso_local global i32 0, align 4
@OSSL_CMP_SENDERNONCE_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_cmp_hdr_init(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = icmp ne %struct.TYPE_13__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  br label %13

13:                                               ; preds = %10, %2
  %14 = phi i1 [ false, %2 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = call i32 @ossl_assert(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %198

19:                                               ; preds = %13
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = load i32, i32* @OSSL_CMP_PVNO, align 4
  %22 = call i32 @ossl_cmp_hdr_set_pvno(%struct.TYPE_12__* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %198

25:                                               ; preds = %19
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32* @X509_get_subject_name(i32* %33)
  br label %39

35:                                               ; preds = %25
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 10
  %38 = load i32*, i32** %37, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = phi i32* [ %34, %30 ], [ %38, %35 ]
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 9
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @CMP_R_MISSING_SENDER_IDENTIFICATION, align 4
  %50 = call i32 @CMPerr(i32 0, i32 %49)
  store i32 0, i32* %3, align 4
  br label %198

51:                                               ; preds = %43, %39
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @ossl_cmp_hdr_set1_sender(%struct.TYPE_12__* %52, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %198

57:                                               ; preds = %51
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 8
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 8
  %65 = load i32*, i32** %64, align 8
  %66 = call i32* @X509_get_subject_name(i32* %65)
  store i32* %66, i32** %7, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 7
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %62
  %72 = load i32*, i32** %7, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @OSSL_CMP_CTX_set1_expected_sender(%struct.TYPE_13__* %75, i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %198

80:                                               ; preds = %74, %71, %62
  br label %123

81:                                               ; preds = %57
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %7, align 8
  br label %122

90:                                               ; preds = %81
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 5
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %7, align 8
  br label %121

99:                                               ; preds = %90
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = call i32* @X509_get_issuer_name(i32* %107)
  store i32* %108, i32** %7, align 8
  br label %120

109:                                              ; preds = %99
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = call i32* @X509_get_issuer_name(i32* %117)
  store i32* %118, i32** %7, align 8
  br label %119

119:                                              ; preds = %114, %109
  br label %120

120:                                              ; preds = %119, %104
  br label %121

121:                                              ; preds = %120, %95
  br label %122

122:                                              ; preds = %121, %86
  br label %123

123:                                              ; preds = %122, %80
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @ossl_cmp_hdr_set1_recipient(%struct.TYPE_12__* %124, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %198

129:                                              ; preds = %123
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = call i32 @ossl_cmp_hdr_update_messageTime(%struct.TYPE_12__* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %198

134:                                              ; preds = %129
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @ossl_cmp_asn1_octet_string_set1(i32* %141, i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %198

148:                                              ; preds = %139, %134
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load i32, i32* @OSSL_CMP_TRANSACTIONID_LENGTH, align 4
  %157 = call i32 @set1_aostr_else_random(i32** %155, i32* null, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %198

160:                                              ; preds = %153, %148
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @ossl_cmp_asn1_octet_string_set1(i32* %162, i32* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %198

169:                                              ; preds = %160
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i32, i32* @OSSL_CMP_SENDERNONCE_LENGTH, align 4
  %173 = call i32 @set1_aostr_else_random(i32** %171, i32* null, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %169
  store i32 0, i32* %3, align 4
  br label %198

176:                                              ; preds = %169
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = call i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.TYPE_13__* %177, i32* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %176
  store i32 0, i32* %3, align 4
  br label %198

184:                                              ; preds = %176
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @ossl_cmp_hdr_push1_freeText(%struct.TYPE_12__* %190, i32* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %189
  store i32 0, i32* %3, align 4
  br label %198

197:                                              ; preds = %189, %184
  store i32 1, i32* %3, align 4
  br label %198

198:                                              ; preds = %197, %196, %183, %175, %168, %159, %147, %133, %128, %79, %56, %48, %24, %18
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @ossl_cmp_hdr_set_pvno(%struct.TYPE_12__*, i32) #1

declare dso_local i32* @X509_get_subject_name(i32*) #1

declare dso_local i32 @CMPerr(i32, i32) #1

declare dso_local i32 @ossl_cmp_hdr_set1_sender(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @OSSL_CMP_CTX_set1_expected_sender(%struct.TYPE_13__*, i32*) #1

declare dso_local i32* @X509_get_issuer_name(i32*) #1

declare dso_local i32 @ossl_cmp_hdr_set1_recipient(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ossl_cmp_hdr_update_messageTime(%struct.TYPE_12__*) #1

declare dso_local i32 @ossl_cmp_asn1_octet_string_set1(i32*, i32*) #1

declare dso_local i32 @set1_aostr_else_random(i32**, i32*, i32) #1

declare dso_local i32 @OSSL_CMP_CTX_set1_senderNonce(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @ossl_cmp_hdr_push1_freeText(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
