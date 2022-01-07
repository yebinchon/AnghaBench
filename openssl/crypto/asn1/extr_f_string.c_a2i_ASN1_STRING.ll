; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_f_string.c_a2i_ASN1_STRING.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_f_string.c_a2i_ASN1_STRING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8* }

@ASN1_F_A2I_ASN1_STRING = common dso_local global i32 0, align 4
@ASN1_R_ODD_NUMBER_OF_CHARS = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ASN1_R_NON_HEX_CHARACTERS = common dso_local global i32 0, align 4
@ASN1_R_SHORT_LINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @a2i_ASN1_STRING(i32* %0, %struct.TYPE_3__* %1, i8* %2, i32 %3) #0 {
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
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @BIO_gets(i32* %23, i8* %24, i32 %25)
  store i32 %26, i32* %16, align 4
  br label %27

27:                                               ; preds = %223, %4
  %28 = load i32, i32* %16, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %22, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %224

34:                                               ; preds = %30
  br label %231

35:                                               ; preds = %27
  store i32 0, i32* %22, align 4
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %45, %35
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %231

55:                                               ; preds = %51
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 13
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %64, %55
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %231

74:                                               ; preds = %70
  %75 = load i8*, i8** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 92
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %100, %74
  %87 = load i32, i32* %11, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i8*, i8** %8, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = call i32 @ossl_isxdigit(i8 signext %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %10, align 4
  br label %103

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %11, align 4
  br label %86

103:                                              ; preds = %97, %86
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 0, i8* %107, align 1
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %231

111:                                              ; preds = %103
  %112 = load i8*, i8** %8, align 8
  store i8* %112, i8** %19, align 8
  store i32 0, i32* %12, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = srem i32 %116, 2
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = load i32, i32* @ASN1_F_A2I_ASN1_STRING, align 4
  %121 = load i32, i32* @ASN1_R_ODD_NUMBER_OF_CHARS, align 4
  %122 = call i32 @ASN1err(i32 %120, i32 %121)
  %123 = load i8*, i8** %17, align 8
  %124 = call i32 @OPENSSL_free(i8* %123)
  store i32 0, i32* %5, align 4
  br label %237

125:                                              ; preds = %111
  %126 = load i32, i32* %10, align 4
  %127 = sdiv i32 %126, 2
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %21, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %154

133:                                              ; preds = %125
  %134 = load i8*, i8** %17, align 8
  %135 = load i32, i32* %20, align 4
  %136 = load i32, i32* %10, align 4
  %137 = mul nsw i32 %136, 2
  %138 = add i32 %135, %137
  %139 = call i8* @OPENSSL_realloc(i8* %134, i32 %138)
  store i8* %139, i8** %18, align 8
  %140 = load i8*, i8** %18, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = load i32, i32* @ASN1_F_A2I_ASN1_STRING, align 4
  %144 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %145 = call i32 @ASN1err(i32 %143, i32 %144)
  %146 = load i8*, i8** %17, align 8
  %147 = call i32 @OPENSSL_free(i8* %146)
  store i32 0, i32* %5, align 4
  br label %237

148:                                              ; preds = %133
  %149 = load i8*, i8** %18, align 8
  store i8* %149, i8** %17, align 8
  %150 = load i32, i32* %20, align 4
  %151 = load i32, i32* %10, align 4
  %152 = mul nsw i32 %151, 2
  %153 = add nsw i32 %150, %152
  store i32 %153, i32* %21, align 4
  br label %154

154:                                              ; preds = %148, %125
  store i32 0, i32* %11, align 4
  br label %155

155:                                              ; preds = %206, %154
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %211

159:                                              ; preds = %155
  store i32 0, i32* %14, align 4
  br label %160

160:                                              ; preds = %202, %159
  %161 = load i32, i32* %14, align 4
  %162 = icmp slt i32 %161, 2
  br i1 %162, label %163, label %205

163:                                              ; preds = %160
  %164 = load i8*, i8** %19, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %14, align 4
  %167 = add nsw i32 %165, %166
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %164, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = call i32 @OPENSSL_hexchar2int(i8 zeroext %170)
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %163
  %175 = load i32, i32* @ASN1_F_A2I_ASN1_STRING, align 4
  %176 = load i32, i32* @ASN1_R_NON_HEX_CHARACTERS, align 4
  %177 = call i32 @ASN1err(i32 %175, i32 %176)
  %178 = load i8*, i8** %17, align 8
  %179 = call i32 @OPENSSL_free(i8* %178)
  store i32 0, i32* %5, align 4
  br label %237

180:                                              ; preds = %163
  %181 = load i8*, i8** %17, align 8
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %181, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = shl i32 %188, 4
  %190 = trunc i32 %189 to i8
  store i8 %190, i8* %186, align 1
  %191 = load i32, i32* %13, align 4
  %192 = load i8*, i8** %17, align 8
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %11, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %192, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = or i32 %199, %191
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %197, align 1
  br label %202

202:                                              ; preds = %180
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %160

205:                                              ; preds = %160
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %11, align 4
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 2
  store i32 %210, i32* %12, align 4
  br label %155

211:                                              ; preds = %155
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %20, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %20, align 4
  %215 = load i32, i32* %15, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %211
  %218 = load i32*, i32** %6, align 8
  %219 = load i8*, i8** %8, align 8
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @BIO_gets(i32* %218, i8* %219, i32 %220)
  store i32 %221, i32* %16, align 4
  br label %223

222:                                              ; preds = %211
  br label %224

223:                                              ; preds = %217
  br label %27

224:                                              ; preds = %222, %33
  %225 = load i32, i32* %20, align 4
  %226 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  %228 = load i8*, i8** %17, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 1
  store i8* %228, i8** %230, align 8
  store i32 1, i32* %5, align 4
  br label %237

231:                                              ; preds = %110, %73, %54, %34
  %232 = load i32, i32* @ASN1_F_A2I_ASN1_STRING, align 4
  %233 = load i32, i32* @ASN1_R_SHORT_LINE, align 4
  %234 = call i32 @ASN1err(i32 %232, i32 %233)
  %235 = load i8*, i8** %17, align 8
  %236 = call i32 @OPENSSL_free(i8* %235)
  store i32 0, i32* %5, align 4
  br label %237

237:                                              ; preds = %231, %224, %174, %142, %119
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

declare dso_local i32 @BIO_gets(i32*, i8*, i32) #1

declare dso_local i32 @ossl_isxdigit(i8 signext) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i8* @OPENSSL_realloc(i8*, i32) #1

declare dso_local i32 @OPENSSL_hexchar2int(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
