; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_xfile.c_d3dx9_file_data_create.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_xfile.c_d3dx9_file_data_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*)* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.d3dx9_file_data = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_7__**, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"dxfile_object %p, ret_iface %p.\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@d3dx9_file_data_vtbl = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@IID_IDirectXFileData = common dso_local global i32 0, align 4
@IID_IDirectXFileDataReference = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Don't know what to do with binary object\0A\00", align 1
@DXFILEERR_NOMOREOBJECTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Found %u children\0A\00", align 1
@S_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_7__**)* @d3dx9_file_data_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3dx9_file_data_create(i32* %0, %struct.TYPE_7__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca %struct.d3dx9_file_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__**, align 8
  %12 = alloca %struct.TYPE_7__**, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = ptrtoint i32* %13 to i32
  %15 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  %16 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.TYPE_7__** %15)
  %17 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %17, align 8
  %18 = call i32 (...) @GetProcessHeap()
  %19 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %20 = call i8* @HeapAlloc(i32 %18, i32 %19, i32 32)
  %21 = bitcast i8* %20 to %struct.d3dx9_file_data*
  store %struct.d3dx9_file_data* %21, %struct.d3dx9_file_data** %6, align 8
  %22 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %23 = icmp ne %struct.d3dx9_file_data* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %25, i64* %3, align 8
  br label %191

26:                                               ; preds = %2
  %27 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %28 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store %struct.TYPE_8__* @d3dx9_file_data_vtbl, %struct.TYPE_8__** %29, align 8
  %30 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %31 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %34 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %33, i32 0, i32 4
  %35 = bitcast i32* %34 to i8**
  %36 = call i64 @IDirectXFileObject_QueryInterface(i32* %32, i32* @IID_IDirectXFileData, i8** %35)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @FAILED(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %26
  %41 = load i32*, i32** %4, align 8
  %42 = bitcast i32** %10 to i8**
  %43 = call i64 @IDirectXFileObject_QueryInterface(i32* %41, i32* @IID_IDirectXFileDataReference, i8** %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @SUCCEEDED(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %40
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %50 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %49, i32 0, i32 4
  %51 = call i64 @IDirectXFileDataReference_Resolve(i32* %48, i32* %50)
  store i64 %51, i64* %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @IUnknown_Release(i32* %52)
  %54 = load i64, i64* %9, align 8
  %55 = call i64 @FAILED(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = call i32 (...) @GetProcessHeap()
  %59 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %60 = call i32 @HeapFree(i32 %58, i32 0, %struct.d3dx9_file_data* %59)
  %61 = load i64, i64* @E_FAIL, align 8
  store i64 %61, i64* %3, align 8
  br label %191

62:                                               ; preds = %47
  %63 = load i32, i32* @TRUE, align 4
  %64 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %65 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 4
  br label %72

66:                                               ; preds = %40
  %67 = call i32 @FIXME(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 (...) @GetProcessHeap()
  %69 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %70 = call i32 @HeapFree(i32 %68, i32 0, %struct.d3dx9_file_data* %69)
  %71 = load i64, i64* @E_FAIL, align 8
  store i64 %71, i64* %3, align 8
  br label %191

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %26
  br label %74

74:                                               ; preds = %138, %73
  %75 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %76 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @IDirectXFileData_GetNextObject(i32 %77, i32** %7)
  store i64 %78, i64* %9, align 8
  %79 = call i64 @SUCCEEDED(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %143

81:                                               ; preds = %74
  %82 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %83 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp uge i32 %84, %85
  br i1 %86, label %87, label %121

87:                                               ; preds = %81
  %88 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %89 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %88, i32 0, i32 3
  %90 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %89, align 8
  %91 = icmp ne %struct.TYPE_7__** %90, null
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = mul i32 %93, 2
  store i32 %94, i32* %8, align 4
  %95 = call i32 (...) @GetProcessHeap()
  %96 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %97 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %96, i32 0, i32 3
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = mul i64 8, %100
  %102 = trunc i64 %101 to i32
  %103 = call %struct.TYPE_7__** @HeapReAlloc(i32 %95, i32 0, %struct.TYPE_7__** %98, i32 %102)
  store %struct.TYPE_7__** %103, %struct.TYPE_7__*** %11, align 8
  br label %112

104:                                              ; preds = %87
  store i32 4, i32* %8, align 4
  %105 = call i32 (...) @GetProcessHeap()
  %106 = load i32, i32* %8, align 4
  %107 = zext i32 %106 to i64
  %108 = mul i64 8, %107
  %109 = trunc i64 %108 to i32
  %110 = call i8* @HeapAlloc(i32 %105, i32 0, i32 %109)
  %111 = bitcast i8* %110 to %struct.TYPE_7__**
  store %struct.TYPE_7__** %111, %struct.TYPE_7__*** %11, align 8
  br label %112

112:                                              ; preds = %104, %92
  %113 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %114 = icmp ne %struct.TYPE_7__** %113, null
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %116, i64* %9, align 8
  br label %143

117:                                              ; preds = %112
  %118 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  %119 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %120 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %119, i32 0, i32 3
  store %struct.TYPE_7__** %118, %struct.TYPE_7__*** %120, align 8
  br label %121

121:                                              ; preds = %117, %81
  %122 = load i32*, i32** %7, align 8
  %123 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %124 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %123, i32 0, i32 3
  %125 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %124, align 8
  %126 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %127 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %125, i64 %129
  %131 = call i64 @d3dx9_file_data_create(i32* %122, %struct.TYPE_7__** %130)
  store i64 %131, i64* %9, align 8
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @IUnknown_Release(i32* %132)
  %134 = load i64, i64* %9, align 8
  %135 = call i64 @FAILED(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %121
  br label %143

138:                                              ; preds = %121
  %139 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %140 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %74

143:                                              ; preds = %137, %115, %74
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* @DXFILEERR_NOMOREOBJECTS, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %143
  %148 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %149 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32 (%struct.TYPE_7__*)*, i32 (%struct.TYPE_7__*)** %152, align 8
  %154 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %155 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %154, i32 0, i32 2
  %156 = call i32 %153(%struct.TYPE_7__* %155)
  %157 = load i64, i64* %9, align 8
  store i64 %157, i64* %3, align 8
  br label %191

158:                                              ; preds = %143
  %159 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %160 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %159, i32 0, i32 3
  %161 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %160, align 8
  %162 = icmp ne %struct.TYPE_7__** %161, null
  br i1 %162, label %163, label %182

163:                                              ; preds = %158
  %164 = call i32 (...) @GetProcessHeap()
  %165 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %166 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %165, i32 0, i32 3
  %167 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %166, align 8
  %168 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %169 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = zext i32 %170 to i64
  %172 = mul i64 8, %171
  %173 = trunc i64 %172 to i32
  %174 = call %struct.TYPE_7__** @HeapReAlloc(i32 %164, i32 0, %struct.TYPE_7__** %167, i32 %173)
  store %struct.TYPE_7__** %174, %struct.TYPE_7__*** %12, align 8
  %175 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %176 = icmp ne %struct.TYPE_7__** %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %163
  %178 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %12, align 8
  %179 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %180 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %179, i32 0, i32 3
  store %struct.TYPE_7__** %178, %struct.TYPE_7__*** %180, align 8
  br label %181

181:                                              ; preds = %177, %163
  br label %182

182:                                              ; preds = %181, %158
  %183 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %184 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  %187 = load %struct.d3dx9_file_data*, %struct.d3dx9_file_data** %6, align 8
  %188 = getelementptr inbounds %struct.d3dx9_file_data, %struct.d3dx9_file_data* %187, i32 0, i32 2
  %189 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %188, %struct.TYPE_7__** %189, align 8
  %190 = load i64, i64* @S_OK, align 8
  store i64 %190, i64* %3, align 8
  br label %191

191:                                              ; preds = %182, %147, %66, %57, %24
  %192 = load i64, i64* %3, align 8
  ret i64 %192
}

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i64 @IDirectXFileObject_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i64 @FAILED(i64) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IDirectXFileDataReference_Resolve(i32*, i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.d3dx9_file_data*) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @IDirectXFileData_GetNextObject(i32, i32**) #1

declare dso_local %struct.TYPE_7__** @HeapReAlloc(i32, i32, %struct.TYPE_7__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
