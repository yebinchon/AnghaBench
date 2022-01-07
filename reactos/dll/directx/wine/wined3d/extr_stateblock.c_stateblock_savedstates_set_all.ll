; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_stateblock.c_stateblock_savedstates_set_all.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_stateblock.c_stateblock_savedstates_set_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_saved_states = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HIGHEST_TRANSFORMSTATE = common dso_local global i64 0, align 8
@WINEHIGHEST_RENDER_STATE = common dso_local global i64 0, align 8
@MAX_TEXTURES = common dso_local global i32 0, align 4
@MAX_COMBINED_SAMPLERS = common dso_local global i32 0, align 4
@MAX_CLIP_DISTANCES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_saved_states*, i32, i32)* @stateblock_savedstates_set_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stateblock_savedstates_set_all(%struct.wined3d_saved_states* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wined3d_saved_states*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wined3d_saved_states* %0, %struct.wined3d_saved_states** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %9 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %11 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %10, i32 0, i32 1
  store i32 1, i32* %11, align 4
  %12 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %13 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %12, i32 0, i32 2
  store i32 1, i32* %13, align 8
  %14 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %15 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %14, i32 0, i32 3
  store i32 1, i32* %15, align 4
  %16 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %17 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %16, i32 0, i32 4
  store i32 1, i32* %17, align 8
  %18 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %18, i32 0, i32 5
  store i32 1, i32* %19, align 4
  %20 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %21 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %20, i32 0, i32 6
  store i32 1, i32* %21, align 8
  %22 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %23 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %22, i32 0, i32 7
  store i32 65535, i32* %23, align 4
  %24 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %25 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %24, i32 0, i32 8
  store i32 65535, i32* %25, align 8
  %26 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %27 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %26, i32 0, i32 9
  store i32 1048575, i32* %27, align 4
  %28 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %29 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %28, i32 0, i32 20
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* @HIGHEST_TRANSFORMSTATE, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @stateblock_set_bits(i32 %30, i64 %32)
  %34 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %35 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %34, i32 0, i32 19
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @WINEHIGHEST_RENDER_STATE, align 8
  %38 = add nsw i64 %37, 1
  %39 = call i32 @stateblock_set_bits(i32 %36, i64 %38)
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %51, %3
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @MAX_TEXTURES, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %46 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %45, i32 0, i32 10
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 262143, i32* %50, align 4
  br label %51

51:                                               ; preds = %44
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %40

54:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %66, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MAX_COMBINED_SAMPLERS, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %61 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %60, i32 0, i32 11
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 16382, i32* %65, align 4
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %55

69:                                               ; preds = %55
  %70 = load i32, i32* @MAX_CLIP_DISTANCES, align 4
  %71 = shl i32 1, %70
  %72 = sub i32 %71, 1
  %73 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %74 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %73, i32 0, i32 12
  store i32 %72, i32* %74, align 8
  %75 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %76 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %75, i32 0, i32 13
  store i32 65535, i32* %76, align 4
  %77 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %78 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %77, i32 0, i32 14
  store i32 65535, i32* %78, align 8
  %79 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %80 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %79, i32 0, i32 15
  store i32 65535, i32* %80, align 4
  %81 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %82 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %81, i32 0, i32 16
  store i32 65535, i32* %82, align 8
  %83 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %84 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %83, i32 0, i32 18
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @TRUE, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 4, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32 @memset(i32 %85, i32 %86, i32 %90)
  %92 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %4, align 8
  %93 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %92, i32 0, i32 17
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 4, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @memset(i32 %94, i32 %95, i32 %99)
  ret void
}

declare dso_local i32 @stateblock_set_bits(i32, i64) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
