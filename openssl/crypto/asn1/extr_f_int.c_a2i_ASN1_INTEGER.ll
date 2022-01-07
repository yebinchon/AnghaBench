; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_f_int.c_a2i_ASN1_INTEGER.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_f_int.c_a2i_ASN1_INTEGER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }

@V_ASN1_INTEGER = common dso_local global i32 0, align 4
@ASN1_F_A2I_ASN1_INTEGER = common dso_local global i32 0, align 4
@ASN1_R_ODD_NUMBER_OF_CHARS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ASN1_R_NON_HEX_CHARACTERS = common dso_local global i32 0, align 4
@ASN1_R_SHORT_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @a2i_ASN1_INTEGER(i32* %0, %struct.TYPE_3__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %17, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @V_ASN1_INTEGER, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @BIO_gets(i32* %26, i8* %27, i32 %28)
  store i32 %29, i32* %16, align 4
  br label %30

30:                                               ; preds = %241, %4
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %249

34:                                               ; preds = %30
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %44, %34
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %249

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 13
  br i1 %62, label %63, label %69

63:                                               ; preds = %54
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %63, %54
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %249

73:                                               ; preds = %69
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 92
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %98, %73
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i8*, i8** %8, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = call i32 @ossl_isxdigit(i8 signext %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %10, align 4
  br label %101

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %83

101:                                              ; preds = %95, %83
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8 0, i8* %105, align 1
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 2
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %249

109:                                              ; preds = %101
  %110 = load i8*, i8** %8, align 8
  store i8* %110, i8** %19, align 8
  %111 = load i32, i32* %22, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %131

113:                                              ; preds = %109
  store i32 0, i32* %22, align 4
  %114 = load i8*, i8** %19, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 48
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load i8*, i8** %19, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 48
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  %126 = load i8*, i8** %19, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 2
  store i8* %127, i8** %19, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sub nsw i32 %128, 2
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %125, %119, %113
  br label %131

131:                                              ; preds = %130, %109
  store i32 0, i32* %12, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %133, %132
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = srem i32 %135, 2
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i32, i32* @ASN1_F_A2I_ASN1_INTEGER, align 4
  %140 = load i32, i32* @ASN1_R_ODD_NUMBER_OF_CHARS, align 4
  %141 = call i32 @ASN1err(i32 %139, i32 %140)
  %142 = load i8*, i8** %17, align 8
  %143 = call i32 @OPENSSL_free(i8* %142)
  store i32 0, i32* %5, align 4
  br label %255

144:                                              ; preds = %131
  %145 = load i32, i32* %10, align 4
  %146 = sdiv i32 %145, 2
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %20, align 4
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %147, %148
  %150 = load i32, i32* %21, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %174

152:                                              ; preds = %144
  %153 = load i8*, i8** %17, align 8
  %154 = load i32, i32* %21, align 4
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %10, align 4
  %157 = mul nsw i32 %156, 2
  %158 = add nsw i32 %155, %157
  %159 = call i8* @OPENSSL_clear_realloc(i8* %153, i32 %154, i32 %158)
  store i8* %159, i8** %18, align 8
  %160 = load i8*, i8** %18, align 8
  %161 = icmp eq i8* %160, null
  br i1 %161, label %162, label %168

162:                                              ; preds = %152
  %163 = load i32, i32* @ASN1_F_A2I_ASN1_INTEGER, align 4
  %164 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %165 = call i32 @ASN1err(i32 %163, i32 %164)
  %166 = load i8*, i8** %17, align 8
  %167 = call i32 @OPENSSL_free(i8* %166)
  store i32 0, i32* %5, align 4
  br label %255

168:                                              ; preds = %152
  %169 = load i8*, i8** %18, align 8
  store i8* %169, i8** %17, align 8
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* %10, align 4
  %172 = mul nsw i32 %171, 2
  %173 = add nsw i32 %170, %172
  store i32 %173, i32* %21, align 4
  br label %174

174:                                              ; preds = %168, %144
  store i32 0, i32* %11, align 4
  br label %175

175:                                              ; preds = %224, %174
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %10, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %229

179:                                              ; preds = %175
  store i32 0, i32* %14, align 4
  br label %180

180:                                              ; preds = %220, %179
  %181 = load i32, i32* %14, align 4
  %182 = icmp slt i32 %181, 2
  br i1 %182, label %183, label %223

183:                                              ; preds = %180
  %184 = load i8*, i8** %19, align 8
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %184, i64 %188
  %190 = load i8, i8* %189, align 1
  %191 = call i32 @OPENSSL_hexchar2int(i8 zeroext %190)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %183
  %195 = load i32, i32* @ASN1_F_A2I_ASN1_INTEGER, align 4
  %196 = load i32, i32* @ASN1_R_NON_HEX_CHARACTERS, align 4
  %197 = call i32 @ASN1err(i32 %195, i32 %196)
  br label %249

198:                                              ; preds = %183
  %199 = load i8*, i8** %17, align 8
  %200 = load i32, i32* %20, align 4
  %201 = load i32, i32* %11, align 4
  %202 = add nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %199, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = shl i32 %206, 4
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %204, align 1
  %209 = load i32, i32* %13, align 4
  %210 = load i8*, i8** %17, align 8
  %211 = load i32, i32* %20, align 4
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %211, %212
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %210, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i32
  %218 = or i32 %217, %209
  %219 = trunc i32 %218 to i8
  store i8 %219, i8* %215, align 1
  br label %220

220:                                              ; preds = %198
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %14, align 4
  br label %180

223:                                              ; preds = %180
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %11, align 4
  %227 = load i32, i32* %12, align 4
  %228 = add nsw i32 %227, 2
  store i32 %228, i32* %12, align 4
  br label %175

229:                                              ; preds = %175
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %20, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %20, align 4
  %233 = load i32, i32* %15, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = load i32*, i32** %6, align 8
  %237 = load i8*, i8** %8, align 8
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @BIO_gets(i32* %236, i8* %237, i32 %238)
  store i32 %239, i32* %16, align 4
  br label %241

240:                                              ; preds = %229
  br label %242

241:                                              ; preds = %235
  br label %30

242:                                              ; preds = %240
  %243 = load i32, i32* %20, align 4
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  %246 = load i8*, i8** %17, align 8
  %247 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %247, i32 0, i32 1
  store i8* %246, i8** %248, align 8
  store i32 1, i32* %5, align 4
  br label %255

249:                                              ; preds = %194, %108, %72, %53, %33
  %250 = load i32, i32* @ASN1_F_A2I_ASN1_INTEGER, align 4
  %251 = load i32, i32* @ASN1_R_SHORT_LINE, align 4
  %252 = call i32 @ASN1err(i32 %250, i32 %251)
  %253 = load i8*, i8** %17, align 8
  %254 = call i32 @OPENSSL_free(i8* %253)
  store i32 0, i32* %5, align 4
  br label %255

255:                                              ; preds = %249, %242, %162, %138
  %256 = load i32, i32* %5, align 4
  ret i32 %256
}

declare dso_local i32 @BIO_gets(i32*, i8*, i32) #1

declare dso_local i32 @ossl_isxdigit(i8 signext) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_clear_realloc(i8*, i32, i32) #1

declare dso_local i32 @OPENSSL_hexchar2int(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
