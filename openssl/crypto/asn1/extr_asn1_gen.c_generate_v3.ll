; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_gen.c_generate_v3.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_asn1_gen.c_generate_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64 }

@ASN1_GEN_FORMAT_ASCII = common dso_local global i32 0, align 4
@asn1_cb = common dso_local global i32 0, align 4
@ASN1_R_UNKNOWN_TAG = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@V_ASN1_SET = common dso_local global i32 0, align 4
@ASN1_R_SEQUENCE_OR_SET_NEEDS_CONFIG = common dso_local global i32 0, align 4
@ASN1_GEN_SEQ_MAX_DEPTH = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_NESTED_TAGGING = common dso_local global i32 0, align 4
@V_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@V_ASN1_UNIVERSAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32, i32*)* @generate_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @generate_v3(i8* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i64 0, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load i32, i32* @ASN1_GEN_FORMAT_ASCII, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32 0, i32* %30, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @asn1_cb, align 4
  %33 = call i64 @CONF_parse_list(i8* %31, i8 signext 44, i32 1, i32 %32, %struct.TYPE_5__* %11)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %4
  %36 = load i32, i32* @ASN1_R_UNKNOWN_TAG, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  store i32* null, i32** %5, align 8
  br label %254

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @V_ASN1_SET, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %43, %38
  %49 = load i32*, i32** %7, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @ASN1_R_SEQUENCE_OR_SET_NEEDS_CONFIG, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  store i32* null, i32** %5, align 8
  br label %254

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @ASN1_GEN_SEQ_MAX_DEPTH, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @ASN1_R_ILLEGAL_NESTED_TAGGING, align 4
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  store i32* null, i32** %5, align 8
  br label %254

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = call i32* @asn1_multi(i32 %63, i32 %65, i32* %66, i32 %67, i32* %68)
  store i32* %69, i32** %10, align 8
  br label %78

70:                                               ; preds = %43
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32* @asn1_str2type(i32 %72, i32 %74, i32 %76)
  store i32* %77, i32** %10, align 8
  br label %78

78:                                               ; preds = %70, %61
  %79 = load i32*, i32** %10, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i32* null, i32** %5, align 8
  br label %254

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32*, i32** %10, align 8
  store i32* %91, i32** %5, align 8
  br label %254

92:                                               ; preds = %86, %82
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @i2d_ASN1_TYPE(i32* %93, i8** %15)
  store i32 %94, i32* %20, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = call i32 @ASN1_TYPE_free(i32* %95)
  store i32* null, i32** %10, align 8
  %97 = load i8*, i8** %15, align 8
  store i8* %97, i8** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %132

101:                                              ; preds = %92
  %102 = load i32, i32* %20, align 4
  %103 = call i32 @ASN1_get_object(i8** %17, i64* %21, i32* %23, i32* %24, i32 %102)
  store i32 %103, i32* %25, align 4
  %104 = load i32, i32* %25, align 4
  %105 = and i32 %104, 128
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %248

108:                                              ; preds = %101
  %109 = load i8*, i8** %17, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = load i32, i32* %20, align 4
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %25, align 4
  %119 = and i32 %118, 1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  store i32 2, i32* %22, align 4
  store i64 0, i64* %21, align 8
  br label %126

122:                                              ; preds = %108
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  %125 = and i32 %123, %124
  store i32 %125, i32* %22, align 4
  br label %126

126:                                              ; preds = %122, %121
  %127 = load i64, i64* %21, align 8
  %128 = trunc i64 %127 to i32
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ASN1_object_size(i32 0, i32 %128, i32 %130)
  store i32 %131, i32* %14, align 4
  br label %134

132:                                              ; preds = %92
  %133 = load i32, i32* %20, align 4
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %132, %126
  store i32 0, i32* %13, align 4
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 -1
  store %struct.TYPE_4__* %141, %struct.TYPE_4__** %12, align 8
  br label %142

142:                                              ; preds = %163, %134
  %143 = load i32, i32* %13, align 4
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %147, label %168

147:                                              ; preds = %142
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %152, %150
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ASN1_object_size(i32 0, i32 %158, i32 %161)
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %147
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 -1
  store %struct.TYPE_4__* %167, %struct.TYPE_4__** %12, align 8
  br label %142

168:                                              ; preds = %142
  %169 = load i32, i32* %14, align 4
  %170 = call i8* @OPENSSL_malloc(i32 %169)
  store i8* %170, i8** %16, align 8
  %171 = load i8*, i8** %16, align 8
  %172 = icmp eq i8* %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %248

174:                                              ; preds = %168
  %175 = load i8*, i8** %16, align 8
  store i8* %175, i8** %18, align 8
  store i32 0, i32* %13, align 4
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 4
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  store %struct.TYPE_4__* %177, %struct.TYPE_4__** %12, align 8
  br label %178

178:                                              ; preds = %206, %174
  %179 = load i32, i32* %13, align 4
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %179, %181
  br i1 %182, label %183, label %211

183:                                              ; preds = %178
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @ASN1_put_object(i8** %18, i32 %186, i64 %190, i32 %193, i32 %196)
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %183
  %203 = load i8*, i8** %18, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %18, align 8
  store i8 0, i8* %203, align 1
  br label %205

205:                                              ; preds = %202, %183
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %13, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %13, align 4
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 1
  store %struct.TYPE_4__* %210, %struct.TYPE_4__** %12, align 8
  br label %178

211:                                              ; preds = %178
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, -1
  br i1 %214, label %215, label %240

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @V_ASN1_UNIVERSAL, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %232

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %230, label %225

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @V_ASN1_SET, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %225, %220
  %231 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  store i32 %231, i32* %22, align 4
  br label %232

232:                                              ; preds = %230, %225, %215
  %233 = load i32, i32* %22, align 4
  %234 = load i64, i64* %21, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @ASN1_put_object(i8** %18, i32 %233, i64 %234, i32 %236, i32 %238)
  br label %240

240:                                              ; preds = %232, %211
  %241 = load i8*, i8** %18, align 8
  %242 = load i8*, i8** %17, align 8
  %243 = load i32, i32* %20, align 4
  %244 = call i32 @memcpy(i8* %241, i8* %242, i32 %243)
  %245 = load i8*, i8** %16, align 8
  store i8* %245, i8** %19, align 8
  %246 = load i32, i32* %14, align 4
  %247 = call i32* @d2i_ASN1_TYPE(i32* null, i8** %19, i32 %246)
  store i32* %247, i32** %10, align 8
  br label %248

248:                                              ; preds = %240, %173, %107
  %249 = load i8*, i8** %15, align 8
  %250 = call i32 @OPENSSL_free(i8* %249)
  %251 = load i8*, i8** %16, align 8
  %252 = call i32 @OPENSSL_free(i8* %251)
  %253 = load i32*, i32** %10, align 8
  store i32* %253, i32** %5, align 8
  br label %254

254:                                              ; preds = %248, %90, %81, %58, %51, %35
  %255 = load i32*, i32** %5, align 8
  ret i32* %255
}

declare dso_local i64 @CONF_parse_list(i8*, i8 signext, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32* @asn1_multi(i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @asn1_str2type(i32, i32, i32) #1

declare dso_local i32 @i2d_ASN1_TYPE(i32*, i8**) #1

declare dso_local i32 @ASN1_TYPE_free(i32*) #1

declare dso_local i32 @ASN1_get_object(i8**, i64*, i32*, i32*, i32) #1

declare dso_local i32 @ASN1_object_size(i32, i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @ASN1_put_object(i8**, i32, i64, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32* @d2i_ASN1_TYPE(i32*, i8**, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
