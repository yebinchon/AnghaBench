; ModuleID = '/home/carl/AnghaBench/openssl/crypto/modes/extr_ccm128.c_CRYPTO_ccm128_aad.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/modes/extr_ccm128.c_CRYPTO_ccm128_aad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32 (i32*, i32*, i32)* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRYPTO_ccm128_aad(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, i32*, i32)*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  %11 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %10, align 8
  store i32 (i32*, i32*, i32)* %11, i32 (i32*, i32*, i32)** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %265

15:                                               ; preds = %3
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 64
  store i32 %22, i32* %20, align 4
  %23 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 %23(i32* %27, i32* %31, i32 %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ult i64 %40, 65280
  br i1 %41, label %42, label %62

42:                                               ; preds = %15
  %43 = load i64, i64* %6, align 8
  %44 = lshr i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %51, %45
  store i32 %52, i32* %50, align 4
  %53 = load i64, i64* %6, align 8
  %54 = trunc i64 %53 to i32
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %60, %54
  store i32 %61, i32* %59, align 4
  store i32 2, i32* %7, align 4
  br label %214

62:                                               ; preds = %15
  %63 = load i64, i64* %6, align 8
  %64 = icmp uge i64 %63, 4294967296
  br i1 %64, label %65, label %159

65:                                               ; preds = %62
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = xor i32 %71, 255
  store i32 %72, i32* %70, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = xor i32 %78, 255
  store i32 %79, i32* %77, align 4
  %80 = load i64, i64* %6, align 8
  %81 = lshr i64 %80, 56
  %82 = trunc i64 %81 to i32
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %88, %82
  store i32 %89, i32* %87, align 4
  %90 = load i64, i64* %6, align 8
  %91 = lshr i64 %90, 48
  %92 = trunc i64 %91 to i32
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %98, %92
  store i32 %99, i32* %97, align 4
  %100 = load i64, i64* %6, align 8
  %101 = lshr i64 %100, 40
  %102 = trunc i64 %101 to i32
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %108, %102
  store i32 %109, i32* %107, align 4
  %110 = load i64, i64* %6, align 8
  %111 = lshr i64 %110, 32
  %112 = trunc i64 %111 to i32
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 5
  %118 = load i32, i32* %117, align 4
  %119 = xor i32 %118, %112
  store i32 %119, i32* %117, align 4
  %120 = load i64, i64* %6, align 8
  %121 = lshr i64 %120, 24
  %122 = trunc i64 %121 to i32
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 6
  %128 = load i32, i32* %127, align 4
  %129 = xor i32 %128, %122
  store i32 %129, i32* %127, align 4
  %130 = load i64, i64* %6, align 8
  %131 = lshr i64 %130, 16
  %132 = trunc i64 %131 to i32
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 7
  %138 = load i32, i32* %137, align 4
  %139 = xor i32 %138, %132
  store i32 %139, i32* %137, align 4
  %140 = load i64, i64* %6, align 8
  %141 = lshr i64 %140, 8
  %142 = trunc i64 %141 to i32
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 8
  %148 = load i32, i32* %147, align 4
  %149 = xor i32 %148, %142
  store i32 %149, i32* %147, align 4
  %150 = load i64, i64* %6, align 8
  %151 = trunc i64 %150 to i32
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 9
  %157 = load i32, i32* %156, align 4
  %158 = xor i32 %157, %151
  store i32 %158, i32* %156, align 4
  store i32 10, i32* %7, align 4
  br label %213

159:                                              ; preds = %62
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = xor i32 %165, 255
  store i32 %166, i32* %164, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = xor i32 %172, 254
  store i32 %173, i32* %171, align 4
  %174 = load i64, i64* %6, align 8
  %175 = lshr i64 %174, 24
  %176 = trunc i64 %175 to i32
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = xor i32 %182, %176
  store i32 %183, i32* %181, align 4
  %184 = load i64, i64* %6, align 8
  %185 = lshr i64 %184, 16
  %186 = trunc i64 %185 to i32
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = xor i32 %192, %186
  store i32 %193, i32* %191, align 4
  %194 = load i64, i64* %6, align 8
  %195 = lshr i64 %194, 8
  %196 = trunc i64 %195 to i32
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 4
  %202 = load i32, i32* %201, align 4
  %203 = xor i32 %202, %196
  store i32 %203, i32* %201, align 4
  %204 = load i64, i64* %6, align 8
  %205 = trunc i64 %204 to i32
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 5
  %211 = load i32, i32* %210, align 4
  %212 = xor i32 %211, %205
  store i32 %212, i32* %210, align 4
  store i32 6, i32* %7, align 4
  br label %213

213:                                              ; preds = %159, %65
  br label %214

214:                                              ; preds = %213, %42
  br label %215

215:                                              ; preds = %262, %214
  br label %216

216:                                              ; preds = %237, %215
  %217 = load i32, i32* %7, align 4
  %218 = icmp ult i32 %217, 16
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i64, i64* %6, align 8
  %221 = icmp ne i64 %220, 0
  br label %222

222:                                              ; preds = %219, %216
  %223 = phi i1 [ false, %216 ], [ %221, %219 ]
  br i1 %223, label %224, label %244

224:                                              ; preds = %222
  %225 = load i8*, i8** %5, align 8
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = xor i32 %235, %227
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %224
  %238 = load i32, i32* %7, align 4
  %239 = add i32 %238, 1
  store i32 %239, i32* %7, align 4
  %240 = load i8*, i8** %5, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %5, align 8
  %242 = load i64, i64* %6, align 8
  %243 = add i64 %242, -1
  store i64 %243, i64* %6, align 8
  br label %216

244:                                              ; preds = %222
  %245 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %8, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 %245(i32* %249, i32* %253, i32 %256)
  %258 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 8
  store i32 0, i32* %7, align 4
  br label %262

262:                                              ; preds = %244
  %263 = load i64, i64* %6, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %215, label %265

265:                                              ; preds = %14, %262
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
