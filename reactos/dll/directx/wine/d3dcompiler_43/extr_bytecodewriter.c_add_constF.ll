; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_add_constF.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_add_constF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwriter_shader = type { i32, %struct.constant** }
%struct.constant = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { float }

@.str = private unnamed_addr constant [36 x i8] c"Failed to grow the constants array\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to allocate the constants array\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to allocate a new constant\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_constF(%struct.bwriter_shader* %0, i32 %1, float %2, float %3, float %4, float %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bwriter_shader*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca %struct.constant*, align 8
  %15 = alloca %struct.constant**, align 8
  store %struct.bwriter_shader* %0, %struct.bwriter_shader** %8, align 8
  store i32 %1, i32* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  %16 = load %struct.bwriter_shader*, %struct.bwriter_shader** %8, align 8
  %17 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %6
  %21 = load %struct.bwriter_shader*, %struct.bwriter_shader** %8, align 8
  %22 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %21, i32 0, i32 1
  %23 = load %struct.constant**, %struct.constant*** %22, align 8
  %24 = load %struct.bwriter_shader*, %struct.bwriter_shader** %8, align 8
  %25 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = mul i64 8, %28
  %30 = trunc i64 %29 to i32
  %31 = call %struct.constant** @d3dcompiler_realloc(%struct.constant** %23, i32 %30)
  store %struct.constant** %31, %struct.constant*** %15, align 8
  %32 = load %struct.constant**, %struct.constant*** %15, align 8
  %33 = icmp ne %struct.constant** %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %20
  %35 = call i32 @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %7, align 4
  br label %104

37:                                               ; preds = %20
  %38 = load %struct.constant**, %struct.constant*** %15, align 8
  %39 = load %struct.bwriter_shader*, %struct.bwriter_shader** %8, align 8
  %40 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %39, i32 0, i32 1
  store %struct.constant** %38, %struct.constant*** %40, align 8
  br label %54

41:                                               ; preds = %6
  %42 = call i8* @d3dcompiler_alloc(i32 8)
  %43 = bitcast i8* %42 to %struct.constant**
  %44 = load %struct.bwriter_shader*, %struct.bwriter_shader** %8, align 8
  %45 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %44, i32 0, i32 1
  store %struct.constant** %43, %struct.constant*** %45, align 8
  %46 = load %struct.bwriter_shader*, %struct.bwriter_shader** %8, align 8
  %47 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %46, i32 0, i32 1
  %48 = load %struct.constant**, %struct.constant*** %47, align 8
  %49 = icmp ne %struct.constant** %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = call i32 @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @FALSE, align 4
  store i32 %52, i32* %7, align 4
  br label %104

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %37
  %55 = call i8* @d3dcompiler_alloc(i32 16)
  %56 = bitcast i8* %55 to %struct.constant*
  store %struct.constant* %56, %struct.constant** %14, align 8
  %57 = load %struct.constant*, %struct.constant** %14, align 8
  %58 = icmp ne %struct.constant* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %7, align 4
  br label %104

62:                                               ; preds = %54
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.constant*, %struct.constant** %14, align 8
  %65 = getelementptr inbounds %struct.constant, %struct.constant* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load float, float* %10, align 4
  %67 = load %struct.constant*, %struct.constant** %14, align 8
  %68 = getelementptr inbounds %struct.constant, %struct.constant* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store float %66, float* %71, align 4
  %72 = load float, float* %11, align 4
  %73 = load %struct.constant*, %struct.constant** %14, align 8
  %74 = getelementptr inbounds %struct.constant, %struct.constant* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store float %72, float* %77, align 4
  %78 = load float, float* %12, align 4
  %79 = load %struct.constant*, %struct.constant** %14, align 8
  %80 = getelementptr inbounds %struct.constant, %struct.constant* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store float %78, float* %83, align 4
  %84 = load float, float* %13, align 4
  %85 = load %struct.constant*, %struct.constant** %14, align 8
  %86 = getelementptr inbounds %struct.constant, %struct.constant* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store float %84, float* %89, align 4
  %90 = load %struct.constant*, %struct.constant** %14, align 8
  %91 = load %struct.bwriter_shader*, %struct.bwriter_shader** %8, align 8
  %92 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %91, i32 0, i32 1
  %93 = load %struct.constant**, %struct.constant*** %92, align 8
  %94 = load %struct.bwriter_shader*, %struct.bwriter_shader** %8, align 8
  %95 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.constant*, %struct.constant** %93, i64 %97
  store %struct.constant* %90, %struct.constant** %98, align 8
  %99 = load %struct.bwriter_shader*, %struct.bwriter_shader** %8, align 8
  %100 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %62, %59, %50, %34
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local %struct.constant** @d3dcompiler_realloc(%struct.constant**, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i8* @d3dcompiler_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
