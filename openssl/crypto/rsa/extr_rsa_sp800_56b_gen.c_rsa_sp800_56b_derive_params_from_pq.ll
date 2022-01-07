; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_gen.c_rsa_sp800_56b_derive_params_from_pq.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_sp800_56b_gen.c_rsa_sp800_56b_derive_params_from_pq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_sp800_56b_derive_params_from_pq(%struct.TYPE_3__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 -1, i32* %9, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @BN_CTX_start(i32* %15)
  %17 = load i32*, i32** %8, align 8
  %18 = call i32* @BN_CTX_get(i32* %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = call i32* @BN_CTX_get(i32* %19)
  store i32* %20, i32** %11, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32* @BN_CTX_get(i32* %21)
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32* @BN_CTX_get(i32* %23)
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @BN_CTX_get(i32* %25)
  store i32* %26, i32** %14, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %207

30:                                               ; preds = %4
  %31 = load i32*, i32** %8, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 7
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32*, i32** %12, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @rsa_get_lcm(i32* %31, i32* %34, i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42)
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %207

46:                                               ; preds = %30
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @BN_free(i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i32* @BN_dup(i32* %51)
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 5
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %207

60:                                               ; preds = %46
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @BN_clear_free(i32* %63)
  %65 = call i8* (...) @BN_secure_new()
  %66 = bitcast i8* %65 to i32*
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  store i32* %66, i32** %68, align 8
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %60
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i32* @BN_mod_inverse(i32* %76, i32* %77, i32* %78, i32* %79)
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %73, %60
  br label %207

83:                                               ; preds = %73
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @BN_num_bits(i32* %86)
  %88 = load i32, i32* %6, align 4
  %89 = ashr i32 %88, 1
  %90 = icmp sle i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  store i32 0, i32* %9, align 4
  br label %207

92:                                               ; preds = %83
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = call i8* (...) @BN_new()
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 3
  store i32* %99, i32** %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %120, label %107

107:                                              ; preds = %102
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 7
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 8
  %116 = load i32*, i32** %115, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = call i32 @BN_mul(i32* %110, i32* %113, i32* %116, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %107, %102
  br label %207

121:                                              ; preds = %107
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = call i8* (...) @BN_new()
  %128 = bitcast i8* %127 to i32*
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32* %128, i32** %130, align 8
  br label %131

131:                                              ; preds = %126, %121
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %147, label %136

136:                                              ; preds = %131
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = load i32*, i32** %8, align 8
  %145 = call i32 @BN_mod(i32* %139, i32* %142, i32* %143, i32* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %136, %131
  br label %207

148:                                              ; preds = %136
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = icmp eq i32* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = call i8* (...) @BN_secure_new()
  %155 = bitcast i8* %154 to i32*
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  store i32* %155, i32** %157, align 8
  br label %158

158:                                              ; preds = %153, %148
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %174, label %163

163:                                              ; preds = %158
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load i32*, i32** %11, align 8
  %171 = load i32*, i32** %8, align 8
  %172 = call i32 @BN_mod(i32* %166, i32* %169, i32* %170, i32* %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %163, %158
  br label %207

175:                                              ; preds = %163
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @BN_free(i32* %178)
  %180 = call i8* (...) @BN_secure_new()
  %181 = bitcast i8* %180 to i32*
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  store i32* %181, i32** %183, align 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %201, label %188

188:                                              ; preds = %175
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 8
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 7
  %197 = load i32*, i32** %196, align 8
  %198 = load i32*, i32** %8, align 8
  %199 = call i32* @BN_mod_inverse(i32* %191, i32* %194, i32* %197, i32* %198)
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %188, %175
  br label %207

202:                                              ; preds = %188
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  store i32 1, i32* %9, align 4
  br label %207

207:                                              ; preds = %202, %201, %174, %147, %120, %91, %82, %59, %45, %29
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 1
  br i1 %209, label %210, label %247

210:                                              ; preds = %207
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @BN_free(i32* %213)
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 5
  store i32* null, i32** %216, align 8
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 4
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @BN_free(i32* %219)
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 4
  store i32* null, i32** %222, align 8
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @BN_free(i32* %225)
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 3
  store i32* null, i32** %228, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @BN_free(i32* %231)
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 2
  store i32* null, i32** %234, align 8
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 @BN_free(i32* %237)
  %239 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 1
  store i32* null, i32** %240, align 8
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @BN_free(i32* %243)
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  store i32* null, i32** %246, align 8
  br label %247

247:                                              ; preds = %210, %207
  %248 = load i32*, i32** %10, align 8
  %249 = call i32 @BN_clear(i32* %248)
  %250 = load i32*, i32** %11, align 8
  %251 = call i32 @BN_clear(i32* %250)
  %252 = load i32*, i32** %12, align 8
  %253 = call i32 @BN_clear(i32* %252)
  %254 = load i32*, i32** %13, align 8
  %255 = call i32 @BN_clear(i32* %254)
  %256 = load i32*, i32** %14, align 8
  %257 = call i32 @BN_clear(i32* %256)
  %258 = load i32*, i32** %8, align 8
  %259 = call i32 @BN_CTX_end(i32* %258)
  %260 = load i32, i32* %9, align 4
  ret i32 %260
}

declare dso_local i32 @BN_CTX_start(i32*) #1

declare dso_local i32* @BN_CTX_get(i32*) #1

declare dso_local i32 @rsa_get_lcm(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

declare dso_local i32* @BN_dup(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i8* @BN_secure_new(...) #1

declare dso_local i32* @BN_mod_inverse(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_num_bits(i32*) #1

declare dso_local i8* @BN_new(...) #1

declare dso_local i32 @BN_mul(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_mod(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BN_clear(i32*) #1

declare dso_local i32 @BN_CTX_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
