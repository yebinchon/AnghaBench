; ModuleID = '/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_rc2.c_rc2_dcrypt8.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/crypto/p/extr_crypto_rc2.c_rc2_dcrypt8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc2_state = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc2_state*, i32*, i32*)* @rc2_dcrypt8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc2_dcrypt8(%struct.rc2_state* %0, i32* %1, i32* %2) #0 {
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
  store i32 15, i32* %7, align 4
  br label %44

44:                                               ; preds = %223, %3
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %226

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 65535
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %50, 11
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 5
  %54 = or i32 %51, %53
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %59, %60
  %62 = or i32 %58, %61
  %63 = sext i32 %62 to i64
  %64 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %65 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 4, %67
  %69 = add nsw i32 %68, 3
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %66, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %63, %72
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 65535
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = shl i32 %80, 13
  %82 = load i32, i32* %9, align 4
  %83 = ashr i32 %82, 3
  %84 = or i32 %81, %83
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %10, align 4
  %87 = xor i32 %86, -1
  %88 = and i32 %85, %87
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %89, %90
  %92 = or i32 %88, %91
  %93 = sext i32 %92 to i64
  %94 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %95 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = mul nsw i32 4, %97
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %96, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %93, %102
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = sub nsw i64 %105, %103
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = and i32 %108, 65535
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = shl i32 %110, 14
  %112 = load i32, i32* %10, align 4
  %113 = ashr i32 %112, 2
  %114 = or i32 %111, %113
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %11, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %11, align 4
  %121 = and i32 %119, %120
  %122 = or i32 %118, %121
  %123 = sext i32 %122 to i64
  %124 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %125 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = mul nsw i32 4, %127
  %129 = add nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %126, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %123, %132
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = sub nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = and i32 %138, 65535
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = shl i32 %140, 15
  %142 = load i32, i32* %11, align 4
  %143 = ashr i32 %142, 1
  %144 = or i32 %141, %143
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %8, align 4
  %147 = xor i32 %146, -1
  %148 = and i32 %145, %147
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %8, align 4
  %151 = and i32 %149, %150
  %152 = or i32 %148, %151
  %153 = sext i32 %152 to i64
  %154 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %155 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = mul nsw i32 4, %157
  %159 = add nsw i32 %158, 0
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %156, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %153, %162
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = sub nsw i64 %165, %163
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp eq i32 %168, 5
  br i1 %169, label %173, label %170

170:                                              ; preds = %47
  %171 = load i32, i32* %7, align 4
  %172 = icmp eq i32 %171, 11
  br i1 %172, label %173, label %222

173:                                              ; preds = %170, %47
  %174 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %175 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = and i32 %177, 63
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %176, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = sub nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %8, align 4
  %186 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %187 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = and i32 %189, 63
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %188, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = sub nsw i64 %195, %193
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %9, align 4
  %198 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %199 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %198, i32 0, i32 0
  %200 = load i64*, i64** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = and i32 %201, 63
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %200, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = sub nsw i64 %207, %205
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %10, align 4
  %210 = load %struct.rc2_state*, %struct.rc2_state** %4, align 8
  %211 = getelementptr inbounds %struct.rc2_state, %struct.rc2_state* %210, i32 0, i32 0
  %212 = load i64*, i64** %211, align 8
  %213 = load i32, i32* %8, align 4
  %214 = and i32 %213, 63
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %212, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = sub nsw i64 %219, %217
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %11, align 4
  br label %222

222:                                              ; preds = %173, %170
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, -1
  store i32 %225, i32* %7, align 4
  br label %44

226:                                              ; preds = %44
  %227 = load i32, i32* %11, align 4
  %228 = load i32*, i32** %6, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %11, align 4
  %231 = ashr i32 %230, 8
  %232 = load i32*, i32** %6, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %10, align 4
  %235 = load i32*, i32** %6, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 2
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* %10, align 4
  %238 = ashr i32 %237, 8
  %239 = load i32*, i32** %6, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 3
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %9, align 4
  %242 = load i32*, i32** %6, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 4
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %9, align 4
  %245 = ashr i32 %244, 8
  %246 = load i32*, i32** %6, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 5
  store i32 %245, i32* %247, align 4
  %248 = load i32, i32* %8, align 4
  %249 = load i32*, i32** %6, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 6
  store i32 %248, i32* %250, align 4
  %251 = load i32, i32* %8, align 4
  %252 = ashr i32 %251, 8
  %253 = load i32*, i32** %6, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 7
  store i32 %252, i32* %254, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
