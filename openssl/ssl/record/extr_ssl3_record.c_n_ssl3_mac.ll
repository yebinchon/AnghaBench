; ModuleID = '/home/carl/AnghaBench/openssl/ssl/record/extr_ssl3_record.c_n_ssl3_mac.c'
source_filename = "/home/carl/AnghaBench/openssl/ssl/record/extr_ssl3_record.c_n_ssl3_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8, i32, i8*, i32 }

@EVP_CIPH_CBC_MODE = common dso_local global i64 0, align 8
@ssl3_pad_1 = common dso_local global i8* null, align 8
@ssl3_pad_2 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @n_ssl3_mac(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca [75 x i8], align 16
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  store i8* %29, i8** %10, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = call i8* @RECORD_LAYER_get_write_sequence(i32* %31)
  store i8* %32, i8** %11, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %12, align 8
  br label %48

36:                                               ; preds = %4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  store i8* %41, i8** %10, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = call i8* @RECORD_LAYER_get_read_sequence(i32* %43)
  store i8* %44, i8** %11, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %12, align 8
  br label %48

48:                                               ; preds = %36, %24
  %49 = load i32*, i32** %12, align 8
  %50 = call i32 @EVP_MD_CTX_size(i32* %49)
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %17, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %244

54:                                               ; preds = %48
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = udiv i64 48, %57
  %59 = load i64, i64* %15, align 8
  %60 = mul i64 %58, %59
  store i64 %60, i64* %16, align 8
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %146, label %63

63:                                               ; preds = %54
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @EVP_CIPHER_CTX_mode(i32 %66)
  %68 = load i64, i64* @EVP_CIPH_CBC_MODE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %146

70:                                               ; preds = %63
  %71 = load i32*, i32** %12, align 8
  %72 = call i64 @ssl3_cbc_record_digest_supported(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %146

74:                                               ; preds = %70
  store i64 0, i64* %19, align 8
  %75 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 0
  %76 = load i64, i64* %19, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8*, i8** %10, align 8
  %79 = load i64, i64* %15, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(i8* %77, i8* %78, i32 %80)
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %19, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %19, align 8
  %85 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 0
  %86 = load i64, i64* %19, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8*, i8** @ssl3_pad_1, align 8
  %89 = load i64, i64* %16, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memcpy(i8* %87, i8* %88, i32 %90)
  %92 = load i64, i64* %16, align 8
  %93 = load i64, i64* %19, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %19, align 8
  %95 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 0
  %96 = load i64, i64* %19, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @memcpy(i8* %97, i8* %98, i32 8)
  %100 = load i64, i64* %19, align 8
  %101 = add i64 %100, 8
  store i64 %101, i64* %19, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i8, i8* %103, align 8
  %105 = load i64, i64* %19, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %19, align 8
  %107 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 %105
  store i8 %104, i8* %107, align 1
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 8
  %112 = trunc i32 %111 to i8
  %113 = load i64, i64* %19, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %19, align 8
  %115 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 %113
  store i8 %112, i8* %115, align 1
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 255
  %120 = trunc i32 %119 to i8
  %121 = load i64, i64* %19, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %19, align 8
  %123 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 %121
  store i8 %120, i8* %123, align 1
  %124 = load i32*, i32** %12, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = getelementptr inbounds [75 x i8], [75 x i8]* %18, i64 0, i64 0
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %15, align 8
  %135 = add i64 %133, %134
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load i64, i64* %15, align 8
  %142 = call i64 @ssl3_cbc_digest_record(i32* %124, i8* %125, i64* %15, i8* %126, i8* %129, i32 %136, i32 %139, i8* %140, i64 %141, i32 1)
  %143 = icmp sle i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %74
  store i32 0, i32* %5, align 4
  br label %244

145:                                              ; preds = %74
  br label %241

146:                                              ; preds = %70, %63, %54
  %147 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %147, i32** %21, align 8
  %148 = load i32*, i32** %21, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 0, i32* %5, align 4
  br label %244

151:                                              ; preds = %146
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i8, i8* %153, align 8
  store i8 %154, i8* %14, align 1
  %155 = load i8*, i8** %8, align 8
  store i8* %155, i8** %13, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i8*, i8** %13, align 8
  %160 = call i32 @s2n(i32 %158, i8* %159)
  %161 = load i32*, i32** %21, align 8
  %162 = load i32*, i32** %12, align 8
  %163 = call i64 @EVP_MD_CTX_copy_ex(i32* %161, i32* %162)
  %164 = icmp sle i64 %163, 0
  br i1 %164, label %235, label %165

165:                                              ; preds = %151
  %166 = load i32*, i32** %21, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = load i64, i64* %15, align 8
  %169 = call i64 @EVP_DigestUpdate(i32* %166, i8* %167, i64 %168)
  %170 = icmp sle i64 %169, 0
  br i1 %170, label %235, label %171

171:                                              ; preds = %165
  %172 = load i32*, i32** %21, align 8
  %173 = load i8*, i8** @ssl3_pad_1, align 8
  %174 = load i64, i64* %16, align 8
  %175 = call i64 @EVP_DigestUpdate(i32* %172, i8* %173, i64 %174)
  %176 = icmp sle i64 %175, 0
  br i1 %176, label %235, label %177

177:                                              ; preds = %171
  %178 = load i32*, i32** %21, align 8
  %179 = load i8*, i8** %11, align 8
  %180 = call i64 @EVP_DigestUpdate(i32* %178, i8* %179, i64 8)
  %181 = icmp sle i64 %180, 0
  br i1 %181, label %235, label %182

182:                                              ; preds = %177
  %183 = load i32*, i32** %21, align 8
  %184 = call i64 @EVP_DigestUpdate(i32* %183, i8* %14, i64 1)
  %185 = icmp sle i64 %184, 0
  br i1 %185, label %235, label %186

186:                                              ; preds = %182
  %187 = load i32*, i32** %21, align 8
  %188 = load i8*, i8** %8, align 8
  %189 = call i64 @EVP_DigestUpdate(i32* %187, i8* %188, i64 2)
  %190 = icmp sle i64 %189, 0
  br i1 %190, label %235, label %191

191:                                              ; preds = %186
  %192 = load i32*, i32** %21, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = call i64 @EVP_DigestUpdate(i32* %192, i8* %195, i64 %199)
  %201 = icmp sle i64 %200, 0
  br i1 %201, label %235, label %202

202:                                              ; preds = %191
  %203 = load i32*, i32** %21, align 8
  %204 = load i8*, i8** %8, align 8
  %205 = call i64 @EVP_DigestFinal_ex(i32* %203, i8* %204, i32* null)
  %206 = icmp sle i64 %205, 0
  br i1 %206, label %235, label %207

207:                                              ; preds = %202
  %208 = load i32*, i32** %21, align 8
  %209 = load i32*, i32** %12, align 8
  %210 = call i64 @EVP_MD_CTX_copy_ex(i32* %208, i32* %209)
  %211 = icmp sle i64 %210, 0
  br i1 %211, label %235, label %212

212:                                              ; preds = %207
  %213 = load i32*, i32** %21, align 8
  %214 = load i8*, i8** %10, align 8
  %215 = load i64, i64* %15, align 8
  %216 = call i64 @EVP_DigestUpdate(i32* %213, i8* %214, i64 %215)
  %217 = icmp sle i64 %216, 0
  br i1 %217, label %235, label %218

218:                                              ; preds = %212
  %219 = load i32*, i32** %21, align 8
  %220 = load i8*, i8** @ssl3_pad_2, align 8
  %221 = load i64, i64* %16, align 8
  %222 = call i64 @EVP_DigestUpdate(i32* %219, i8* %220, i64 %221)
  %223 = icmp sle i64 %222, 0
  br i1 %223, label %235, label %224

224:                                              ; preds = %218
  %225 = load i32*, i32** %21, align 8
  %226 = load i8*, i8** %8, align 8
  %227 = load i64, i64* %15, align 8
  %228 = call i64 @EVP_DigestUpdate(i32* %225, i8* %226, i64 %227)
  %229 = icmp sle i64 %228, 0
  br i1 %229, label %235, label %230

230:                                              ; preds = %224
  %231 = load i32*, i32** %21, align 8
  %232 = load i8*, i8** %8, align 8
  %233 = call i64 @EVP_DigestFinal_ex(i32* %231, i8* %232, i32* %20)
  %234 = icmp sle i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %230, %224, %218, %212, %207, %202, %191, %186, %182, %177, %171, %165, %151
  %236 = load i32*, i32** %21, align 8
  %237 = call i32 @EVP_MD_CTX_free(i32* %236)
  store i32 0, i32* %5, align 4
  br label %244

238:                                              ; preds = %230
  %239 = load i32*, i32** %21, align 8
  %240 = call i32 @EVP_MD_CTX_free(i32* %239)
  br label %241

241:                                              ; preds = %238, %145
  %242 = load i8*, i8** %11, align 8
  %243 = call i32 @ssl3_record_sequence_update(i8* %242)
  store i32 1, i32* %5, align 4
  br label %244

244:                                              ; preds = %241, %235, %150, %144, %53
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local i8* @RECORD_LAYER_get_write_sequence(i32*) #1

declare dso_local i8* @RECORD_LAYER_get_read_sequence(i32*) #1

declare dso_local i32 @EVP_MD_CTX_size(i32*) #1

declare dso_local i64 @EVP_CIPHER_CTX_mode(i32) #1

declare dso_local i64 @ssl3_cbc_record_digest_supported(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ssl3_cbc_digest_record(i32*, i8*, i64*, i8*, i8*, i32, i32, i8*, i64, i32) #1

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @s2n(i32, i8*) #1

declare dso_local i64 @EVP_MD_CTX_copy_ex(i32*, i32*) #1

declare dso_local i64 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

declare dso_local i32 @ssl3_record_sequence_update(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
