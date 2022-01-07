; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_add_instruction.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_add_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwriter_shader = type { i32, i32, %struct.instruction** }
%struct.instruction = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@INSTRARRAY_INITIAL_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Failed to allocate the shader instruction array\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to grow the shader instruction array\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"More instructions than allocated. This should not happen\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_instruction(%struct.bwriter_shader* %0, %struct.instruction* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwriter_shader*, align 8
  %5 = alloca %struct.instruction*, align 8
  %6 = alloca %struct.instruction**, align 8
  store %struct.bwriter_shader* %0, %struct.bwriter_shader** %4, align 8
  store %struct.instruction* %1, %struct.instruction** %5, align 8
  %7 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %8 = icmp ne %struct.bwriter_shader* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %3, align 4
  br label %98

11:                                               ; preds = %2
  %12 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %13 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = load i32, i32* @INSTRARRAY_INITIAL_SIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = trunc i64 %19 to i32
  %21 = call %struct.instruction** @d3dcompiler_alloc(i32 %20)
  %22 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %23 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %22, i32 0, i32 2
  store %struct.instruction** %21, %struct.instruction*** %23, align 8
  %24 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %25 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %24, i32 0, i32 2
  %26 = load %struct.instruction**, %struct.instruction*** %25, align 8
  %27 = icmp ne %struct.instruction** %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = call i32 @ERR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %98

31:                                               ; preds = %16
  %32 = load i32, i32* @INSTRARRAY_INITIAL_SIZE, align 4
  %33 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %34 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %83

35:                                               ; preds = %11
  %36 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %37 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %40 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %35
  %44 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %45 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %44, i32 0, i32 2
  %46 = load %struct.instruction**, %struct.instruction*** %45, align 8
  %47 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %48 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = mul i64 8, %50
  %52 = mul i64 %51, 2
  %53 = trunc i64 %52 to i32
  %54 = call %struct.instruction** @d3dcompiler_realloc(%struct.instruction** %46, i32 %53)
  store %struct.instruction** %54, %struct.instruction*** %6, align 8
  %55 = load %struct.instruction**, %struct.instruction*** %6, align 8
  %56 = icmp ne %struct.instruction** %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %43
  %58 = call i32 @ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %3, align 4
  br label %98

60:                                               ; preds = %43
  %61 = load %struct.instruction**, %struct.instruction*** %6, align 8
  %62 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %63 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %62, i32 0, i32 2
  store %struct.instruction** %61, %struct.instruction*** %63, align 8
  %64 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %65 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %66, 2
  %68 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %69 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %82

70:                                               ; preds = %35
  %71 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %72 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %75 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = call i32 @ERR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  br label %98

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %60
  br label %83

83:                                               ; preds = %82, %31
  %84 = load %struct.instruction*, %struct.instruction** %5, align 8
  %85 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %86 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %85, i32 0, i32 2
  %87 = load %struct.instruction**, %struct.instruction*** %86, align 8
  %88 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %89 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.instruction*, %struct.instruction** %87, i64 %91
  store %struct.instruction* %84, %struct.instruction** %92, align 8
  %93 = load %struct.bwriter_shader*, %struct.bwriter_shader** %4, align 8
  %94 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @TRUE, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %83, %78, %57, %28, %9
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.instruction** @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local %struct.instruction** @d3dcompiler_realloc(%struct.instruction**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
