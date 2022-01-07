; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_effect_technique.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_effect_technique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_technique = type { i32, i32, i8*, i8*, i8* }
%struct.d3dx_object = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Technique name offset: %#x\0A\00", align 1
@D3D_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to parse name\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Annotation count: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Pass count: %u\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to parse annotation %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Failed to parse pass %u\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.d3dx9_base_effect*, %struct.d3dx_technique*, i8*, i8**, %struct.d3dx_object*)* @d3dx9_parse_effect_technique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3dx9_parse_effect_technique(%struct.d3dx9_base_effect* %0, %struct.d3dx_technique* %1, i8* %2, i8** %3, %struct.d3dx_object* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.d3dx9_base_effect*, align 8
  %8 = alloca %struct.d3dx_technique*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.d3dx_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %7, align 8
  store %struct.d3dx_technique* %1, %struct.d3dx_technique** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store %struct.d3dx_object* %4, %struct.d3dx_object** %11, align 8
  store i8* null, i8** %15, align 8
  %16 = load i8**, i8*** %10, align 8
  %17 = call i32 @read_dword(i8** %16, i32* %12)
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = call i64 @d3dx9_parse_name(i8** %15, i8* %23)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* @D3D_OK, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %166

30:                                               ; preds = %5
  %31 = load i8**, i8*** %10, align 8
  %32 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %33 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %32, i32 0, i32 0
  %34 = call i32 @read_dword(i8** %31, i32* %33)
  %35 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %36 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i8**, i8*** %10, align 8
  %40 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %41 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %40, i32 0, i32 1
  %42 = call i32 @read_dword(i8** %39, i32* %41)
  %43 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %44 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %48 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %107

51:                                               ; preds = %30
  %52 = call i32 (...) @GetProcessHeap()
  %53 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %54 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %55 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 1, %57
  %59 = trunc i64 %58 to i32
  %60 = call i8* @HeapAlloc(i32 %52, i32 %53, i32 %59)
  %61 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %62 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %64 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %51
  %68 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %69, i64* %13, align 8
  br label %166

70:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  br label %71

71:                                               ; preds = %103, %70
  %72 = load i32, i32* %14, align 4
  %73 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %74 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %71
  %78 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %79 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %14, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = call i32 @param_set_magic_number(i8* %83)
  %85 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %7, align 8
  %86 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %87 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %14, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8*, i8** %9, align 8
  %93 = load i8**, i8*** %10, align 8
  %94 = load %struct.d3dx_object*, %struct.d3dx_object** %11, align 8
  %95 = call i64 @d3dx9_parse_effect_annotation(%struct.d3dx9_base_effect* %85, i8* %91, i8* %92, i8** %93, %struct.d3dx_object* %94)
  store i64 %95, i64* %13, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* @D3D_OK, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %77
  %100 = load i32, i32* %14, align 4
  %101 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %100)
  br label %166

102:                                              ; preds = %77
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %14, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %71

106:                                              ; preds = %71
  br label %107

107:                                              ; preds = %106, %30
  %108 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %109 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %161

112:                                              ; preds = %107
  %113 = call i32 (...) @GetProcessHeap()
  %114 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %115 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %116 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 1, %118
  %120 = trunc i64 %119 to i32
  %121 = call i8* @HeapAlloc(i32 %113, i32 %114, i32 %120)
  %122 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %123 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  %124 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %125 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %112
  %129 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %130 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %130, i64* %13, align 8
  br label %166

131:                                              ; preds = %112
  store i32 0, i32* %14, align 4
  br label %132

132:                                              ; preds = %157, %131
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %135 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ult i32 %133, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %132
  %139 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %7, align 8
  %140 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %141 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %140, i32 0, i32 3
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8*, i8** %9, align 8
  %147 = load i8**, i8*** %10, align 8
  %148 = load %struct.d3dx_object*, %struct.d3dx_object** %11, align 8
  %149 = call i64 @d3dx9_parse_effect_pass(%struct.d3dx9_base_effect* %139, i8* %145, i8* %146, i8** %147, %struct.d3dx_object* %148)
  store i64 %149, i64* %13, align 8
  %150 = load i64, i64* %13, align 8
  %151 = load i64, i64* @D3D_OK, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %138
  %154 = load i32, i32* %14, align 4
  %155 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %154)
  br label %166

156:                                              ; preds = %138
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %14, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %132

160:                                              ; preds = %132
  br label %161

161:                                              ; preds = %160, %107
  %162 = load i8*, i8** %15, align 8
  %163 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %164 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %163, i32 0, i32 4
  store i8* %162, i8** %164, align 8
  %165 = load i64, i64* @D3D_OK, align 8
  store i64 %165, i64* %6, align 8
  br label %235

166:                                              ; preds = %153, %128, %99, %67, %28
  %167 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %168 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %197

171:                                              ; preds = %166
  store i32 0, i32* %14, align 4
  br label %172

172:                                              ; preds = %186, %171
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %175 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp ult i32 %173, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %172
  %179 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %180 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %179, i32 0, i32 3
  %181 = load i8*, i8** %180, align 8
  %182 = load i32, i32* %14, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = call i32 @free_pass(i8* %184)
  br label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %14, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %14, align 4
  br label %172

189:                                              ; preds = %172
  %190 = call i32 (...) @GetProcessHeap()
  %191 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %192 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %191, i32 0, i32 3
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @HeapFree(i32 %190, i32 0, i8* %193)
  %195 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %196 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %195, i32 0, i32 3
  store i8* null, i8** %196, align 8
  br label %197

197:                                              ; preds = %189, %166
  %198 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %199 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %230

202:                                              ; preds = %197
  store i32 0, i32* %14, align 4
  br label %203

203:                                              ; preds = %219, %202
  %204 = load i32, i32* %14, align 4
  %205 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %206 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp ult i32 %204, %207
  br i1 %208, label %209, label %222

209:                                              ; preds = %203
  %210 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %211 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %210, i32 0, i32 2
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i32, i32* @FALSE, align 4
  %217 = load i32, i32* @FALSE, align 4
  %218 = call i32 @free_parameter(i8* %215, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %209
  %220 = load i32, i32* %14, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %14, align 4
  br label %203

222:                                              ; preds = %203
  %223 = call i32 (...) @GetProcessHeap()
  %224 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %225 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %224, i32 0, i32 2
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @HeapFree(i32 %223, i32 0, i8* %226)
  %228 = load %struct.d3dx_technique*, %struct.d3dx_technique** %8, align 8
  %229 = getelementptr inbounds %struct.d3dx_technique, %struct.d3dx_technique* %228, i32 0, i32 2
  store i8* null, i8** %229, align 8
  br label %230

230:                                              ; preds = %222, %197
  %231 = call i32 (...) @GetProcessHeap()
  %232 = load i8*, i8** %15, align 8
  %233 = call i32 @HeapFree(i32 %231, i32 0, i8* %232)
  %234 = load i64, i64* %13, align 8
  store i64 %234, i64* %6, align 8
  br label %235

235:                                              ; preds = %230, %161
  %236 = load i64, i64* %6, align 8
  ret i64 %236
}

declare dso_local i32 @read_dword(i8**, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i64 @d3dx9_parse_name(i8**, i8*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @param_set_magic_number(i8*) #1

declare dso_local i64 @d3dx9_parse_effect_annotation(%struct.d3dx9_base_effect*, i8*, i8*, i8**, %struct.d3dx_object*) #1

declare dso_local i64 @d3dx9_parse_effect_pass(%struct.d3dx9_base_effect*, i8*, i8*, i8**, %struct.d3dx_object*) #1

declare dso_local i32 @free_pass(i8*) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @free_parameter(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
