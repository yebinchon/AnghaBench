; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_stateblock.c_stateblock_savedstates_set_pixel.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_stateblock.c_stateblock_savedstates_set_pixel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_saved_states = type { i32, i32*, i32*, i32*, i32, i32, i32 }

@pixel_states_render = common dso_local global i32* null, align 8
@pixel_states_texture = common dso_local global i32* null, align 8
@MAX_TEXTURES = common dso_local global i32 0, align 4
@pixel_states_sampler = common dso_local global i32* null, align 8
@MAX_COMBINED_SAMPLERS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_saved_states*, i32)* @stateblock_savedstates_set_pixel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stateblock_savedstates_set_pixel(%struct.wined3d_saved_states* %0, i32 %1) #0 {
  %3 = alloca %struct.wined3d_saved_states*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wined3d_saved_states* %0, %struct.wined3d_saved_states** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %10 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %34, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32*, i32** @pixel_states_render, align 8
  %14 = call i32 @ARRAY_SIZE(i32* %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load i32*, i32** @pixel_states_render, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 31
  %24 = shl i32 1, %23
  %25 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %26 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 5
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %24
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %16
  %35 = load i32, i32* %7, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %11

37:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** @pixel_states_texture, align 8
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i32*, i32** @pixel_states_texture, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %7, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %38

55:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %68, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @MAX_TEXTURES, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %63 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %56

71:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %86, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** @pixel_states_sampler, align 8
  %75 = call i32 @ARRAY_SIZE(i32* %74)
  %76 = icmp ult i32 %73, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load i32*, i32** @pixel_states_sampler, align 8
  %79 = load i32, i32* %7, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 1, %82
  %84 = load i32, i32* %6, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %7, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %72

89:                                               ; preds = %72
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %102, %89
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @MAX_COMBINED_SAMPLERS, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  %96 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %97 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %90

105:                                              ; preds = %90
  %106 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %107 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %106, i32 0, i32 4
  store i32 65535, i32* %107, align 8
  %108 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %109 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %108, i32 0, i32 5
  store i32 65535, i32* %109, align 4
  %110 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %111 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = mul i64 4, %115
  %117 = trunc i64 %116 to i32
  %118 = call i32 @memset(i32 %112, i32 %113, i32 %117)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
