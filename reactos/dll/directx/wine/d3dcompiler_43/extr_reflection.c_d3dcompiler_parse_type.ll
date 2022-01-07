; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_d3dcompiler_parse_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_d3dcompiler_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dcompiler_shader_reflection_type = type { %struct.d3dcompiler_shader_reflection_type_member*, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.d3dcompiler_shader_reflection_type_member = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Class %s, Type %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Rows %u, Columns %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Elements %u, Members %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Member Offset %u\0A\00", align 1
@D3DCOMPILER_SHADER_TARGET_VERSION_MASK = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to allocate type memory.\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to parse type members.\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Failed to copy name.\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Type name: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dcompiler_shader_reflection_type*, i8*, i32)* @d3dcompiler_parse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dcompiler_parse_type(%struct.d3dcompiler_shader_reflection_type* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dcompiler_shader_reflection_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.d3dcompiler_shader_reflection_type_member*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.d3dcompiler_shader_reflection_type* %0, %struct.d3dcompiler_shader_reflection_type** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  store i8* %19, i8** %8, align 8
  store %struct.d3dcompiler_shader_reflection_type_member* null, %struct.d3dcompiler_shader_reflection_type_member** %12, align 8
  %20 = load %struct.d3dcompiler_shader_reflection_type*, %struct.d3dcompiler_shader_reflection_type** %5, align 8
  %21 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type, %struct.d3dcompiler_shader_reflection_type* %20, i32 0, i32 3
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %10, align 8
  %22 = call i32 @read_dword(i8** %8, i32* %9)
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 65535
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = ashr i32 %27, 16
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @debug_d3dcompiler_shader_variable_class(i32 %33)
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @debug_d3dcompiler_shader_variable_type(i32 %37)
  %39 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %38)
  %40 = call i32 @read_dword(i8** %8, i32* %9)
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 65535
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %9, align 4
  %46 = ashr i32 %45, 16
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  %56 = call i32 @read_dword(i8** %8, i32* %9)
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, 65535
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = ashr i32 %61, 16
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %70)
  %72 = call i32 @read_dword(i8** %8, i32* %14)
  %73 = load i32, i32* %14, align 4
  %74 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %73)
  %75 = load %struct.d3dcompiler_shader_reflection_type*, %struct.d3dcompiler_shader_reflection_type** %5, align 8
  %76 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type, %struct.d3dcompiler_shader_reflection_type* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @D3DCOMPILER_SHADER_TARGET_VERSION_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp sge i32 %81, 1280
  br i1 %82, label %83, label %85

83:                                               ; preds = %3
  %84 = call i32 @skip_dword_unknown(i8** %8, i32 4)
  br label %85

85:                                               ; preds = %83, %3
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %136

90:                                               ; preds = %85
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8* %94, i8** %15, align 8
  %95 = call i32 (...) @GetProcessHeap()
  %96 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 4, %100
  %102 = trunc i64 %101 to i32
  %103 = call %struct.d3dcompiler_shader_reflection_type_member* @HeapAlloc(i32 %95, i32 %96, i32 %102)
  store %struct.d3dcompiler_shader_reflection_type_member* %103, %struct.d3dcompiler_shader_reflection_type_member** %12, align 8
  %104 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %12, align 8
  %105 = icmp ne %struct.d3dcompiler_shader_reflection_type_member* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %90
  %107 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %108, i32* %4, align 4
  br label %197

109:                                              ; preds = %90
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %132, %109
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = icmp ult i32 %111, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %110
  %117 = load %struct.d3dcompiler_shader_reflection_type*, %struct.d3dcompiler_shader_reflection_type** %5, align 8
  %118 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type, %struct.d3dcompiler_shader_reflection_type* %117, i32 0, i32 2
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %12, align 8
  %121 = load i32, i32* %11, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type_member, %struct.d3dcompiler_shader_reflection_type_member* %120, i64 %122
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @d3dcompiler_parse_type_members(%struct.TYPE_4__* %119, %struct.d3dcompiler_shader_reflection_type_member* %123, i8* %124, i8** %15)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @S_OK, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %176

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %110

135:                                              ; preds = %110
  br label %136

136:                                              ; preds = %135, %85
  %137 = load %struct.d3dcompiler_shader_reflection_type*, %struct.d3dcompiler_shader_reflection_type** %5, align 8
  %138 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type, %struct.d3dcompiler_shader_reflection_type* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @D3DCOMPILER_SHADER_TARGET_VERSION_MASK, align 4
  %143 = and i32 %141, %142
  %144 = icmp sge i32 %143, 1280
  br i1 %144, label %145, label %171

145:                                              ; preds = %136
  %146 = call i32 @read_dword(i8** %8, i32* %7)
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load %struct.d3dcompiler_shader_reflection_type*, %struct.d3dcompiler_shader_reflection_type** %5, align 8
  %152 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type, %struct.d3dcompiler_shader_reflection_type* %151, i32 0, i32 1
  %153 = call i32 @copy_name(i8* %150, i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %145
  %156 = call i32 @ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %157 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %12, align 8
  %158 = call i32 @heap_free(%struct.d3dcompiler_shader_reflection_type_member* %157)
  %159 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %159, i32* %4, align 4
  br label %197

160:                                              ; preds = %145
  %161 = load %struct.d3dcompiler_shader_reflection_type*, %struct.d3dcompiler_shader_reflection_type** %5, align 8
  %162 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type, %struct.d3dcompiler_shader_reflection_type* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 4
  %166 = load %struct.d3dcompiler_shader_reflection_type*, %struct.d3dcompiler_shader_reflection_type** %5, align 8
  %167 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type, %struct.d3dcompiler_shader_reflection_type* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @debugstr_a(i32 %168)
  %170 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %160, %136
  %172 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %12, align 8
  %173 = load %struct.d3dcompiler_shader_reflection_type*, %struct.d3dcompiler_shader_reflection_type** %5, align 8
  %174 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type, %struct.d3dcompiler_shader_reflection_type* %173, i32 0, i32 0
  store %struct.d3dcompiler_shader_reflection_type_member* %172, %struct.d3dcompiler_shader_reflection_type_member** %174, align 8
  %175 = load i32, i32* @S_OK, align 4
  store i32 %175, i32* %4, align 4
  br label %197

176:                                              ; preds = %129
  store i32 0, i32* %11, align 4
  br label %177

177:                                              ; preds = %189, %176
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = icmp ult i32 %178, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  %184 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %12, align 8
  %185 = load i32, i32* %11, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.d3dcompiler_shader_reflection_type_member, %struct.d3dcompiler_shader_reflection_type_member* %184, i64 %186
  %188 = call i32 @free_type_member(%struct.d3dcompiler_shader_reflection_type_member* %187)
  br label %189

189:                                              ; preds = %183
  %190 = load i32, i32* %11, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %11, align 4
  br label %177

192:                                              ; preds = %177
  %193 = call i32 (...) @GetProcessHeap()
  %194 = load %struct.d3dcompiler_shader_reflection_type_member*, %struct.d3dcompiler_shader_reflection_type_member** %12, align 8
  %195 = call i32 @HeapFree(i32 %193, i32 0, %struct.d3dcompiler_shader_reflection_type_member* %194)
  %196 = load i32, i32* %13, align 4
  store i32 %196, i32* %4, align 4
  br label %197

197:                                              ; preds = %192, %171, %155, %106
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @read_dword(i8**, i32*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debug_d3dcompiler_shader_variable_class(i32) #1

declare dso_local i32 @debug_d3dcompiler_shader_variable_type(i32) #1

declare dso_local i32 @skip_dword_unknown(i8**, i32) #1

declare dso_local %struct.d3dcompiler_shader_reflection_type_member* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @d3dcompiler_parse_type_members(%struct.TYPE_4__*, %struct.d3dcompiler_shader_reflection_type_member*, i8*, i8**) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i32 @copy_name(i8*, i32*) #1

declare dso_local i32 @heap_free(%struct.d3dcompiler_shader_reflection_type_member*) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32 @free_type_member(%struct.d3dcompiler_shader_reflection_type_member*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.d3dcompiler_shader_reflection_type_member*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
