; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_dxgl_reset.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_context_dxinterop.c_dxgl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ra_ctx = type { %struct.TYPE_3__*, %struct.priv* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.priv = type { i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Couldn't reset device: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Couldn't recreate Direct3D objects after reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Direct3D device reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ra_ctx*)* @dxgl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dxgl_reset(%struct.ra_ctx* %0) #0 {
  %2 = alloca %struct.ra_ctx*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ra_ctx* %0, %struct.ra_ctx** %2, align 8
  %6 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %6, i32 0, i32 1
  %8 = load %struct.priv*, %struct.priv** %7, align 8
  store %struct.priv* %8, %struct.priv** %3, align 8
  %9 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.priv*, %struct.priv** %3, align 8
  %15 = getelementptr inbounds %struct.priv, %struct.priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %42

18:                                               ; preds = %1
  %19 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.priv*, %struct.priv** %3, align 8
  %25 = getelementptr inbounds %struct.priv, %struct.priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %18
  %29 = load %struct.priv*, %struct.priv** %3, align 8
  %30 = getelementptr inbounds %struct.priv, %struct.priv* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.priv*, %struct.priv** %3, align 8
  %33 = getelementptr inbounds %struct.priv, %struct.priv* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.priv*, %struct.priv** %3, align 8
  %38 = getelementptr inbounds %struct.priv, %struct.priv* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %100

42:                                               ; preds = %36, %28, %18, %1
  %43 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %44 = call i32 @d3d_size_dependent_destroy(%struct.ra_ctx* %43)
  %45 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %46 = call i32 @fill_presentparams(%struct.ra_ctx* %45, i32* %5)
  %47 = load %struct.priv*, %struct.priv** %3, align 8
  %48 = getelementptr inbounds %struct.priv, %struct.priv* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @IDirect3DDevice9Ex_ResetEx(i32 %49, i32* %5, i32* null)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i64 @FAILED(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %42
  %55 = load %struct.priv*, %struct.priv** %3, align 8
  %56 = getelementptr inbounds %struct.priv, %struct.priv* %55, i32 0, i32 4
  store i32 1, i32* %56, align 8
  %57 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @mp_HRESULT_to_str(i32 %60)
  %62 = call i32 (%struct.TYPE_3__*, i8*, ...) @MP_ERR(%struct.TYPE_3__* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %100

63:                                               ; preds = %42
  %64 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %65 = call i64 @d3d_size_dependent_create(%struct.ra_ctx* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.priv*, %struct.priv** %3, align 8
  %69 = getelementptr inbounds %struct.priv, %struct.priv* %68, i32 0, i32 4
  store i32 1, i32* %69, align 8
  %70 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = call i32 (%struct.TYPE_3__*, i8*, ...) @MP_ERR(%struct.TYPE_3__* %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %100

74:                                               ; preds = %63
  %75 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %76 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = call i32 @MP_VERBOSE(%struct.TYPE_3__* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %80 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.priv*, %struct.priv** %3, align 8
  %85 = getelementptr inbounds %struct.priv, %struct.priv* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.ra_ctx*, %struct.ra_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.ra_ctx, %struct.ra_ctx* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.priv*, %struct.priv** %3, align 8
  %92 = getelementptr inbounds %struct.priv, %struct.priv* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.priv*, %struct.priv** %3, align 8
  %94 = getelementptr inbounds %struct.priv, %struct.priv* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.priv*, %struct.priv** %3, align 8
  %97 = getelementptr inbounds %struct.priv, %struct.priv* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load %struct.priv*, %struct.priv** %3, align 8
  %99 = getelementptr inbounds %struct.priv, %struct.priv* %98, i32 0, i32 4
  store i32 0, i32* %99, align 8
  br label %100

100:                                              ; preds = %74, %67, %54, %41
  ret void
}

declare dso_local i32 @d3d_size_dependent_destroy(%struct.ra_ctx*) #1

declare dso_local i32 @fill_presentparams(%struct.ra_ctx*, i32*) #1

declare dso_local i32 @IDirect3DDevice9Ex_ResetEx(i32, i32*, i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @MP_ERR(%struct.TYPE_3__*, i8*, ...) #1

declare dso_local i32 @mp_HRESULT_to_str(i32) #1

declare dso_local i64 @d3d_size_dependent_create(%struct.ra_ctx*) #1

declare dso_local i32 @MP_VERBOSE(%struct.TYPE_3__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
