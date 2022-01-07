; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_constant.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_utils.c_debug_dump_ir_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlsl_ir_constant = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i32*, i64* }
%struct.TYPE_4__ = type { %struct.hlsl_type* }
%struct.hlsl_type = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%g \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Constants of type %s not supported\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hlsl_ir_constant*)* @debug_dump_ir_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @debug_dump_ir_constant(%struct.hlsl_ir_constant* %0) #0 {
  %2 = alloca %struct.hlsl_ir_constant*, align 8
  %3 = alloca %struct.hlsl_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hlsl_ir_constant* %0, %struct.hlsl_ir_constant** %2, align 8
  %6 = load %struct.hlsl_ir_constant*, %struct.hlsl_ir_constant** %2, align 8
  %7 = getelementptr inbounds %struct.hlsl_ir_constant, %struct.hlsl_ir_constant* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.hlsl_type*, %struct.hlsl_type** %8, align 8
  store %struct.hlsl_type* %9, %struct.hlsl_type** %3, align 8
  %10 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %11 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %1
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %147, %16
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %20 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %150

23:                                               ; preds = %17
  %24 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %25 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %136, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %34 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %139

37:                                               ; preds = %31
  %38 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %39 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %131 [
    i32 130, label %41
    i32 131, label %59
    i32 129, label %76
    i32 128, label %93
    i32 132, label %110
  ]

41:                                               ; preds = %37
  %42 = load %struct.hlsl_ir_constant*, %struct.hlsl_ir_constant** %2, align 8
  %43 = getelementptr inbounds %struct.hlsl_ir_constant, %struct.hlsl_ir_constant* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %49 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul i32 %47, %50
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %46, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = sitofp i64 %56 to double
  %58 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double %57)
  br label %135

59:                                               ; preds = %37
  %60 = load %struct.hlsl_ir_constant*, %struct.hlsl_ir_constant** %2, align 8
  %61 = getelementptr inbounds %struct.hlsl_ir_constant, %struct.hlsl_ir_constant* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %67 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = mul i32 %65, %68
  %70 = load i32, i32* %4, align 4
  %71 = add i32 %69, %70
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %64, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %135

76:                                               ; preds = %37
  %77 = load %struct.hlsl_ir_constant*, %struct.hlsl_ir_constant** %2, align 8
  %78 = getelementptr inbounds %struct.hlsl_ir_constant, %struct.hlsl_ir_constant* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %84 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul i32 %82, %85
  %87 = load i32, i32* %4, align 4
  %88 = add i32 %86, %87
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %81, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %135

93:                                               ; preds = %37
  %94 = load %struct.hlsl_ir_constant*, %struct.hlsl_ir_constant** %2, align 8
  %95 = getelementptr inbounds %struct.hlsl_ir_constant, %struct.hlsl_ir_constant* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %101 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = mul i32 %99, %102
  %104 = load i32, i32* %4, align 4
  %105 = add i32 %103, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %98, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  br label %135

110:                                              ; preds = %37
  %111 = load %struct.hlsl_ir_constant*, %struct.hlsl_ir_constant** %2, align 8
  %112 = getelementptr inbounds %struct.hlsl_ir_constant, %struct.hlsl_ir_constant* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %118 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = mul i32 %116, %119
  %121 = load i32, i32* %4, align 4
  %122 = add i32 %120, %121
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %115, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @FALSE, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)
  %130 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %129)
  br label %135

131:                                              ; preds = %37
  %132 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %133 = call i32 @debug_base_type(%struct.hlsl_type* %132)
  %134 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %131, %110, %93, %76, %59, %41
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %4, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %31

139:                                              ; preds = %31
  %140 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %141 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 1
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %139
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %5, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %5, align 4
  br label %17

150:                                              ; preds = %17
  %151 = load %struct.hlsl_type*, %struct.hlsl_type** %3, align 8
  %152 = getelementptr inbounds %struct.hlsl_type, %struct.hlsl_type* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 1
  br i1 %154, label %155, label %157

155:                                              ; preds = %150
  %156 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %150
  ret void
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debug_base_type(%struct.hlsl_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
