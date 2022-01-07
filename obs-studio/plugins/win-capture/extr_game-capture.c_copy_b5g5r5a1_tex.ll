; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_copy_b5g5r5a1_tex.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_copy_b5g5r5a1_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, i32, i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.game_capture*, i32, i32*, i32)* @copy_b5g5r5a1_tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_b5g5r5a1_tex(%struct.game_capture* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.game_capture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.game_capture* %0, %struct.game_capture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %37 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %38 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %37, i32 0, i32 3
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %9, align 8
  %44 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %45 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %48 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  %50 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %51 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %53

53:                                               ; preds = %209, %4
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %212

57:                                               ; preds = %53
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32* %63, i32** %14, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %13, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32* %69, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %70

70:                                               ; preds = %205, %57
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %208

74:                                               ; preds = %70
  %75 = load i32*, i32** %14, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 4
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  store i32* %79, i32** %23, align 8
  %80 = load i32*, i32** %23, align 8
  %81 = call i32 @_mm_load_si128(i32* %80)
  store i32 %81, i32* %24, align 4
  %82 = call i32 (...) @_mm_setzero_si128()
  store i32 %82, i32* %25, align 4
  %83 = load i32, i32* %24, align 4
  %84 = load i32, i32* %25, align 4
  %85 = call i32 @_mm_unpacklo_epi16(i32 %83, i32 %84)
  store i32 %85, i32* %26, align 4
  %86 = load i32, i32* %24, align 4
  %87 = load i32, i32* %25, align 4
  %88 = call i32 @_mm_unpackhi_epi16(i32 %86, i32 %87)
  store i32 %88, i32* %27, align 4
  %89 = call i32 @_mm_set1_epi32(i32 31)
  store i32 %89, i32* %28, align 4
  %90 = call i32 @_mm_set1_epi32(i32 3)
  store i32 %90, i32* %29, align 4
  %91 = call i32 @_mm_set1_epi32(i32 992)
  store i32 %91, i32* %30, align 4
  %92 = call i32 @_mm_set1_epi32(i32 12)
  store i32 %92, i32* %31, align 4
  %93 = call i32 @_mm_set1_epi32(i32 31744)
  store i32 %93, i32* %32, align 4
  %94 = call i32 @_mm_set1_epi32(i32 384)
  store i32 %94, i32* %33, align 4
  %95 = call i32 @_mm_set1_epi32(i32 32768)
  store i32 %95, i32* %34, align 4
  %96 = call i32 @_mm_set1_epi32(i32 1)
  store i32 %96, i32* %35, align 4
  %97 = call i32 @_mm_set1_epi32(i32 -16777216)
  store i32 %97, i32* %36, align 4
  %98 = load i32, i32* %26, align 4
  %99 = load i32, i32* %28, align 4
  %100 = call i32 @_mm_and_si128(i32 %98, i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = call i32 @_mm_slli_epi32(i32 %101, i32 3)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %29, align 4
  %105 = call i32 @_mm_add_epi32(i32 %103, i32 %104)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %26, align 4
  %107 = load i32, i32* %30, align 4
  %108 = call i32 @_mm_and_si128(i32 %106, i32 %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %31, align 4
  %111 = call i32 @_mm_add_epi32(i32 %109, i32 %110)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = call i32 @_mm_slli_epi32(i32 %112, i32 6)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %26, align 4
  %115 = load i32, i32* %32, align 4
  %116 = call i32 @_mm_and_si128(i32 %114, i32 %115)
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %33, align 4
  %119 = call i32 @_mm_add_epi32(i32 %117, i32 %118)
  store i32 %119, i32* %19, align 4
  %120 = load i32, i32* %19, align 4
  %121 = call i32 @_mm_slli_epi32(i32 %120, i32 9)
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %26, align 4
  %123 = load i32, i32* %34, align 4
  %124 = call i32 @_mm_and_si128(i32 %122, i32 %123)
  store i32 %124, i32* %20, align 4
  %125 = load i32, i32* %20, align 4
  %126 = call i32 @_mm_srli_epi32(i32 %125, i32 15)
  store i32 %126, i32* %20, align 4
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %35, align 4
  %129 = call i32 @_mm_sub_epi32(i32 %127, i32 %128)
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* %36, align 4
  %132 = call i32 @_mm_andnot_si128(i32 %130, i32 %131)
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %19, align 4
  store i32 %133, i32* %21, align 4
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* %20, align 4
  %136 = call i32 @_mm_or_si128(i32 %134, i32 %135)
  store i32 %136, i32* %21, align 4
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* %17, align 4
  %139 = call i32 @_mm_or_si128(i32 %137, i32 %138)
  store i32 %139, i32* %21, align 4
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* %18, align 4
  %142 = call i32 @_mm_or_si128(i32 %140, i32 %141)
  store i32 %142, i32* %21, align 4
  %143 = load i32*, i32** %15, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32* %147, i32** %22, align 8
  %148 = load i32*, i32** %22, align 8
  %149 = load i32, i32* %21, align 4
  %150 = call i32 @_mm_store_si128(i32* %148, i32 %149)
  %151 = load i32, i32* %27, align 4
  %152 = load i32, i32* %28, align 4
  %153 = call i32 @_mm_and_si128(i32 %151, i32 %152)
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @_mm_slli_epi32(i32 %154, i32 3)
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %29, align 4
  %158 = call i32 @_mm_add_epi32(i32 %156, i32 %157)
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* %27, align 4
  %160 = load i32, i32* %30, align 4
  %161 = call i32 @_mm_and_si128(i32 %159, i32 %160)
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* %18, align 4
  %163 = load i32, i32* %31, align 4
  %164 = call i32 @_mm_add_epi32(i32 %162, i32 %163)
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = call i32 @_mm_slli_epi32(i32 %165, i32 6)
  store i32 %166, i32* %18, align 4
  %167 = load i32, i32* %27, align 4
  %168 = load i32, i32* %32, align 4
  %169 = call i32 @_mm_and_si128(i32 %167, i32 %168)
  store i32 %169, i32* %19, align 4
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %33, align 4
  %172 = call i32 @_mm_add_epi32(i32 %170, i32 %171)
  store i32 %172, i32* %19, align 4
  %173 = load i32, i32* %19, align 4
  %174 = call i32 @_mm_slli_epi32(i32 %173, i32 9)
  store i32 %174, i32* %19, align 4
  %175 = load i32, i32* %27, align 4
  %176 = load i32, i32* %34, align 4
  %177 = call i32 @_mm_and_si128(i32 %175, i32 %176)
  store i32 %177, i32* %20, align 4
  %178 = load i32, i32* %20, align 4
  %179 = call i32 @_mm_srli_epi32(i32 %178, i32 15)
  store i32 %179, i32* %20, align 4
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %35, align 4
  %182 = call i32 @_mm_sub_epi32(i32 %180, i32 %181)
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* %36, align 4
  %185 = call i32 @_mm_andnot_si128(i32 %183, i32 %184)
  store i32 %185, i32* %20, align 4
  %186 = load i32, i32* %19, align 4
  store i32 %186, i32* %21, align 4
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* %20, align 4
  %189 = call i32 @_mm_or_si128(i32 %187, i32 %188)
  store i32 %189, i32* %21, align 4
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %17, align 4
  %192 = call i32 @_mm_or_si128(i32 %190, i32 %191)
  store i32 %192, i32* %21, align 4
  %193 = load i32, i32* %21, align 4
  %194 = load i32, i32* %18, align 4
  %195 = call i32 @_mm_or_si128(i32 %193, i32 %194)
  store i32 %195, i32* %21, align 4
  %196 = load i32*, i32** %15, align 8
  %197 = load i32, i32* %16, align 4
  %198 = add nsw i32 %197, 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 %199, 4
  %201 = getelementptr inbounds i32, i32* %196, i64 %200
  store i32* %201, i32** %22, align 8
  %202 = load i32*, i32** %22, align 8
  %203 = load i32, i32* %21, align 4
  %204 = call i32 @_mm_store_si128(i32* %202, i32 %203)
  br label %205

205:                                              ; preds = %74
  %206 = load i32, i32* %16, align 4
  %207 = add nsw i32 %206, 8
  store i32 %207, i32* %16, align 4
  br label %70

208:                                              ; preds = %70
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %53

212:                                              ; preds = %53
  ret void
}

declare dso_local i32 @_mm_load_si128(i32*) #1

declare dso_local i32 @_mm_setzero_si128(...) #1

declare dso_local i32 @_mm_unpacklo_epi16(i32, i32) #1

declare dso_local i32 @_mm_unpackhi_epi16(i32, i32) #1

declare dso_local i32 @_mm_set1_epi32(i32) #1

declare dso_local i32 @_mm_and_si128(i32, i32) #1

declare dso_local i32 @_mm_slli_epi32(i32, i32) #1

declare dso_local i32 @_mm_add_epi32(i32, i32) #1

declare dso_local i32 @_mm_srli_epi32(i32, i32) #1

declare dso_local i32 @_mm_sub_epi32(i32, i32) #1

declare dso_local i32 @_mm_andnot_si128(i32, i32) #1

declare dso_local i32 @_mm_or_si128(i32, i32) #1

declare dso_local i32 @_mm_store_si128(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
