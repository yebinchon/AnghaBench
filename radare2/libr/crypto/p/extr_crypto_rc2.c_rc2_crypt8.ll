; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_rc2.c_rc2_crypt8.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_rc2.c_rc2_crypt8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc2_state = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc2_state*, i32*, i32*)* @rc2_crypt8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc2_crypt8(%struct.rc2_state* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.rc2_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rc2_state* %0, %struct.rc2_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 7
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 8
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 6
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %15, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 5
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %39, %42
  store i32 %43, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %219, %3
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 16
  br i1 %46, label %47, label %222

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %52, %53
  %55 = add nsw i32 %51, %54
  %56 = sext i32 %55 to i64
  %57 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %58 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 4, %60
  %62 = add nsw i32 %61, 0
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %59, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %56, %65
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = shl i32 %71, 1
  %73 = load i32, i32* %11, align 4
  %74 = ashr i32 %73, 15
  %75 = and i32 %74, 1
  %76 = add nsw i32 %72, %75
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %11, align 4
  %79 = xor i32 %78, -1
  %80 = and i32 %77, %79
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %81, %82
  %84 = add nsw i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %87 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 4, %89
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %88, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %85, %94
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 %100, 2
  %102 = load i32, i32* %10, align 4
  %103 = ashr i32 %102, 14
  %104 = and i32 %103, 3
  %105 = add nsw i32 %101, %104
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %10, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %10, align 4
  %112 = and i32 %110, %111
  %113 = add nsw i32 %109, %112
  %114 = sext i32 %113 to i64
  %115 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %116 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %115, i32 0, i32 0
  %117 = load i64*, i64** %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = mul nsw i32 4, %118
  %120 = add nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %117, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %114, %123
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = shl i32 %129, 3
  %131 = load i32, i32* %9, align 4
  %132 = ashr i32 %131, 13
  %133 = and i32 %132, 7
  %134 = add nsw i32 %130, %133
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %9, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %135, %137
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %9, align 4
  %141 = and i32 %139, %140
  %142 = add nsw i32 %138, %141
  %143 = sext i32 %142 to i64
  %144 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %145 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = mul nsw i32 4, %147
  %149 = add nsw i32 %148, 3
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %146, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = add nsw i64 %143, %152
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %153
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = shl i32 %158, 5
  %160 = load i32, i32* %8, align 4
  %161 = ashr i32 %160, 11
  %162 = and i32 %161, 31
  %163 = add nsw i32 %159, %162
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp eq i32 %164, 4
  br i1 %165, label %169, label %166

166:                                              ; preds = %47
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 10
  br i1 %168, label %169, label %218

169:                                              ; preds = %166, %47
  %170 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %171 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = load i32, i32* %8, align 4
  %174 = and i32 %173, 63
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %172, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %11, align 4
  %182 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %183 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = and i32 %185, 63
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %184, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, %189
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %10, align 4
  %194 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %195 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %194, i32 0, i32 0
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = and i32 %197, 63
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %196, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %9, align 4
  %206 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %207 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %206, i32 0, i32 0
  %208 = load i64*, i64** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = and i32 %209, 63
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i64, i64* %208, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %213
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %8, align 4
  br label %218

218:                                              ; preds = %169, %166
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %7, align 4
  br label %44

222:                                              ; preds = %44
  %223 = load i32, i32* %11, align 4
  %224 = load i32*, i32** %6, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  store i32 %223, i32* %225, align 4
  %226 = load i32, i32* %11, align 4
  %227 = ashr i32 %226, 8
  %228 = load i32*, i32** %6, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %10, align 4
  %231 = load i32*, i32** %6, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 2
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* %10, align 4
  %234 = ashr i32 %233, 8
  %235 = load i32*, i32** %6, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 3
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load i32*, i32** %6, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 4
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* %9, align 4
  %241 = ashr i32 %240, 8
  %242 = load i32*, i32** %6, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 5
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %8, align 4
  %245 = load i32*, i32** %6, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 6
  store i32 %244, i32* %246, align 4
  %247 = load i32, i32* %8, align 4
  %248 = ashr i32 %247, 8
  %249 = load i32*, i32** %6, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 7
  store i32 %248, i32* %250, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
