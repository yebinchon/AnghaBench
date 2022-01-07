; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_state.c_prune_invalid_states.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_state.c_prune_invalid_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.StateEntry = type { i8*, i64 }
%struct.wined3d_gl_info = type { i32 }
%struct.wined3d_d3d_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@MAX_TEXTURES = common dso_local global i64 0, align 8
@WINED3D_HIGHEST_TEXTURE_STATE = common dso_local global i32 0, align 4
@state_undefined = common dso_local global i8* null, align 8
@WINED3D_TS_TEXTURE0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.StateEntry*, %struct.wined3d_gl_info*, %struct.wined3d_d3d_info*)* @prune_invalid_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prune_invalid_states(%struct.StateEntry* %0, %struct.wined3d_gl_info* %1, %struct.wined3d_d3d_info* %2) #0 {
  %4 = alloca %struct.StateEntry*, align 8
  %5 = alloca %struct.wined3d_gl_info*, align 8
  %6 = alloca %struct.wined3d_d3d_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.StateEntry* %0, %struct.StateEntry** %4, align 8
  store %struct.wined3d_gl_info* %1, %struct.wined3d_gl_info** %5, align 8
  store %struct.wined3d_d3d_info* %2, %struct.wined3d_d3d_info** %6, align 8
  %10 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %6, align 8
  %11 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @STATE_TEXTURESTAGE(i64 %13, i32 0)
  store i32 %14, i32* %7, align 4
  %15 = load i64, i64* @MAX_TEXTURES, align 8
  %16 = sub nsw i64 %15, 1
  %17 = load i32, i32* @WINED3D_HIGHEST_TEXTURE_STATE, align 4
  %18 = call i32 @STATE_TEXTURESTAGE(i64 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %36, %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  %25 = load %struct.StateEntry*, %struct.StateEntry** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %25, i64 %27
  %29 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i8*, i8** @state_undefined, align 8
  %31 = load %struct.StateEntry*, %struct.StateEntry** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %31, i64 %33
  %35 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %34, i32 0, i32 0
  store i8* %30, i8** %35, align 8
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %9, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %20

39:                                               ; preds = %20
  %40 = load i64, i64* @WINED3D_TS_TEXTURE0, align 8
  %41 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %6, align 8
  %42 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %40, %44
  %46 = call i32 @STATE_TRANSFORM(i64 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i64, i64* @WINED3D_TS_TEXTURE0, align 8
  %48 = load i64, i64* @MAX_TEXTURES, align 8
  %49 = add nsw i64 %47, %48
  %50 = sub nsw i64 %49, 1
  %51 = call i32 @STATE_TRANSFORM(i64 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %69, %39
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ule i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.StateEntry*, %struct.StateEntry** %4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %58, i64 %60
  %62 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load i8*, i8** @state_undefined, align 8
  %64 = load %struct.StateEntry*, %struct.StateEntry** %4, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %64, i64 %66
  %68 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %67, i32 0, i32 0
  store i8* %63, i8** %68, align 8
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load %struct.wined3d_d3d_info*, %struct.wined3d_d3d_info** %6, align 8
  %74 = getelementptr inbounds %struct.wined3d_d3d_info, %struct.wined3d_d3d_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @WINED3D_TS_WORLD_MATRIX(i32 %76)
  %78 = call i32 @STATE_TRANSFORM(i64 %77)
  store i32 %78, i32* %7, align 4
  %79 = call i64 @WINED3D_TS_WORLD_MATRIX(i32 255)
  %80 = call i32 @STATE_TRANSFORM(i64 %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %98, %72
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ule i32 %83, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load %struct.StateEntry*, %struct.StateEntry** %4, align 8
  %88 = load i32, i32* %9, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %87, i64 %89
  %91 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  %92 = load i8*, i8** @state_undefined, align 8
  %93 = load %struct.StateEntry*, %struct.StateEntry** %4, align 8
  %94 = load i32, i32* %9, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %93, i64 %95
  %97 = getelementptr inbounds %struct.StateEntry, %struct.StateEntry* %96, i32 0, i32 0
  store i8* %92, i8** %97, align 8
  br label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %9, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %82

101:                                              ; preds = %82
  ret void
}

declare dso_local i32 @STATE_TEXTURESTAGE(i64, i32) #1

declare dso_local i32 @STATE_TRANSFORM(i64) #1

declare dso_local i64 @WINED3D_TS_WORLD_MATRIX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
