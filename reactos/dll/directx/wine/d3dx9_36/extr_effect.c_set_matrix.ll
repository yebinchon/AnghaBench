; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_set_matrix.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_set_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx_parameter = type { i32, float*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32** }

@D3DXPT_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d3dx_parameter*, %struct.TYPE_5__*)* @set_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_matrix(%struct.d3dx_parameter* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca %struct.d3dx_parameter*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.d3dx_parameter* %0, %struct.d3dx_parameter** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %7 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %8 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @D3DXPT_FLOAT, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %70

12:                                               ; preds = %2
  %13 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %14 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %33

17:                                               ; preds = %12
  %18 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %19 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %18, i32 0, i32 1
  %20 = load float*, float** %19, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %26 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = mul nsw i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memcpy(float* %20, i32** %24, i32 %31)
  br label %69

33:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %65, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %37 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %34
  %41 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %42 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %41, i32 0, i32 1
  %43 = load float*, float** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %46 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %43, i64 %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %59 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = call i32 @memcpy(float* %50, i32** %57, i32 %63)
  br label %65

65:                                               ; preds = %40
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %34

68:                                               ; preds = %34
  br label %69

69:                                               ; preds = %68, %17
  br label %122

70:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %119, %70
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %74 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %122

77:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %115, %77
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %81 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %118

84:                                               ; preds = %78
  %85 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %86 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %85, i32 0, i32 1
  %87 = load float*, float** %86, align 8
  %88 = bitcast float* %87 to i32*
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %91 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = mul nsw i32 %89, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %88, i64 %94
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %3, align 8
  %100 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* @D3DXPT_FLOAT, align 4
  %114 = call i32 @set_number(i32* %98, i32 %101, i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %84
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %78

118:                                              ; preds = %78
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %71

122:                                              ; preds = %69, %71
  ret void
}

declare dso_local i32 @memcpy(float*, i32**, i32) #1

declare dso_local i32 @set_number(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
