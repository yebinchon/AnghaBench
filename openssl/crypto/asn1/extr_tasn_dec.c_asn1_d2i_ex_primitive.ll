; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_dec.c_asn1_d2i_ex_primitive.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_dec.c_asn1_d2i_ex_primitive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i64*, i32, i32, i32*, i32 }

@ASN1_F_ASN1_D2I_EX_PRIMITIVE = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_NULL = common dso_local global i32 0, align 4
@ASN1_ITYPE_MSTRING = common dso_local global i64 0, align 8
@V_ASN1_ANY = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_TAGGED_ANY = common dso_local global i32 0, align 4
@ASN1_R_ILLEGAL_OPTIONAL_ANY = common dso_local global i32 0, align 4
@ERR_R_NESTED_ASN1_ERROR = common dso_local global i32 0, align 4
@V_ASN1_UNIVERSAL = common dso_local global i8 0, align 1
@V_ASN1_OTHER = common dso_local global i32 0, align 4
@V_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@V_ASN1_SET = common dso_local global i32 0, align 4
@ASN1_R_TYPE_NOT_CONSTRUCTED = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i32 0, align 4
@V_ASN1_BOOLEAN = common dso_local global i32 0, align 4
@V_ASN1_OBJECT = common dso_local global i32 0, align 4
@V_ASN1_INTEGER = common dso_local global i32 0, align 4
@V_ASN1_ENUMERATED = common dso_local global i32 0, align 4
@ASN1_R_TYPE_NOT_PRIMITIVE = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8**, i64, %struct.TYPE_8__*, i32, i32, i8, i32*)* @asn1_d2i_ex_primitive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_d2i_ex_primitive(i32** %0, i8** %1, i64 %2, %struct.TYPE_8__* %3, i32 %4, i32 %5, i8 signext %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_7__, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8, align 1
  store i32** %0, i32*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8 %6, i8* %16, align 1
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %18, align 4
  store i8 0, i8* %23, align 1
  %29 = bitcast %struct.TYPE_7__* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 40, i1 false)
  store i8* null, i8** %26, align 8
  %30 = load i32**, i32*** %10, align 8
  %31 = icmp eq i32** %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %8
  %33 = load i32, i32* @ASN1_F_ASN1_D2I_EX_PRIMITIVE, align 4
  %34 = load i32, i32* @ASN1_R_ILLEGAL_NULL, align 4
  %35 = call i32 @ASN1err(i32 %33, i32 %34)
  store i32 0, i32* %9, align 4
  br label %251

36:                                               ; preds = %8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ASN1_ITYPE_MSTRING, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %19, align 4
  store i32 -1, i32* %14, align 4
  br label %48

44:                                               ; preds = %36
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %19, align 4
  br label %48

48:                                               ; preds = %44, %42
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* @V_ASN1_ANY, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %48
  %53 = load i32, i32* %14, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* @ASN1_F_ASN1_D2I_EX_PRIMITIVE, align 4
  %57 = load i32, i32* @ASN1_R_ILLEGAL_TAGGED_ANY, align 4
  %58 = call i32 @ASN1err(i32 %56, i32 %57)
  store i32 0, i32* %9, align 4
  br label %251

59:                                               ; preds = %52
  %60 = load i8, i8* %16, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @ASN1_F_ASN1_D2I_EX_PRIMITIVE, align 4
  %64 = load i32, i32* @ASN1_R_ILLEGAL_OPTIONAL_ANY, align 4
  %65 = call i32 @ASN1err(i32 %63, i32 %64)
  store i32 0, i32* %9, align 4
  br label %251

66:                                               ; preds = %59
  %67 = load i8**, i8*** %11, align 8
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %24, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i32*, i32** %17, align 8
  %71 = call i32 @asn1_check_tlen(i64* null, i32* %19, i8* %28, i8* null, i8* null, i8** %24, i64 %69, i32 -1, i32 0, i8 signext 0, i32* %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @ASN1_F_ASN1_D2I_EX_PRIMITIVE, align 4
  %76 = load i32, i32* @ERR_R_NESTED_ASN1_ERROR, align 4
  %77 = call i32 @ASN1err(i32 %75, i32 %76)
  store i32 0, i32* %9, align 4
  br label %251

78:                                               ; preds = %66
  %79 = load i8, i8* %28, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* @V_ASN1_UNIVERSAL, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* @V_ASN1_OTHER, align 4
  store i32 %85, i32* %19, align 4
  br label %86

86:                                               ; preds = %84, %78
  br label %87

87:                                               ; preds = %86, %48
  %88 = load i32, i32* %14, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %19, align 4
  store i32 %91, i32* %14, align 4
  %92 = load i8, i8* @V_ASN1_UNIVERSAL, align 1
  %93 = zext i8 %92 to i32
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %90, %87
  %95 = load i8**, i8*** %11, align 8
  %96 = load i8*, i8** %95, align 8
  store i8* %96, i8** %24, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i8, i8* %16, align 1
  %101 = load i32*, i32** %17, align 8
  %102 = call i32 @asn1_check_tlen(i64* %20, i32* null, i8* null, i8* %22, i8* %21, i8** %24, i64 %97, i32 %98, i32 %99, i8 signext %100, i32* %101)
  store i32 %102, i32* %18, align 4
  %103 = load i32, i32* %18, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %94
  %106 = load i32, i32* @ASN1_F_ASN1_D2I_EX_PRIMITIVE, align 4
  %107 = load i32, i32* @ERR_R_NESTED_ASN1_ERROR, align 4
  %108 = call i32 @ASN1err(i32 %106, i32 %107)
  store i32 0, i32* %9, align 4
  br label %251

109:                                              ; preds = %94
  %110 = load i32, i32* %18, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 -1, i32* %9, align 4
  br label %251

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113
  store i32 0, i32* %18, align 4
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* @V_ASN1_SEQUENCE, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %126, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* @V_ASN1_SET, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* @V_ASN1_OTHER, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %170

126:                                              ; preds = %122, %118, %114
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* @V_ASN1_OTHER, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32*, i32** %17, align 8
  %132 = call i32 @asn1_tlc_clear(i32* %131)
  br label %141

133:                                              ; preds = %126
  %134 = load i8, i8* %21, align 1
  %135 = icmp ne i8 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* @ASN1_F_ASN1_D2I_EX_PRIMITIVE, align 4
  %138 = load i32, i32* @ASN1_R_TYPE_NOT_CONSTRUCTED, align 4
  %139 = call i32 @ASN1err(i32 %137, i32 %138)
  store i32 0, i32* %9, align 4
  br label %251

140:                                              ; preds = %133
  br label %141

141:                                              ; preds = %140, %130
  %142 = load i8**, i8*** %11, align 8
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %26, align 8
  %144 = load i8, i8* %22, align 1
  %145 = icmp ne i8 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %141
  %147 = load i64, i64* %20, align 8
  %148 = load i8, i8* %22, align 1
  %149 = call i32 @asn1_find_end(i8** %24, i64 %147, i8 signext %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  br label %242

152:                                              ; preds = %146
  %153 = load i8*, i8** %24, align 8
  %154 = load i8*, i8** %26, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  store i64 %157, i64* %27, align 8
  br label %169

158:                                              ; preds = %141
  %159 = load i8*, i8** %24, align 8
  %160 = load i8*, i8** %26, align 8
  %161 = ptrtoint i8* %159 to i64
  %162 = ptrtoint i8* %160 to i64
  %163 = sub i64 %161, %162
  %164 = load i64, i64* %20, align 8
  %165 = add nsw i64 %163, %164
  store i64 %165, i64* %27, align 8
  %166 = load i64, i64* %20, align 8
  %167 = load i8*, i8** %24, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 %166
  store i8* %168, i8** %24, align 8
  br label %169

169:                                              ; preds = %158, %152
  br label %230

170:                                              ; preds = %122
  %171 = load i8, i8* %21, align 1
  %172 = icmp ne i8 %171, 0
  br i1 %172, label %173, label %223

173:                                              ; preds = %170
  %174 = load i32, i32* %19, align 4
  %175 = load i32, i32* @V_ASN1_NULL, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %193, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* @V_ASN1_BOOLEAN, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %193, label %181

181:                                              ; preds = %177
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* @V_ASN1_OBJECT, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %193, label %185

185:                                              ; preds = %181
  %186 = load i32, i32* %19, align 4
  %187 = load i32, i32* @V_ASN1_INTEGER, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* @V_ASN1_ENUMERATED, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %189, %185, %181, %177, %173
  %194 = load i32, i32* @ASN1_F_ASN1_D2I_EX_PRIMITIVE, align 4
  %195 = load i32, i32* @ASN1_R_TYPE_NOT_PRIMITIVE, align 4
  %196 = call i32 @ASN1err(i32 %194, i32 %195)
  store i32 0, i32* %9, align 4
  br label %251

197:                                              ; preds = %189
  store i8 1, i8* %23, align 1
  %198 = load i64, i64* %20, align 8
  %199 = load i8, i8* %22, align 1
  %200 = load i8, i8* @V_ASN1_UNIVERSAL, align 1
  %201 = call i32 @asn1_collect(%struct.TYPE_7__* %25, i8** %24, i64 %198, i8 signext %199, i32 -1, i8 zeroext %200, i32 0)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %197
  br label %242

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %27, align 8
  %207 = load i64, i64* %27, align 8
  %208 = add nsw i64 %207, 1
  %209 = call i32 @BUF_MEM_grow_clean(%struct.TYPE_7__* %25, i64 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %204
  %212 = load i32, i32* @ASN1_F_ASN1_D2I_EX_PRIMITIVE, align 4
  %213 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %214 = call i32 @ASN1err(i32 %212, i32 %213)
  br label %242

215:                                              ; preds = %204
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %217 = load i64*, i64** %216, align 8
  %218 = load i64, i64* %27, align 8
  %219 = getelementptr inbounds i64, i64* %217, i64 %218
  store i64 0, i64* %219, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %221 = load i64*, i64** %220, align 8
  %222 = bitcast i64* %221 to i8*
  store i8* %222, i8** %26, align 8
  br label %229

223:                                              ; preds = %170
  %224 = load i8*, i8** %24, align 8
  store i8* %224, i8** %26, align 8
  %225 = load i64, i64* %20, align 8
  store i64 %225, i64* %27, align 8
  %226 = load i64, i64* %20, align 8
  %227 = load i8*, i8** %24, align 8
  %228 = getelementptr inbounds i8, i8* %227, i64 %226
  store i8* %228, i8** %24, align 8
  br label %229

229:                                              ; preds = %223, %215
  br label %230

230:                                              ; preds = %229, %169
  %231 = load i32**, i32*** %10, align 8
  %232 = load i8*, i8** %26, align 8
  %233 = load i64, i64* %27, align 8
  %234 = load i32, i32* %19, align 4
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %236 = call i32 @asn1_ex_c2i(i32** %231, i8* %232, i64 %233, i32 %234, i8* %23, %struct.TYPE_8__* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %230
  br label %242

239:                                              ; preds = %230
  %240 = load i8*, i8** %24, align 8
  %241 = load i8**, i8*** %11, align 8
  store i8* %240, i8** %241, align 8
  store i32 1, i32* %18, align 4
  br label %242

242:                                              ; preds = %239, %238, %211, %203, %151
  %243 = load i8, i8* %23, align 1
  %244 = icmp ne i8 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %247 = load i64*, i64** %246, align 8
  %248 = call i32 @OPENSSL_free(i64* %247)
  br label %249

249:                                              ; preds = %245, %242
  %250 = load i32, i32* %18, align 4
  store i32 %250, i32* %9, align 4
  br label %251

251:                                              ; preds = %249, %193, %136, %112, %105, %74, %62, %55, %32
  %252 = load i32, i32* %9, align 4
  ret i32 %252
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ASN1err(i32, i32) #2

declare dso_local i32 @asn1_check_tlen(i64*, i32*, i8*, i8*, i8*, i8**, i64, i32, i32, i8 signext, i32*) #2

declare dso_local i32 @asn1_tlc_clear(i32*) #2

declare dso_local i32 @asn1_find_end(i8**, i64, i8 signext) #2

declare dso_local i32 @asn1_collect(%struct.TYPE_7__*, i8**, i64, i8 signext, i32, i8 zeroext, i32) #2

declare dso_local i32 @BUF_MEM_grow_clean(%struct.TYPE_7__*, i64) #2

declare dso_local i32 @asn1_ex_c2i(i32**, i8*, i64, i32, i8*, %struct.TYPE_8__*) #2

declare dso_local i32 @OPENSSL_free(i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
