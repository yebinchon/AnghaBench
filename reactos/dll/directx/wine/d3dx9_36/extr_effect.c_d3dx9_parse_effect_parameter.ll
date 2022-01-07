; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_effect_parameter.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_effect_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_top_level_parameter = type { i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.d3dx_object = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Typedef offset: %#x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Value offset: %#x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Flags: %#x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Annotation count: %u.\0A\00", align 1
@D3D_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"Failed to parse type definition.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to parse value.\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"Failed to parse annotation.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.d3dx9_base_effect*, %struct.d3dx_top_level_parameter*, i8*, i8**, %struct.d3dx_object*)* @d3dx9_parse_effect_parameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3dx9_parse_effect_parameter(%struct.d3dx9_base_effect* %0, %struct.d3dx_top_level_parameter* %1, i8* %2, i8** %3, %struct.d3dx_object* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.d3dx9_base_effect*, align 8
  %8 = alloca %struct.d3dx_top_level_parameter*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.d3dx_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %7, align 8
  store %struct.d3dx_top_level_parameter* %1, %struct.d3dx_top_level_parameter** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store %struct.d3dx_object* %4, %struct.d3dx_object** %11, align 8
  %16 = load i8**, i8*** %10, align 8
  %17 = call i32 @read_dword(i8** %16, i32* %12)
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8* %23, i8** %15, align 8
  %24 = load i8**, i8*** %10, align 8
  %25 = call i32 @read_dword(i8** %24, i32* %12)
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i8**, i8*** %10, align 8
  %29 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %30 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @read_dword(i8** %28, i32* %31)
  %33 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %34 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i8**, i8*** %10, align 8
  %39 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %40 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %39, i32 0, i32 0
  %41 = call i32 @read_dword(i8** %38, i32* %40)
  %42 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %43 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  %46 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %7, align 8
  %47 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %48 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %47, i32 0, i32 2
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %51 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @d3dx9_parse_effect_typedef(%struct.d3dx9_base_effect* %46, %struct.TYPE_3__* %48, i8* %49, i8** %15, i32* null, i32 %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @D3D_OK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %5
  %59 = call i32 @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i64, i64* %13, align 8
  store i64 %60, i64* %6, align 8
  br label %175

61:                                               ; preds = %5
  %62 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %7, align 8
  %63 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %64 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %63, i32 0, i32 2
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load %struct.d3dx_object*, %struct.d3dx_object** %11, align 8
  %71 = call i64 @d3dx9_parse_init_value(%struct.d3dx9_base_effect* %62, %struct.TYPE_3__* %64, i8* %65, i8* %69, %struct.d3dx_object* %70)
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @D3D_OK, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %61
  %76 = call i32 @WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i64, i64* %13, align 8
  store i64 %77, i64* %6, align 8
  br label %175

78:                                               ; preds = %61
  %79 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %80 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %138

83:                                               ; preds = %78
  %84 = call i32 (...) @GetProcessHeap()
  %85 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %86 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %87 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = trunc i64 %90 to i32
  %92 = call i32* @HeapAlloc(i32 %84, i32 %85, i32 %91)
  %93 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %94 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %93, i32 0, i32 1
  store i32* %92, i32** %94, align 8
  %95 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %96 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %83
  %100 = call i32 @ERR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %101 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %101, i64* %13, align 8
  br label %140

102:                                              ; preds = %83
  store i32 0, i32* %14, align 4
  br label %103

103:                                              ; preds = %134, %102
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %106 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ult i32 %104, %107
  br i1 %108, label %109, label %137

109:                                              ; preds = %103
  %110 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %111 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i32 @param_set_magic_number(i32* %115)
  %117 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %7, align 8
  %118 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %119 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i8*, i8** %9, align 8
  %125 = load i8**, i8*** %10, align 8
  %126 = load %struct.d3dx_object*, %struct.d3dx_object** %11, align 8
  %127 = call i64 @d3dx9_parse_effect_annotation(%struct.d3dx9_base_effect* %117, i32* %123, i8* %124, i8** %125, %struct.d3dx_object* %126)
  store i64 %127, i64* %13, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load i64, i64* @D3D_OK, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %109
  %132 = call i32 @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %140

133:                                              ; preds = %109
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %14, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %103

137:                                              ; preds = %103
  br label %138

138:                                              ; preds = %137, %78
  %139 = load i64, i64* @D3D_OK, align 8
  store i64 %139, i64* %6, align 8
  br label %175

140:                                              ; preds = %131, %99
  %141 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %142 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %173

145:                                              ; preds = %140
  store i32 0, i32* %14, align 4
  br label %146

146:                                              ; preds = %162, %145
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %149 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ult i32 %147, %150
  br i1 %151, label %152, label %165

152:                                              ; preds = %146
  %153 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %154 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* @FALSE, align 4
  %160 = load i32, i32* @FALSE, align 4
  %161 = call i32 @free_parameter(i32* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %152
  %163 = load i32, i32* %14, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %146

165:                                              ; preds = %146
  %166 = call i32 (...) @GetProcessHeap()
  %167 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %168 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @HeapFree(i32 %166, i32 0, i32* %169)
  %171 = load %struct.d3dx_top_level_parameter*, %struct.d3dx_top_level_parameter** %8, align 8
  %172 = getelementptr inbounds %struct.d3dx_top_level_parameter, %struct.d3dx_top_level_parameter* %171, i32 0, i32 1
  store i32* null, i32** %172, align 8
  br label %173

173:                                              ; preds = %165, %140
  %174 = load i64, i64* %13, align 8
  store i64 %174, i64* %6, align 8
  br label %175

175:                                              ; preds = %173, %138, %75, %58
  %176 = load i64, i64* %6, align 8
  ret i64 %176
}

declare dso_local i32 @read_dword(i8**, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @d3dx9_parse_effect_typedef(%struct.d3dx9_base_effect*, %struct.TYPE_3__*, i8*, i8**, i32*, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i64 @d3dx9_parse_init_value(%struct.d3dx9_base_effect*, %struct.TYPE_3__*, i8*, i8*, %struct.d3dx_object*) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @param_set_magic_number(i32*) #1

declare dso_local i64 @d3dx9_parse_effect_annotation(%struct.d3dx9_base_effect*, i32*, i8*, i8**, %struct.d3dx_object*) #1

declare dso_local i32 @free_parameter(i32*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
