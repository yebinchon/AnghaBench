; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_stateblock.c_stateblock_savedstates_set_vertex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_stateblock.c_stateblock_savedstates_set_vertex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_saved_states = type { i32, i32, i32*, i32*, i32*, i32, i32, i32 }

@vertex_states_render = common dso_local global i32* null, align 8
@vertex_states_texture = common dso_local global i32* null, align 8
@MAX_TEXTURES = common dso_local global i32 0, align 4
@vertex_states_sampler = common dso_local global i32* null, align 8
@MAX_COMBINED_SAMPLERS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_saved_states*, i32)* @stateblock_savedstates_set_vertex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stateblock_savedstates_set_vertex(%struct.wined3d_saved_states* %0, i32 %1) #0 {
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
  %11 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %12 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %36, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** @vertex_states_render, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load i32*, i32** @vertex_states_render, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 31
  %26 = shl i32 1, %25
  %27 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %28 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 5
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %26
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %18
  %37 = load i32, i32* %7, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %13

39:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %7, align 4
  %42 = load i32*, i32** @vertex_states_texture, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load i32*, i32** @vertex_states_texture, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %40

57:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @MAX_TEXTURES, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %65 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %58

73:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %88, %73
  %75 = load i32, i32* %7, align 4
  %76 = load i32*, i32** @vertex_states_sampler, align 8
  %77 = call i32 @ARRAY_SIZE(i32* %76)
  %78 = icmp ult i32 %75, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load i32*, i32** @vertex_states_sampler, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 1, %84
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %7, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %74

91:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %104, %91
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @MAX_COMBINED_SAMPLERS, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %99 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %98, i32 0, i32 4
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %92

107:                                              ; preds = %92
  %108 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %109 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %108, i32 0, i32 5
  store i32 65535, i32* %109, align 8
  %110 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %111 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %110, i32 0, i32 6
  store i32 65535, i32* %111, align 4
  %112 = load %struct.wined3d_saved_states*, %struct.wined3d_saved_states** %3, align 8
  %113 = getelementptr inbounds %struct.wined3d_saved_states, %struct.wined3d_saved_states* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @TRUE, align 4
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 4, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memset(i32 %114, i32 %115, i32 %119)
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
