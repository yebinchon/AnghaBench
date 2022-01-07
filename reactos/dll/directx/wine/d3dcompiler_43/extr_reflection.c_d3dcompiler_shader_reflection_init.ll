; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_d3dcompiler_shader_reflection_init.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_d3dcompiler_shader_reflection_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dcompiler_shader_reflection = type { i32, i32, i8*, i8*, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.dxbc = type { i32, %struct.dxbc_section* }
%struct.dxbc_section = type { i32, i32, i32 }

@d3dcompiler_shader_reflection_vtbl = common dso_local global i32 0, align 4
@d3dcompiler_shader_reflection_type_compare = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to parse reflection\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to parse RDEF section.\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to allocate ISGN memory.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to parse section ISGN.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to allocate OSGN memory.\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to parse section OSGN.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to allocate PCSG memory.\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to parse section PCSG.\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to parse SHDR section.\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Failed to parse section STAT.\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Unhandled section %s!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dcompiler_shader_reflection*, i8*, i32)* @d3dcompiler_shader_reflection_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dcompiler_shader_reflection_init(%struct.d3dcompiler_shader_reflection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dcompiler_shader_reflection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dxbc, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dxbc_section*, align 8
  store %struct.d3dcompiler_shader_reflection* %0, %struct.d3dcompiler_shader_reflection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %13 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %12, i32 0, i32 6
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32* @d3dcompiler_shader_reflection_vtbl, i32** %14, align 8
  %15 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %16 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %18 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %17, i32 0, i32 5
  %19 = load i32, i32* @d3dcompiler_shader_reflection_type_compare, align 4
  %20 = call i32 @wine_rb_init(i32* %18, i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @dxbc_parse(i8* %21, i32 %22, %struct.dxbc* %8)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @FAILED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = call i32 @WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  br label %192

30:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %181, %30
  %32 = load i32, i32* %10, align 4
  %33 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %36, label %184

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.dxbc, %struct.dxbc* %8, i32 0, i32 1
  %38 = load %struct.dxbc_section*, %struct.dxbc_section** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %38, i64 %40
  store %struct.dxbc_section* %41, %struct.dxbc_section** %11, align 8
  %42 = load %struct.dxbc_section*, %struct.dxbc_section** %11, align 8
  %43 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %174 [
    i32 131, label %45
    i32 135, label %60
    i32 134, label %88
    i32 133, label %88
    i32 132, label %116
    i32 129, label %144
    i32 130, label %144
    i32 128, label %159
  ]

45:                                               ; preds = %36
  %46 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %47 = load %struct.dxbc_section*, %struct.dxbc_section** %11, align 8
  %48 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dxbc_section*, %struct.dxbc_section** %11, align 8
  %51 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @d3dcompiler_parse_rdef(%struct.d3dcompiler_shader_reflection* %46, i32 %49, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @FAILED(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %187

59:                                               ; preds = %45
  br label %180

60:                                               ; preds = %36
  %61 = call i32 (...) @GetProcessHeap()
  %62 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %63 = call i8* @HeapAlloc(i32 %61, i32 %62, i32 1)
  %64 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %65 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %67 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %66, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %72, i32* %9, align 4
  br label %187

73:                                               ; preds = %60
  %74 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %75 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.dxbc_section*, %struct.dxbc_section** %11, align 8
  %78 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %79 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @d3dcompiler_parse_signature(i8* %76, %struct.dxbc_section* %77, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i64 @FAILED(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %187

87:                                               ; preds = %73
  br label %180

88:                                               ; preds = %36, %36
  %89 = call i32 (...) @GetProcessHeap()
  %90 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %91 = call i8* @HeapAlloc(i32 %89, i32 %90, i32 1)
  %92 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %93 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %95 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %88
  %99 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %100, i32* %9, align 4
  br label %187

101:                                              ; preds = %88
  %102 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %103 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %102, i32 0, i32 3
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.dxbc_section*, %struct.dxbc_section** %11, align 8
  %106 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %107 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @d3dcompiler_parse_signature(i8* %104, %struct.dxbc_section* %105, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i64 @FAILED(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %187

115:                                              ; preds = %101
  br label %180

116:                                              ; preds = %36
  %117 = call i32 (...) @GetProcessHeap()
  %118 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %119 = call i8* @HeapAlloc(i32 %117, i32 %118, i32 1)
  %120 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %121 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %123 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %116
  %127 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %128 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %128, i32* %9, align 4
  br label %187

129:                                              ; preds = %116
  %130 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %131 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = load %struct.dxbc_section*, %struct.dxbc_section** %11, align 8
  %134 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %135 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @d3dcompiler_parse_signature(i8* %132, %struct.dxbc_section* %133, i32 %136)
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i64 @FAILED(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %129
  %142 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %187

143:                                              ; preds = %129
  br label %180

144:                                              ; preds = %36, %36
  %145 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %146 = load %struct.dxbc_section*, %struct.dxbc_section** %11, align 8
  %147 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.dxbc_section*, %struct.dxbc_section** %11, align 8
  %150 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @d3dcompiler_parse_shdr(%struct.d3dcompiler_shader_reflection* %145, i32 %148, i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i64 @FAILED(i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %144
  %157 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %187

158:                                              ; preds = %144
  br label %180

159:                                              ; preds = %36
  %160 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %161 = load %struct.dxbc_section*, %struct.dxbc_section** %11, align 8
  %162 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.dxbc_section*, %struct.dxbc_section** %11, align 8
  %165 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @d3dcompiler_parse_stat(%struct.d3dcompiler_shader_reflection* %160, i32 %163, i32 %166)
  store i32 %167, i32* %9, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i64 @FAILED(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %159
  %172 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %187

173:                                              ; preds = %159
  br label %180

174:                                              ; preds = %36
  %175 = load %struct.dxbc_section*, %struct.dxbc_section** %11, align 8
  %176 = getelementptr inbounds %struct.dxbc_section, %struct.dxbc_section* %175, i32 0, i32 0
  %177 = bitcast i32* %176 to i8*
  %178 = call i32 @debugstr_an(i8* %177, i32 4)
  %179 = call i32 @FIXME(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %174, %173, %158, %143, %115, %87, %59
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %10, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %31

184:                                              ; preds = %31
  %185 = call i32 @dxbc_destroy(%struct.dxbc* %8)
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %4, align 4
  br label %192

187:                                              ; preds = %171, %156, %141, %126, %113, %98, %85, %70, %57
  %188 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %189 = call i32 @reflection_cleanup(%struct.d3dcompiler_shader_reflection* %188)
  %190 = call i32 @dxbc_destroy(%struct.dxbc* %8)
  %191 = load i32, i32* %9, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %187, %184, %27
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @wine_rb_init(i32*, i32) #1

declare dso_local i32 @dxbc_parse(i8*, i32, %struct.dxbc*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @d3dcompiler_parse_rdef(%struct.d3dcompiler_shader_reflection*, i32, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @d3dcompiler_parse_signature(i8*, %struct.dxbc_section*, i32) #1

declare dso_local i32 @d3dcompiler_parse_shdr(%struct.d3dcompiler_shader_reflection*, i32, i32) #1

declare dso_local i32 @d3dcompiler_parse_stat(%struct.d3dcompiler_shader_reflection*, i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_an(i8*, i32) #1

declare dso_local i32 @dxbc_destroy(%struct.dxbc*) #1

declare dso_local i32 @reflection_cleanup(%struct.d3dcompiler_shader_reflection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
