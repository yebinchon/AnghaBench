; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe51_tobytes.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ec/extr_curve25519.c_fe51_tobytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MASK51 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i32*)* @fe51_tobytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fe51_tobytes(i64* %0, i32* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 19
  %28 = ashr i32 %27, 51
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  %32 = ashr i32 %31, 51
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %33, %34
  %36 = ashr i32 %35, 51
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %37, %38
  %40 = ashr i32 %39, 51
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %41, %42
  %44 = ashr i32 %43, 51
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 19, %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = ashr i32 %49, 51
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @MASK51, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 51
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* @MASK51, align 4
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 51
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @MASK51, align 4
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = ashr i32 %70, 51
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* @MASK51, align 4
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @MASK51, align 4
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %5, align 4
  %81 = ashr i32 %80, 0
  %82 = sext i32 %81 to i64
  %83 = load i64*, i64** %3, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %5, align 4
  %86 = ashr i32 %85, 8
  %87 = sext i32 %86 to i64
  %88 = load i64*, i64** %3, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 1
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* %5, align 4
  %91 = ashr i32 %90, 16
  %92 = sext i32 %91 to i64
  %93 = load i64*, i64** %3, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 2
  store i64 %92, i64* %94, align 8
  %95 = load i32, i32* %5, align 4
  %96 = ashr i32 %95, 24
  %97 = sext i32 %96 to i64
  %98 = load i64*, i64** %3, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 3
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* %5, align 4
  %101 = ashr i32 %100, 32
  %102 = sext i32 %101 to i64
  %103 = load i64*, i64** %3, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 4
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* %5, align 4
  %106 = ashr i32 %105, 40
  %107 = sext i32 %106 to i64
  %108 = load i64*, i64** %3, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 5
  store i64 %107, i64* %109, align 8
  %110 = load i32, i32* %5, align 4
  %111 = ashr i32 %110, 48
  %112 = load i32, i32* %6, align 4
  %113 = shl i32 %112, 3
  %114 = or i32 %111, %113
  %115 = sext i32 %114 to i64
  %116 = load i64*, i64** %3, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 6
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* %6, align 4
  %119 = ashr i32 %118, 5
  %120 = sext i32 %119 to i64
  %121 = load i64*, i64** %3, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 7
  store i64 %120, i64* %122, align 8
  %123 = load i32, i32* %6, align 4
  %124 = ashr i32 %123, 13
  %125 = sext i32 %124 to i64
  %126 = load i64*, i64** %3, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 8
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* %6, align 4
  %129 = ashr i32 %128, 21
  %130 = sext i32 %129 to i64
  %131 = load i64*, i64** %3, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 9
  store i64 %130, i64* %132, align 8
  %133 = load i32, i32* %6, align 4
  %134 = ashr i32 %133, 29
  %135 = sext i32 %134 to i64
  %136 = load i64*, i64** %3, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 10
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* %6, align 4
  %139 = ashr i32 %138, 37
  %140 = sext i32 %139 to i64
  %141 = load i64*, i64** %3, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 11
  store i64 %140, i64* %142, align 8
  %143 = load i32, i32* %6, align 4
  %144 = ashr i32 %143, 45
  %145 = load i32, i32* %7, align 4
  %146 = shl i32 %145, 6
  %147 = or i32 %144, %146
  %148 = sext i32 %147 to i64
  %149 = load i64*, i64** %3, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 12
  store i64 %148, i64* %150, align 8
  %151 = load i32, i32* %7, align 4
  %152 = ashr i32 %151, 2
  %153 = sext i32 %152 to i64
  %154 = load i64*, i64** %3, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 13
  store i64 %153, i64* %155, align 8
  %156 = load i32, i32* %7, align 4
  %157 = ashr i32 %156, 10
  %158 = sext i32 %157 to i64
  %159 = load i64*, i64** %3, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 14
  store i64 %158, i64* %160, align 8
  %161 = load i32, i32* %7, align 4
  %162 = ashr i32 %161, 18
  %163 = sext i32 %162 to i64
  %164 = load i64*, i64** %3, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 15
  store i64 %163, i64* %165, align 8
  %166 = load i32, i32* %7, align 4
  %167 = ashr i32 %166, 26
  %168 = sext i32 %167 to i64
  %169 = load i64*, i64** %3, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 16
  store i64 %168, i64* %170, align 8
  %171 = load i32, i32* %7, align 4
  %172 = ashr i32 %171, 34
  %173 = sext i32 %172 to i64
  %174 = load i64*, i64** %3, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 17
  store i64 %173, i64* %175, align 8
  %176 = load i32, i32* %7, align 4
  %177 = ashr i32 %176, 42
  %178 = sext i32 %177 to i64
  %179 = load i64*, i64** %3, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 18
  store i64 %178, i64* %180, align 8
  %181 = load i32, i32* %7, align 4
  %182 = ashr i32 %181, 50
  %183 = load i32, i32* %8, align 4
  %184 = shl i32 %183, 1
  %185 = or i32 %182, %184
  %186 = sext i32 %185 to i64
  %187 = load i64*, i64** %3, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 19
  store i64 %186, i64* %188, align 8
  %189 = load i32, i32* %8, align 4
  %190 = ashr i32 %189, 7
  %191 = sext i32 %190 to i64
  %192 = load i64*, i64** %3, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 20
  store i64 %191, i64* %193, align 8
  %194 = load i32, i32* %8, align 4
  %195 = ashr i32 %194, 15
  %196 = sext i32 %195 to i64
  %197 = load i64*, i64** %3, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 21
  store i64 %196, i64* %198, align 8
  %199 = load i32, i32* %8, align 4
  %200 = ashr i32 %199, 23
  %201 = sext i32 %200 to i64
  %202 = load i64*, i64** %3, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 22
  store i64 %201, i64* %203, align 8
  %204 = load i32, i32* %8, align 4
  %205 = ashr i32 %204, 31
  %206 = sext i32 %205 to i64
  %207 = load i64*, i64** %3, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 23
  store i64 %206, i64* %208, align 8
  %209 = load i32, i32* %8, align 4
  %210 = ashr i32 %209, 39
  %211 = sext i32 %210 to i64
  %212 = load i64*, i64** %3, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 24
  store i64 %211, i64* %213, align 8
  %214 = load i32, i32* %8, align 4
  %215 = ashr i32 %214, 47
  %216 = load i32, i32* %9, align 4
  %217 = shl i32 %216, 4
  %218 = or i32 %215, %217
  %219 = sext i32 %218 to i64
  %220 = load i64*, i64** %3, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 25
  store i64 %219, i64* %221, align 8
  %222 = load i32, i32* %9, align 4
  %223 = ashr i32 %222, 4
  %224 = sext i32 %223 to i64
  %225 = load i64*, i64** %3, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 26
  store i64 %224, i64* %226, align 8
  %227 = load i32, i32* %9, align 4
  %228 = ashr i32 %227, 12
  %229 = sext i32 %228 to i64
  %230 = load i64*, i64** %3, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 27
  store i64 %229, i64* %231, align 8
  %232 = load i32, i32* %9, align 4
  %233 = ashr i32 %232, 20
  %234 = sext i32 %233 to i64
  %235 = load i64*, i64** %3, align 8
  %236 = getelementptr inbounds i64, i64* %235, i64 28
  store i64 %234, i64* %236, align 8
  %237 = load i32, i32* %9, align 4
  %238 = ashr i32 %237, 28
  %239 = sext i32 %238 to i64
  %240 = load i64*, i64** %3, align 8
  %241 = getelementptr inbounds i64, i64* %240, i64 29
  store i64 %239, i64* %241, align 8
  %242 = load i32, i32* %9, align 4
  %243 = ashr i32 %242, 36
  %244 = sext i32 %243 to i64
  %245 = load i64*, i64** %3, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 30
  store i64 %244, i64* %246, align 8
  %247 = load i32, i32* %9, align 4
  %248 = ashr i32 %247, 44
  %249 = sext i32 %248 to i64
  %250 = load i64*, i64** %3, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 31
  store i64 %249, i64* %251, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
