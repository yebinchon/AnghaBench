; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i32, i32, i32, i32, i64, i32, %struct.d3dx_sampler*, %struct.d3dx_parameter* }
%struct.d3dx_sampler = type { i32 }
%struct.d3dx_object = type { %struct.d3dx_parameter* }

@D3D_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Failed to parse value %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Id: %u\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to parse sampler\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Unhandled type %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Unhandled class %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.d3dx9_base_effect*, %struct.d3dx_parameter*, i8*, i8*, i8**, %struct.d3dx_object*)* @d3dx9_parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3dx9_parse_value(%struct.d3dx9_base_effect* %0, %struct.d3dx_parameter* %1, i8* %2, i8* %3, i8** %4, %struct.d3dx_object* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.d3dx9_base_effect*, align 8
  %9 = alloca %struct.d3dx_parameter*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca %struct.d3dx_object*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.d3dx_parameter*, align 8
  %18 = alloca %struct.d3dx_parameter*, align 8
  %19 = alloca %struct.d3dx_sampler*, align 8
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %8, align 8
  store %struct.d3dx_parameter* %1, %struct.d3dx_parameter** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store %struct.d3dx_object* %5, %struct.d3dx_object** %13, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %21 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %6
  %25 = load i8*, i8** %10, align 8
  %26 = bitcast i8* %25 to %struct.d3dx_sampler*
  %27 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %28 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %27, i32 0, i32 6
  store %struct.d3dx_sampler* %26, %struct.d3dx_sampler** %28, align 8
  store i32 0, i32* %14, align 4
  br label %29

29:                                               ; preds = %71, %24
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %32 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %29
  %36 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %37 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %36, i32 0, i32 7
  %38 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %37, align 8
  %39 = load i32, i32* %14, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %38, i64 %40
  store %struct.d3dx_parameter* %41, %struct.d3dx_parameter** %17, align 8
  %42 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %43 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %17, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  br label %52

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %46
  %53 = phi i8* [ %50, %46 ], [ null, %51 ]
  %54 = load i8*, i8** %11, align 8
  %55 = load i8**, i8*** %12, align 8
  %56 = load %struct.d3dx_object*, %struct.d3dx_object** %13, align 8
  %57 = call i64 @d3dx9_parse_value(%struct.d3dx9_base_effect* %42, %struct.d3dx_parameter* %43, i8* %53, i8* %54, i8** %55, %struct.d3dx_object* %56)
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* @D3D_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load i32, i32* %14, align 4
  %63 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i64, i64* %15, align 8
  store i64 %64, i64* %7, align 8
  br label %197

65:                                               ; preds = %52
  %66 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %17, align 8
  %67 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %14, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %14, align 4
  br label %29

74:                                               ; preds = %29
  %75 = load i64, i64* @D3D_OK, align 8
  store i64 %75, i64* %7, align 8
  br label %197

76:                                               ; preds = %6
  %77 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %78 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %189 [
    i32 143, label %80
    i32 141, label %80
    i32 145, label %80
    i32 146, label %80
    i32 142, label %85
    i32 144, label %130
  ]

80:                                               ; preds = %76, %76, %76, %76
  %81 = load i8*, i8** %10, align 8
  %82 = bitcast i8* %81 to %struct.d3dx_sampler*
  %83 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %84 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %83, i32 0, i32 6
  store %struct.d3dx_sampler* %82, %struct.d3dx_sampler** %84, align 8
  br label %195

85:                                               ; preds = %76
  %86 = load i8*, i8** %10, align 8
  %87 = bitcast i8* %86 to %struct.d3dx_sampler*
  %88 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %89 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %88, i32 0, i32 6
  store %struct.d3dx_sampler* %87, %struct.d3dx_sampler** %89, align 8
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %126, %85
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %93 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %129

96:                                               ; preds = %90
  %97 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %98 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %97, i32 0, i32 7
  %99 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %98, align 8
  %100 = load i32, i32* %14, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %99, i64 %101
  store %struct.d3dx_parameter* %102, %struct.d3dx_parameter** %18, align 8
  %103 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %104 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %18, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8*, i8** %11, align 8
  %110 = load i8**, i8*** %12, align 8
  %111 = load %struct.d3dx_object*, %struct.d3dx_object** %13, align 8
  %112 = call i64 @d3dx9_parse_value(%struct.d3dx9_base_effect* %103, %struct.d3dx_parameter* %104, i8* %108, i8* %109, i8** %110, %struct.d3dx_object* %111)
  store i64 %112, i64* %15, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i64, i64* @D3D_OK, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %96
  %117 = load i32, i32* %14, align 4
  %118 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load i64, i64* %15, align 8
  store i64 %119, i64* %7, align 8
  br label %197

120:                                              ; preds = %96
  %121 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %18, align 8
  %122 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %16, align 4
  br label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %14, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %90

129:                                              ; preds = %90
  br label %195

130:                                              ; preds = %76
  %131 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %132 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  switch i32 %133, label %182 [
    i32 134, label %134
    i32 133, label %134
    i32 132, label %134
    i32 131, label %134
    i32 130, label %134
    i32 129, label %134
    i32 140, label %134
    i32 128, label %134
    i32 139, label %154
    i32 138, label %154
    i32 137, label %154
    i32 136, label %154
    i32 135, label %154
  ]

134:                                              ; preds = %130, %130, %130, %130, %130, %130, %130, %130
  %135 = load i8**, i8*** %12, align 8
  %136 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %137 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %136, i32 0, i32 4
  %138 = call i32 @read_dword(i8** %135, i64* %137)
  %139 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %140 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @TRACE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %141)
  %143 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %144 = load %struct.d3dx_object*, %struct.d3dx_object** %13, align 8
  %145 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %146 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %145, i32 0, i32 4
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %144, i64 %147
  %149 = getelementptr inbounds %struct.d3dx_object, %struct.d3dx_object* %148, i32 0, i32 0
  store %struct.d3dx_parameter* %143, %struct.d3dx_parameter** %149, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = bitcast i8* %150 to %struct.d3dx_sampler*
  %152 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %153 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %152, i32 0, i32 6
  store %struct.d3dx_sampler* %151, %struct.d3dx_sampler** %153, align 8
  br label %188

154:                                              ; preds = %130, %130, %130, %130, %130
  %155 = call i32 (...) @GetProcessHeap()
  %156 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %157 = call %struct.d3dx_sampler* @HeapAlloc(i32 %155, i32 %156, i32 4)
  store %struct.d3dx_sampler* %157, %struct.d3dx_sampler** %19, align 8
  %158 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %19, align 8
  %159 = icmp ne %struct.d3dx_sampler* %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %154
  %161 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %161, i64* %7, align 8
  br label %197

162:                                              ; preds = %154
  %163 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %164 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %19, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = load i8**, i8*** %12, align 8
  %167 = load %struct.d3dx_object*, %struct.d3dx_object** %13, align 8
  %168 = call i64 @d3dx9_parse_sampler(%struct.d3dx9_base_effect* %163, %struct.d3dx_sampler* %164, i8* %165, i8** %166, %struct.d3dx_object* %167)
  store i64 %168, i64* %15, align 8
  %169 = load i64, i64* %15, align 8
  %170 = load i64, i64* @D3D_OK, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %162
  %173 = call i32 (...) @GetProcessHeap()
  %174 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %19, align 8
  %175 = call i32 @HeapFree(i32 %173, i32 0, %struct.d3dx_sampler* %174)
  %176 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %177 = load i64, i64* %15, align 8
  store i64 %177, i64* %7, align 8
  br label %197

178:                                              ; preds = %162
  %179 = load %struct.d3dx_sampler*, %struct.d3dx_sampler** %19, align 8
  %180 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %181 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %180, i32 0, i32 6
  store %struct.d3dx_sampler* %179, %struct.d3dx_sampler** %181, align 8
  br label %188

182:                                              ; preds = %130
  %183 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %184 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @debug_d3dxparameter_type(i32 %185)
  %187 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %182, %178, %134
  br label %195

189:                                              ; preds = %76
  %190 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %191 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @debug_d3dxparameter_class(i32 %192)
  %194 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %189, %188, %129, %80
  %196 = load i64, i64* @D3D_OK, align 8
  store i64 %196, i64* %7, align 8
  br label %197

197:                                              ; preds = %195, %172, %160, %116, %74, %61
  %198 = load i64, i64* %7, align 8
  ret i64 %198
}

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @read_dword(i8**, i64*) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local %struct.d3dx_sampler* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @d3dx9_parse_sampler(%struct.d3dx9_base_effect*, %struct.d3dx_sampler*, i8*, i8**, %struct.d3dx_object*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.d3dx_sampler*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debug_d3dxparameter_type(i32) #1

declare dso_local i32 @debug_d3dxparameter_class(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
