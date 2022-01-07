; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_copy_b5g6r5_tex.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_game-capture.c_copy_b5g6r5_tex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.game_capture = type { i32, i32, i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.game_capture*, i32, i32*, i32)* @copy_b5g6r5_tex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_b5g6r5_tex(%struct.game_capture* %0, i32 %1, i32* %2, i32 %3) #0 {
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
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.game_capture* %0, %struct.game_capture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %33 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %34 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %33, i32 0, i32 3
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %9, align 8
  %40 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %41 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  %43 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %44 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.game_capture*, %struct.game_capture** %5, align 8
  %47 = getelementptr inbounds %struct.game_capture, %struct.game_capture* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %180, %4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %183

53:                                               ; preds = %49
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32* %59, i32** %14, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %13, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  store i32* %65, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %66

66:                                               ; preds = %176, %53
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %179

70:                                               ; preds = %66
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %16, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 4
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32* %75, i32** %22, align 8
  %76 = load i32*, i32** %22, align 8
  %77 = call i32 @_mm_load_si128(i32* %76)
  store i32 %77, i32* %23, align 4
  %78 = call i32 (...) @_mm_setzero_si128()
  store i32 %78, i32* %24, align 4
  %79 = load i32, i32* %23, align 4
  %80 = load i32, i32* %24, align 4
  %81 = call i32 @_mm_unpacklo_epi16(i32 %79, i32 %80)
  store i32 %81, i32* %25, align 4
  %82 = load i32, i32* %23, align 4
  %83 = load i32, i32* %24, align 4
  %84 = call i32 @_mm_unpackhi_epi16(i32 %82, i32 %83)
  store i32 %84, i32* %26, align 4
  %85 = call i32 @_mm_set1_epi32(i32 31)
  store i32 %85, i32* %27, align 4
  %86 = call i32 @_mm_set1_epi32(i32 3)
  store i32 %86, i32* %28, align 4
  %87 = call i32 @_mm_set1_epi32(i32 2016)
  store i32 %87, i32* %29, align 4
  %88 = call i32 @_mm_set1_epi32(i32 8)
  store i32 %88, i32* %30, align 4
  %89 = call i32 @_mm_set1_epi32(i32 63488)
  store i32 %89, i32* %31, align 4
  %90 = call i32 @_mm_set1_epi32(i32 768)
  store i32 %90, i32* %32, align 4
  %91 = load i32, i32* %25, align 4
  %92 = load i32, i32* %27, align 4
  %93 = call i32 @_mm_and_si128(i32 %91, i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @_mm_slli_epi32(i32 %94, i32 3)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %28, align 4
  %98 = call i32 @_mm_add_epi32(i32 %96, i32 %97)
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* %29, align 4
  %101 = call i32 @_mm_and_si128(i32 %99, i32 %100)
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %30, align 4
  %104 = call i32 @_mm_add_epi32(i32 %102, i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = call i32 @_mm_slli_epi32(i32 %105, i32 5)
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %25, align 4
  %108 = load i32, i32* %31, align 4
  %109 = call i32 @_mm_and_si128(i32 %107, i32 %108)
  store i32 %109, i32* %19, align 4
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %32, align 4
  %112 = call i32 @_mm_add_epi32(i32 %110, i32 %111)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = call i32 @_mm_slli_epi32(i32 %113, i32 8)
  store i32 %114, i32* %19, align 4
  %115 = call i32 @_mm_set1_epi32(i32 -16777216)
  store i32 %115, i32* %20, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @_mm_or_si128(i32 %116, i32 %117)
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %18, align 4
  %121 = call i32 @_mm_or_si128(i32 %119, i32 %120)
  store i32 %121, i32* %20, align 4
  %122 = load i32, i32* %20, align 4
  %123 = load i32, i32* %19, align 4
  %124 = call i32 @_mm_or_si128(i32 %122, i32 %123)
  store i32 %124, i32* %20, align 4
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %16, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %127, 4
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32* %129, i32** %21, align 8
  %130 = load i32*, i32** %21, align 8
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @_mm_store_si128(i32* %130, i32 %131)
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* %27, align 4
  %135 = call i32 @_mm_and_si128(i32 %133, i32 %134)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @_mm_slli_epi32(i32 %136, i32 3)
  store i32 %137, i32* %17, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* %28, align 4
  %140 = call i32 @_mm_add_epi32(i32 %138, i32 %139)
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %26, align 4
  %142 = load i32, i32* %29, align 4
  %143 = call i32 @_mm_and_si128(i32 %141, i32 %142)
  store i32 %143, i32* %18, align 4
  %144 = load i32, i32* %18, align 4
  %145 = load i32, i32* %30, align 4
  %146 = call i32 @_mm_add_epi32(i32 %144, i32 %145)
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %18, align 4
  %148 = call i32 @_mm_slli_epi32(i32 %147, i32 5)
  store i32 %148, i32* %18, align 4
  %149 = load i32, i32* %26, align 4
  %150 = load i32, i32* %31, align 4
  %151 = call i32 @_mm_and_si128(i32 %149, i32 %150)
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* %32, align 4
  %154 = call i32 @_mm_add_epi32(i32 %152, i32 %153)
  store i32 %154, i32* %19, align 4
  %155 = load i32, i32* %19, align 4
  %156 = call i32 @_mm_slli_epi32(i32 %155, i32 8)
  store i32 %156, i32* %19, align 4
  %157 = call i32 @_mm_set1_epi32(i32 -16777216)
  store i32 %157, i32* %20, align 4
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @_mm_or_si128(i32 %158, i32 %159)
  store i32 %160, i32* %20, align 4
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* %18, align 4
  %163 = call i32 @_mm_or_si128(i32 %161, i32 %162)
  store i32 %163, i32* %20, align 4
  %164 = load i32, i32* %20, align 4
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @_mm_or_si128(i32 %164, i32 %165)
  store i32 %166, i32* %20, align 4
  %167 = load i32*, i32** %15, align 8
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, 4
  %170 = sext i32 %169 to i64
  %171 = mul i64 %170, 4
  %172 = getelementptr inbounds i32, i32* %167, i64 %171
  store i32* %172, i32** %21, align 8
  %173 = load i32*, i32** %21, align 8
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @_mm_store_si128(i32* %173, i32 %174)
  br label %176

176:                                              ; preds = %70
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %177, 8
  store i32 %178, i32* %16, align 4
  br label %66

179:                                              ; preds = %66
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  br label %49

183:                                              ; preds = %49
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

declare dso_local i32 @_mm_or_si128(i32, i32) #1

declare dso_local i32 @_mm_store_si128(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
