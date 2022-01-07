; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_d3dcompiler_parse_variables.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_d3dcompiler_parse_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dcompiler_shader_reflection_constant_buffer = type { i32, %struct.d3dcompiler_shader_reflection_variable*, %struct.TYPE_4__* }
%struct.d3dcompiler_shader_reflection_variable = type { i32, i32, i32, i32, i32, i32, %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32 }

@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to allocate variables memory.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@d3dcompiler_shader_reflection_variable_vtbl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to copy name.\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Variable name: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Variable offset: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Variable size: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Variable flags: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Variable type offset: %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Failed to get type.\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Variable default value offset: %x\0A\00", align 1
@D3DCOMPILER_SHADER_TARGET_VERSION_MASK = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dcompiler_shader_reflection_constant_buffer*, i8*, i32, i8*)* @d3dcompiler_parse_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dcompiler_parse_variables(%struct.d3dcompiler_shader_reflection_constant_buffer* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.d3dcompiler_shader_reflection_constant_buffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.d3dcompiler_shader_reflection_variable*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.d3dcompiler_shader_reflection_variable*, align 8
  %14 = alloca i32, align 4
  store %struct.d3dcompiler_shader_reflection_constant_buffer* %0, %struct.d3dcompiler_shader_reflection_constant_buffer** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = call i32 (...) @GetProcessHeap()
  %16 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %17 = load %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.d3dcompiler_shader_reflection_constant_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_constant_buffer, %struct.d3dcompiler_shader_reflection_constant_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 40
  %22 = trunc i64 %21 to i32
  %23 = call %struct.d3dcompiler_shader_reflection_variable* @HeapAlloc(i32 %15, i32 %16, i32 %22)
  store %struct.d3dcompiler_shader_reflection_variable* %23, %struct.d3dcompiler_shader_reflection_variable** %10, align 8
  %24 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %10, align 8
  %25 = icmp ne %struct.d3dcompiler_shader_reflection_variable* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %28, i32* %5, align 4
  br label %169

29:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %140, %29
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.d3dcompiler_shader_reflection_constant_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_constant_buffer, %struct.d3dcompiler_shader_reflection_constant_buffer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %143

36:                                               ; preds = %30
  %37 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %37, i64 %39
  store %struct.d3dcompiler_shader_reflection_variable* %40, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %41 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %42 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32* @d3dcompiler_shader_reflection_variable_vtbl, i32** %43, align 8
  %44 = load %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.d3dcompiler_shader_reflection_constant_buffer** %6, align 8
  %45 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %46 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %45, i32 0, i32 6
  store %struct.d3dcompiler_shader_reflection_constant_buffer* %44, %struct.d3dcompiler_shader_reflection_constant_buffer** %46, align 8
  %47 = call i32 @read_dword(i8** %9, i32* %14)
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %53 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %52, i32 0, i32 5
  %54 = call i32 @copy_name(i8* %51, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %36
  %57 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %58, i32* %12, align 4
  br label %148

59:                                               ; preds = %36
  %60 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %61 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @debugstr_a(i32 %62)
  %64 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %66 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %65, i32 0, i32 0
  %67 = call i32 @read_dword(i8** %9, i32* %66)
  %68 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %69 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %73 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %72, i32 0, i32 1
  %74 = call i32 @read_dword(i8** %9, i32* %73)
  %75 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %76 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  %79 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %80 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %79, i32 0, i32 2
  %81 = call i32 @read_dword(i8** %9, i32* %80)
  %82 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %83 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = call i32 @read_dword(i8** %9, i32* %14)
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %87)
  %89 = load %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.d3dcompiler_shader_reflection_constant_buffer** %6, align 8
  %90 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_constant_buffer, %struct.d3dcompiler_shader_reflection_constant_buffer* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @get_reflection_type(%struct.TYPE_4__* %91, i8* %92, i32 %93)
  %95 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %96 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 8
  %97 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %98 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %59
  %102 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %103 = load i32, i32* @E_FAIL, align 4
  store i32 %103, i32* %12, align 4
  br label %148

104:                                              ; preds = %59
  %105 = call i32 @read_dword(i8** %9, i32* %14)
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %106)
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %113 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %112, i32 0, i32 3
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %104
  %117 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %13, align 8
  %118 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  br label %121

120:                                              ; preds = %104
  br label %121

121:                                              ; preds = %120, %116
  %122 = phi i32 [ %119, %116 ], [ 0, %120 ]
  %123 = call i32 @copy_value(i8* %111, i32* %113, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %127, i32* %12, align 4
  br label %148

128:                                              ; preds = %121
  %129 = load %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.d3dcompiler_shader_reflection_constant_buffer** %6, align 8
  %130 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_constant_buffer, %struct.d3dcompiler_shader_reflection_constant_buffer* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @D3DCOMPILER_SHADER_TARGET_VERSION_MASK, align 4
  %135 = and i32 %133, %134
  %136 = icmp sge i32 %135, 1280
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = call i32 @skip_dword_unknown(i8** %9, i32 4)
  br label %139

139:                                              ; preds = %137, %128
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %11, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %30

143:                                              ; preds = %30
  %144 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %10, align 8
  %145 = load %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.d3dcompiler_shader_reflection_constant_buffer** %6, align 8
  %146 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_constant_buffer, %struct.d3dcompiler_shader_reflection_constant_buffer* %145, i32 0, i32 1
  store %struct.d3dcompiler_shader_reflection_variable* %144, %struct.d3dcompiler_shader_reflection_variable** %146, align 8
  %147 = load i32, i32* @S_OK, align 4
  store i32 %147, i32* %5, align 4
  br label %169

148:                                              ; preds = %125, %101, %56
  store i32 0, i32* %11, align 4
  br label %149

149:                                              ; preds = %161, %148
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.d3dcompiler_shader_reflection_constant_buffer*, %struct.d3dcompiler_shader_reflection_constant_buffer** %6, align 8
  %152 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_constant_buffer, %struct.d3dcompiler_shader_reflection_constant_buffer* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ult i32 %150, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %149
  %156 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %10, align 8
  %157 = load i32, i32* %11, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_variable, %struct.d3dcompiler_shader_reflection_variable* %156, i64 %158
  %160 = call i32 @free_variable(%struct.d3dcompiler_shader_reflection_variable* %159)
  br label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %11, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %149

164:                                              ; preds = %149
  %165 = call i32 (...) @GetProcessHeap()
  %166 = load %struct.d3dcompiler_shader_reflection_variable*, %struct.d3dcompiler_shader_reflection_variable** %10, align 8
  %167 = call i32 @HeapFree(i32 %165, i32 0, %struct.d3dcompiler_shader_reflection_variable* %166)
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %164, %143, %26
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local %struct.d3dcompiler_shader_reflection_variable* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @read_dword(i8**, i32*) #1

declare dso_local i32 @copy_name(i8*, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32 @get_reflection_type(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @copy_value(i8*, i32*, i32) #1

declare dso_local i32 @skip_dword_unknown(i8**, i32) #1

declare dso_local i32 @free_variable(%struct.d3dcompiler_shader_reflection_variable*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.d3dcompiler_shader_reflection_variable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
