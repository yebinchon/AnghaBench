; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_record_shader_phase.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_shader.c_shader_record_shader_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.wined3d_shader_phase*, i32, i32, %struct.wined3d_shader_phase*, i32, %struct.wined3d_shader_phase* }
%struct.wined3d_shader_phase = type { i32*, i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.wined3d_shader_instruction = type { i32 }

@WINED3D_SHADER_TYPE_HULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unexpected shader type %#x.\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Multiple control point phases.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Unexpected opcode %s.\0A\00", align 1
@WINED3D_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wined3d_shader*, %struct.wined3d_shader_phase**, %struct.wined3d_shader_instruction*, i32*, i32*)* @shader_record_shader_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shader_record_shader_phase(%struct.wined3d_shader* %0, %struct.wined3d_shader_phase** %1, %struct.wined3d_shader_instruction* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wined3d_shader*, align 8
  %8 = alloca %struct.wined3d_shader_phase**, align 8
  %9 = alloca %struct.wined3d_shader_instruction*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.wined3d_shader_phase*, align 8
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %7, align 8
  store %struct.wined3d_shader_phase** %1, %struct.wined3d_shader_phase*** %8, align 8
  store %struct.wined3d_shader_instruction* %2, %struct.wined3d_shader_instruction** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.wined3d_shader_phase**, %struct.wined3d_shader_phase*** %8, align 8
  %14 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %13, align 8
  store %struct.wined3d_shader_phase* %14, %struct.wined3d_shader_phase** %12, align 8
  %15 = icmp ne %struct.wined3d_shader_phase* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load i32*, i32** %11, align 8
  %18 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %12, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader_phase, %struct.wined3d_shader_phase* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.wined3d_shader_phase**, %struct.wined3d_shader_phase*** %8, align 8
  store %struct.wined3d_shader_phase* null, %struct.wined3d_shader_phase** %20, align 8
  br label %21

21:                                               ; preds = %16, %5
  %22 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %23 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WINED3D_SHADER_TYPE_HULL, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %31 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i32, i32* @E_FAIL, align 4
  store i32 %36, i32* %6, align 4
  br label %167

37:                                               ; preds = %21
  %38 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %9, align 8
  %39 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %153 [
    i32 130, label %41
    i32 129, label %75
    i32 128, label %114
  ]

41:                                               ; preds = %37
  %42 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %43 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 6
  %47 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %46, align 8
  %48 = icmp ne %struct.wined3d_shader_phase* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %41
  %50 = call i32 @FIXME(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  %56 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %55, align 8
  %57 = call i32 @heap_free(%struct.wined3d_shader_phase* %56)
  br label %58

58:                                               ; preds = %49, %41
  %59 = call %struct.wined3d_shader_phase* @heap_alloc_zero(i32 16)
  %60 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %61 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 6
  store %struct.wined3d_shader_phase* %59, %struct.wined3d_shader_phase** %64, align 8
  %65 = icmp ne %struct.wined3d_shader_phase* %59, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %67, i32* %6, align 4
  br label %167

68:                                               ; preds = %58
  %69 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %70 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 6
  %74 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %73, align 8
  store %struct.wined3d_shader_phase* %74, %struct.wined3d_shader_phase** %12, align 8
  br label %160

75:                                               ; preds = %37
  %76 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %77 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 4
  %81 = bitcast %struct.wined3d_shader_phase** %80 to i8**
  %82 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %83 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 5
  %87 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %88 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @wined3d_array_reserve(i8** %81, i32* %86, i32 %93, i32 16)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %75
  %97 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %97, i32* %6, align 4
  br label %167

98:                                               ; preds = %75
  %99 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %100 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  %104 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %103, align 8
  %105 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %106 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds %struct.wined3d_shader_phase, %struct.wined3d_shader_phase* %104, i64 %112
  store %struct.wined3d_shader_phase* %113, %struct.wined3d_shader_phase** %12, align 8
  br label %160

114:                                              ; preds = %37
  %115 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %116 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = bitcast %struct.wined3d_shader_phase** %119 to i8**
  %121 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %122 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %127 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  %133 = call i32 @wined3d_array_reserve(i8** %120, i32* %125, i32 %132, i32 16)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %114
  %136 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %136, i32* %6, align 4
  br label %167

137:                                              ; preds = %114
  %138 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %139 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %142, align 8
  %144 = load %struct.wined3d_shader*, %struct.wined3d_shader** %7, align 8
  %145 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds %struct.wined3d_shader_phase, %struct.wined3d_shader_phase* %143, i64 %151
  store %struct.wined3d_shader_phase* %152, %struct.wined3d_shader_phase** %12, align 8
  br label %160

153:                                              ; preds = %37
  %154 = load %struct.wined3d_shader_instruction*, %struct.wined3d_shader_instruction** %9, align 8
  %155 = getelementptr inbounds %struct.wined3d_shader_instruction, %struct.wined3d_shader_instruction* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @debug_d3dshaderinstructionhandler(i32 %156)
  %158 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %157)
  %159 = load i32, i32* @E_FAIL, align 4
  store i32 %159, i32* %6, align 4
  br label %167

160:                                              ; preds = %137, %98, %68
  %161 = load i32*, i32** %10, align 8
  %162 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %12, align 8
  %163 = getelementptr inbounds %struct.wined3d_shader_phase, %struct.wined3d_shader_phase* %162, i32 0, i32 0
  store i32* %161, i32** %163, align 8
  %164 = load %struct.wined3d_shader_phase*, %struct.wined3d_shader_phase** %12, align 8
  %165 = load %struct.wined3d_shader_phase**, %struct.wined3d_shader_phase*** %8, align 8
  store %struct.wined3d_shader_phase* %164, %struct.wined3d_shader_phase** %165, align 8
  %166 = load i32, i32* @WINED3D_OK, align 4
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %160, %153, %135, %96, %66, %29
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @heap_free(%struct.wined3d_shader_phase*) #1

declare dso_local %struct.wined3d_shader_phase* @heap_alloc_zero(i32) #1

declare dso_local i32 @wined3d_array_reserve(i8**, i32*, i32, i32) #1

declare dso_local i64 @debug_d3dshaderinstructionhandler(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
