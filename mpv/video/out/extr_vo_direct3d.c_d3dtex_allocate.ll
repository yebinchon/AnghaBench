; ModuleID = '/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_d3dtex_allocate.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/extr_vo_direct3d.c_d3dtex_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.d3dtex = type { i32, i32, i32, i32, i32, i32 }

@D3DPOOL_SYSTEMMEM = common dso_local global i32 0, align 4
@D3DPOOL_MANAGED = common dso_local global i32 0, align 4
@D3DPOOL_DEFAULT = common dso_local global i32 0, align 4
@D3DPOOL_SCRATCH = common dso_local global i32 0, align 4
@D3DUSAGE_DYNAMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Allocating %dx%d texture in system RAM failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Allocating %dx%d texture in video RAM failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.d3dtex*, i32, i32, i32)* @d3dtex_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dtex_allocate(%struct.TYPE_6__* %0, %struct.d3dtex* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.d3dtex*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.d3dtex* %1, %struct.d3dtex** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = load %struct.d3dtex*, %struct.d3dtex** %8, align 8
  %18 = call i32 @d3dtex_release(%struct.TYPE_6__* %16, %struct.d3dtex* %17)
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.d3dtex*, %struct.d3dtex** %8, align 8
  %21 = getelementptr inbounds %struct.d3dtex, %struct.d3dtex* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.d3dtex*, %struct.d3dtex** %8, align 8
  %24 = getelementptr inbounds %struct.d3dtex, %struct.d3dtex* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = call i32 @d3d_fix_texture_size(%struct.TYPE_6__* %27, i32* %12, i32* %13)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* @D3DPOOL_SYSTEMMEM, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %47 [
    i32 1, label %39
    i32 2, label %41
    i32 3, label %43
    i32 4, label %45
  ]

39:                                               ; preds = %5
  %40 = load i32, i32* @D3DPOOL_MANAGED, align 4
  store i32 %40, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %47

41:                                               ; preds = %5
  %42 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  store i32 %42, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %47

43:                                               ; preds = %5
  %44 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  store i32 %44, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %47

45:                                               ; preds = %5
  %46 = load i32, i32* @D3DPOOL_SCRATCH, align 4
  store i32 %46, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %47

47:                                               ; preds = %5, %45, %43, %41, %39
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @D3DUSAGE_DYNAMIC, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.d3dtex*, %struct.d3dtex** %8, align 8
  %57 = getelementptr inbounds %struct.d3dtex, %struct.d3dtex* %56, i32 0, i32 5
  %58 = call i32 @IDirect3DDevice9_CreateTexture(i32 %50, i32 %51, i32 %52, i32 1, i32 %53, i32 %54, i32 %55, i32* %57, i32* null)
  %59 = call i64 @FAILED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @MP_ERR(%struct.TYPE_6__* %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  br label %96

66:                                               ; preds = %47
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %66
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @D3DUSAGE_DYNAMIC, align 4
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @D3DPOOL_DEFAULT, align 4
  %78 = load %struct.d3dtex*, %struct.d3dtex** %8, align 8
  %79 = getelementptr inbounds %struct.d3dtex, %struct.d3dtex* %78, i32 0, i32 4
  %80 = call i32 @IDirect3DDevice9_CreateTexture(i32 %72, i32 %73, i32 %74, i32 1, i32 %75, i32 %76, i32 %77, i32* %79, i32* null)
  %81 = call i64 @FAILED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %69
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @MP_ERR(%struct.TYPE_6__* %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %86)
  br label %96

88:                                               ; preds = %69
  br label %89

89:                                               ; preds = %88, %66
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.d3dtex*, %struct.d3dtex** %8, align 8
  %92 = getelementptr inbounds %struct.d3dtex, %struct.d3dtex* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.d3dtex*, %struct.d3dtex** %8, align 8
  %95 = getelementptr inbounds %struct.d3dtex, %struct.d3dtex* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  store i32 1, i32* %6, align 4
  br label %100

96:                                               ; preds = %83, %61
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = load %struct.d3dtex*, %struct.d3dtex** %8, align 8
  %99 = call i32 @d3dtex_release(%struct.TYPE_6__* %97, %struct.d3dtex* %98)
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @d3dtex_release(%struct.TYPE_6__*, %struct.d3dtex*) #1

declare dso_local i32 @d3d_fix_texture_size(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @IDirect3DDevice9_CreateTexture(i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_6__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
