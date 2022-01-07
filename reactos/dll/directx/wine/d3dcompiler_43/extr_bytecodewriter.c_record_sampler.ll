; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_record_sampler.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_record_sampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwriter_shader = type { i32, %struct.samplerdecl* }
%struct.samplerdecl = type { i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error allocating samplers array\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Sampler %u already declared\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error reallocating samplers array\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @record_sampler(%struct.bwriter_shader* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bwriter_shader*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.samplerdecl*, align 8
  store %struct.bwriter_shader* %0, %struct.bwriter_shader** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %13 = icmp ne %struct.bwriter_shader* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %5, align 4
  br label %115

16:                                               ; preds = %4
  %17 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %18 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %16
  %22 = call %struct.samplerdecl* @d3dcompiler_alloc(i32 24)
  %23 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %24 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %23, i32 0, i32 1
  store %struct.samplerdecl* %22, %struct.samplerdecl** %24, align 8
  %25 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %26 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %25, i32 0, i32 1
  %27 = load %struct.samplerdecl*, %struct.samplerdecl** %26, align 8
  %28 = icmp ne %struct.samplerdecl* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %5, align 4
  br label %115

32:                                               ; preds = %21
  br label %79

33:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %37 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %42 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %41, i32 0, i32 1
  %43 = load %struct.samplerdecl*, %struct.samplerdecl** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.samplerdecl, %struct.samplerdecl* %43, i64 %45
  %47 = getelementptr inbounds %struct.samplerdecl, %struct.samplerdecl* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %40
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %51, %40
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %10, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %34

58:                                               ; preds = %34
  %59 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %60 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %59, i32 0, i32 1
  %61 = load %struct.samplerdecl*, %struct.samplerdecl** %60, align 8
  %62 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %63 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = mul i64 24, %66
  %68 = trunc i64 %67 to i32
  %69 = call %struct.samplerdecl* @d3dcompiler_realloc(%struct.samplerdecl* %61, i32 %68)
  store %struct.samplerdecl* %69, %struct.samplerdecl** %11, align 8
  %70 = load %struct.samplerdecl*, %struct.samplerdecl** %11, align 8
  %71 = icmp ne %struct.samplerdecl* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %58
  %73 = call i32 @ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %5, align 4
  br label %115

75:                                               ; preds = %58
  %76 = load %struct.samplerdecl*, %struct.samplerdecl** %11, align 8
  %77 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %78 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %77, i32 0, i32 1
  store %struct.samplerdecl* %76, %struct.samplerdecl** %78, align 8
  br label %79

79:                                               ; preds = %75, %32
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %82 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %81, i32 0, i32 1
  %83 = load %struct.samplerdecl*, %struct.samplerdecl** %82, align 8
  %84 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %85 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.samplerdecl, %struct.samplerdecl* %83, i64 %87
  %89 = getelementptr inbounds %struct.samplerdecl, %struct.samplerdecl* %88, i32 0, i32 2
  store i64 %80, i64* %89, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %92 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %91, i32 0, i32 1
  %93 = load %struct.samplerdecl*, %struct.samplerdecl** %92, align 8
  %94 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %95 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.samplerdecl, %struct.samplerdecl* %93, i64 %97
  %99 = getelementptr inbounds %struct.samplerdecl, %struct.samplerdecl* %98, i32 0, i32 1
  store i64 %90, i64* %99, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %102 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %101, i32 0, i32 1
  %103 = load %struct.samplerdecl*, %struct.samplerdecl** %102, align 8
  %104 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %105 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.samplerdecl, %struct.samplerdecl* %103, i64 %107
  %109 = getelementptr inbounds %struct.samplerdecl, %struct.samplerdecl* %108, i32 0, i32 0
  store i64 %100, i64* %109, align 8
  %110 = load %struct.bwriter_shader*, %struct.bwriter_shader** %6, align 8
  %111 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add i32 %112, 1
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* @TRUE, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %79, %72, %29, %14
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local %struct.samplerdecl* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @WARN(i8*, i64) #1

declare dso_local %struct.samplerdecl* @d3dcompiler_realloc(%struct.samplerdecl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
