; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_record_declaration.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_bytecodewriter.c_record_declaration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwriter_shader = type { i32, i32, %struct.declaration*, %struct.declaration* }
%struct.declaration = type { i64, i64, i64, i64, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Error allocating declarations array\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Declaration of register %u already exists, writemask match 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Error reallocating declarations array\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @record_declaration(%struct.bwriter_shader* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.bwriter_shader*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.declaration**, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.declaration*, align 8
  store %struct.bwriter_shader* %0, %struct.bwriter_shader** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %22 = load %struct.bwriter_shader*, %struct.bwriter_shader** %10, align 8
  %23 = icmp ne %struct.bwriter_shader* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %8
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %9, align 8
  br label %167

26:                                               ; preds = %8
  %27 = load i64, i64* %14, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.bwriter_shader*, %struct.bwriter_shader** %10, align 8
  %31 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %30, i32 0, i32 0
  store i32* %31, i32** %18, align 8
  %32 = load %struct.bwriter_shader*, %struct.bwriter_shader** %10, align 8
  %33 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %32, i32 0, i32 3
  store %struct.declaration** %33, %struct.declaration*** %19, align 8
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.bwriter_shader*, %struct.bwriter_shader** %10, align 8
  %36 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %35, i32 0, i32 1
  store i32* %36, i32** %18, align 8
  %37 = load %struct.bwriter_shader*, %struct.bwriter_shader** %10, align 8
  %38 = getelementptr inbounds %struct.bwriter_shader, %struct.bwriter_shader* %37, i32 0, i32 2
  store %struct.declaration** %38, %struct.declaration*** %19, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32*, i32** %18, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %39
  %44 = call %struct.declaration* @d3dcompiler_alloc(i32 48)
  %45 = load %struct.declaration**, %struct.declaration*** %19, align 8
  store %struct.declaration* %44, %struct.declaration** %45, align 8
  %46 = load %struct.declaration**, %struct.declaration*** %19, align 8
  %47 = load %struct.declaration*, %struct.declaration** %46, align 8
  %48 = icmp ne %struct.declaration* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = call i32 @ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %51 = load i64, i64* @FALSE, align 8
  store i64 %51, i64* %9, align 8
  br label %167

52:                                               ; preds = %43
  br label %114

53:                                               ; preds = %39
  store i32 0, i32* %20, align 4
  br label %54

54:                                               ; preds = %93, %53
  %55 = load i32, i32* %20, align 4
  %56 = load i32*, i32** %18, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %59, label %96

59:                                               ; preds = %54
  %60 = load %struct.declaration**, %struct.declaration*** %19, align 8
  %61 = load %struct.declaration*, %struct.declaration** %60, align 8
  %62 = load i32, i32* %20, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.declaration, %struct.declaration* %61, i64 %63
  %65 = getelementptr inbounds %struct.declaration, %struct.declaration* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %15, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %59
  %70 = load %struct.declaration**, %struct.declaration*** %19, align 8
  %71 = load %struct.declaration*, %struct.declaration** %70, align 8
  %72 = load i32, i32* %20, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.declaration, %struct.declaration* %71, i64 %73
  %75 = getelementptr inbounds %struct.declaration, %struct.declaration* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %16, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %69
  %81 = load i64, i64* %15, align 8
  %82 = load %struct.declaration**, %struct.declaration*** %19, align 8
  %83 = load %struct.declaration*, %struct.declaration** %82, align 8
  %84 = load i32, i32* %20, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.declaration, %struct.declaration* %83, i64 %85
  %87 = getelementptr inbounds %struct.declaration, %struct.declaration* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %16, align 8
  %90 = and i64 %88, %89
  %91 = call i32 @WARN(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i64 %81, i64 %90)
  br label %92

92:                                               ; preds = %80, %69, %59
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %20, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %20, align 4
  br label %54

96:                                               ; preds = %54
  %97 = load %struct.declaration**, %struct.declaration*** %19, align 8
  %98 = load %struct.declaration*, %struct.declaration** %97, align 8
  %99 = load i32*, i32** %18, align 8
  %100 = load i32, i32* %99, align 4
  %101 = add i32 %100, 1
  %102 = zext i32 %101 to i64
  %103 = mul i64 48, %102
  %104 = trunc i64 %103 to i32
  %105 = call %struct.declaration* @d3dcompiler_realloc(%struct.declaration* %98, i32 %104)
  store %struct.declaration* %105, %struct.declaration** %21, align 8
  %106 = load %struct.declaration*, %struct.declaration** %21, align 8
  %107 = icmp ne %struct.declaration* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %96
  %109 = call i32 @ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i64, i64* @FALSE, align 8
  store i64 %110, i64* %9, align 8
  br label %167

111:                                              ; preds = %96
  %112 = load %struct.declaration*, %struct.declaration** %21, align 8
  %113 = load %struct.declaration**, %struct.declaration*** %19, align 8
  store %struct.declaration* %112, %struct.declaration** %113, align 8
  br label %114

114:                                              ; preds = %111, %52
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.declaration**, %struct.declaration*** %19, align 8
  %117 = load %struct.declaration*, %struct.declaration** %116, align 8
  %118 = load i32*, i32** %18, align 8
  %119 = load i32, i32* %118, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.declaration, %struct.declaration* %117, i64 %120
  %122 = getelementptr inbounds %struct.declaration, %struct.declaration* %121, i32 0, i32 5
  store i64 %115, i64* %122, align 8
  %123 = load i64, i64* %12, align 8
  %124 = load %struct.declaration**, %struct.declaration*** %19, align 8
  %125 = load %struct.declaration*, %struct.declaration** %124, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = load i32, i32* %126, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.declaration, %struct.declaration* %125, i64 %128
  %130 = getelementptr inbounds %struct.declaration, %struct.declaration* %129, i32 0, i32 4
  store i64 %123, i64* %130, align 8
  %131 = load i64, i64* %15, align 8
  %132 = load %struct.declaration**, %struct.declaration*** %19, align 8
  %133 = load %struct.declaration*, %struct.declaration** %132, align 8
  %134 = load i32*, i32** %18, align 8
  %135 = load i32, i32* %134, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.declaration, %struct.declaration* %133, i64 %136
  %138 = getelementptr inbounds %struct.declaration, %struct.declaration* %137, i32 0, i32 0
  store i64 %131, i64* %138, align 8
  %139 = load i64, i64* %13, align 8
  %140 = load %struct.declaration**, %struct.declaration*** %19, align 8
  %141 = load %struct.declaration*, %struct.declaration** %140, align 8
  %142 = load i32*, i32** %18, align 8
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.declaration, %struct.declaration* %141, i64 %144
  %146 = getelementptr inbounds %struct.declaration, %struct.declaration* %145, i32 0, i32 3
  store i64 %139, i64* %146, align 8
  %147 = load i64, i64* %16, align 8
  %148 = load %struct.declaration**, %struct.declaration*** %19, align 8
  %149 = load %struct.declaration*, %struct.declaration** %148, align 8
  %150 = load i32*, i32** %18, align 8
  %151 = load i32, i32* %150, align 4
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %struct.declaration, %struct.declaration* %149, i64 %152
  %154 = getelementptr inbounds %struct.declaration, %struct.declaration* %153, i32 0, i32 1
  store i64 %147, i64* %154, align 8
  %155 = load i64, i64* %17, align 8
  %156 = load %struct.declaration**, %struct.declaration*** %19, align 8
  %157 = load %struct.declaration*, %struct.declaration** %156, align 8
  %158 = load i32*, i32** %18, align 8
  %159 = load i32, i32* %158, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.declaration, %struct.declaration* %157, i64 %160
  %162 = getelementptr inbounds %struct.declaration, %struct.declaration* %161, i32 0, i32 2
  store i64 %155, i64* %162, align 8
  %163 = load i32*, i32** %18, align 8
  %164 = load i32, i32* %163, align 4
  %165 = add i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = load i64, i64* @TRUE, align 8
  store i64 %166, i64* %9, align 8
  br label %167

167:                                              ; preds = %114, %108, %49, %24
  %168 = load i64, i64* %9, align 8
  ret i64 %168
}

declare dso_local %struct.declaration* @d3dcompiler_alloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @WARN(i8*, i64, i64) #1

declare dso_local %struct.declaration* @d3dcompiler_realloc(%struct.declaration*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
