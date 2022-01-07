; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_effect_typedef.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dx9_36/extr_effect.c_d3dx9_parse_effect_typedef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dx9_base_effect = type { i32 }
%struct.d3dx_parameter = type { i64, i32, i32, i32, i32, i32, i32, %struct.d3dx_parameter*, %struct.d3dx_parameter*, %struct.d3dx_parameter*, i64 }

@.str = private unnamed_addr constant [10 x i8] c"Type: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Class: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Type name offset: %#x\0A\00", align 1
@D3D_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed to parse name\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Type semantic offset: %#x\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Failed to parse semantic\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Elements: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Columns: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Rows: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Members: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Unhandled type %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Unhandled class %s\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@E_OUTOFMEMORY = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [27 x i8] c"Failed to parse member %u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.d3dx9_base_effect*, %struct.d3dx_parameter*, i8*, i8**, %struct.d3dx_parameter*, i64)* @d3dx9_parse_effect_typedef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @d3dx9_parse_effect_typedef(%struct.d3dx9_base_effect* %0, %struct.d3dx_parameter* %1, i8* %2, i8** %3, %struct.d3dx_parameter* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.d3dx9_base_effect*, align 8
  %9 = alloca %struct.d3dx_parameter*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.d3dx_parameter*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.d3dx9_base_effect* %0, %struct.d3dx9_base_effect** %8, align 8
  store %struct.d3dx_parameter* %1, %struct.d3dx_parameter** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8** %3, i8*** %11, align 8
  store %struct.d3dx_parameter* %4, %struct.d3dx_parameter** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %22 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %24 = icmp ne %struct.d3dx_parameter* %23, null
  br i1 %24, label %177, label %25

25:                                               ; preds = %6
  %26 = load i8**, i8*** %11, align 8
  %27 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %28 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %27, i32 0, i32 10
  %29 = bitcast i64* %28 to i32*
  %30 = call i32 @read_dword(i8** %26, i32* %29)
  %31 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %32 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %31, i32 0, i32 10
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @debug_d3dxparameter_type(i64 %33)
  %35 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i8**, i8*** %11, align 8
  %37 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %38 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %37, i32 0, i32 1
  %39 = call i32 @read_dword(i8** %36, i32* %38)
  %40 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %41 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @debug_d3dxparameter_class(i32 %42)
  %44 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i8**, i8*** %11, align 8
  %46 = call i32 @read_dword(i8** %45, i32* %14)
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %50 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %49, i32 0, i32 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = call i64 @d3dx9_parse_name(%struct.d3dx_parameter** %50, i8* %54)
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = load i64, i64* @D3D_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %25
  %60 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %373

61:                                               ; preds = %25
  %62 = load i8**, i8*** %11, align 8
  %63 = call i32 @read_dword(i8** %62, i32* %14)
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %67 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %66, i32 0, i32 7
  %68 = load i8*, i8** %10, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = call i64 @d3dx9_parse_name(%struct.d3dx_parameter** %67, i8* %71)
  store i64 %72, i64* %15, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* @D3D_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  br label %373

78:                                               ; preds = %61
  %79 = load i8**, i8*** %11, align 8
  %80 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %81 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %80, i32 0, i32 2
  %82 = call i32 @read_dword(i8** %79, i32* %81)
  %83 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %84 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %85)
  %87 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %88 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  switch i32 %89, label %170 [
    i32 141, label %90
    i32 143, label %117
    i32 145, label %117
    i32 146, label %117
    i32 142, label %144
    i32 144, label %153
  ]

90:                                               ; preds = %78
  %91 = load i8**, i8*** %11, align 8
  %92 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %93 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %92, i32 0, i32 3
  %94 = call i32 @read_dword(i8** %91, i32* %93)
  %95 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %96 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %97)
  %99 = load i8**, i8*** %11, align 8
  %100 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %101 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %100, i32 0, i32 4
  %102 = call i32 @read_dword(i8** %99, i32* %101)
  %103 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %104 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %105)
  %107 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %108 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 4, %109
  %111 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %112 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %110, %113
  %115 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %116 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  br label %176

117:                                              ; preds = %78, %78, %78
  %118 = load i8**, i8*** %11, align 8
  %119 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %120 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %119, i32 0, i32 4
  %121 = call i32 @read_dword(i8** %118, i32* %120)
  %122 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %123 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %124)
  %126 = load i8**, i8*** %11, align 8
  %127 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %128 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %127, i32 0, i32 3
  %129 = call i32 @read_dword(i8** %126, i32* %128)
  %130 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %131 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %132)
  %134 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %135 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 4, %136
  %138 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %139 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %137, %140
  %142 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %143 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 8
  br label %176

144:                                              ; preds = %78
  %145 = load i8**, i8*** %11, align 8
  %146 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %147 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %146, i32 0, i32 6
  %148 = call i32 @read_dword(i8** %145, i32* %147)
  %149 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %150 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %151)
  br label %176

153:                                              ; preds = %78
  %154 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %155 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %154, i32 0, i32 10
  %156 = load i64, i64* %155, align 8
  switch i64 %156, label %163 [
    i64 134, label %157
    i64 140, label %157
    i64 128, label %157
    i64 133, label %157
    i64 132, label %157
    i64 131, label %157
    i64 130, label %157
    i64 129, label %157
    i64 139, label %160
    i64 138, label %160
    i64 137, label %160
    i64 136, label %160
    i64 135, label %160
  ]

157:                                              ; preds = %153, %153, %153, %153, %153, %153, %153, %153
  %158 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %159 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %158, i32 0, i32 5
  store i32 8, i32* %159, align 8
  br label %169

160:                                              ; preds = %153, %153, %153, %153, %153
  %161 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %162 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %161, i32 0, i32 5
  store i32 0, i32* %162, align 8
  br label %169

163:                                              ; preds = %153
  %164 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %165 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %164, i32 0, i32 10
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @debug_d3dxparameter_type(i64 %166)
  %168 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %163, %160, %157
  br label %176

170:                                              ; preds = %78
  %171 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %172 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @debug_d3dxparameter_class(i32 %173)
  %175 = call i32 @FIXME(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %170, %169, %144, %117, %90
  br label %220

177:                                              ; preds = %6
  %178 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %179 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %178, i32 0, i32 10
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %182 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %181, i32 0, i32 10
  store i64 %180, i64* %182, align 8
  %183 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %184 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %187 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %186, i32 0, i32 1
  store i32 %185, i32* %187, align 8
  %188 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %189 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %188, i32 0, i32 8
  %190 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %189, align 8
  %191 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %192 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %191, i32 0, i32 8
  store %struct.d3dx_parameter* %190, %struct.d3dx_parameter** %192, align 8
  %193 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %194 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %193, i32 0, i32 7
  %195 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %194, align 8
  %196 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %197 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %196, i32 0, i32 7
  store %struct.d3dx_parameter* %195, %struct.d3dx_parameter** %197, align 8
  %198 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %199 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %198, i32 0, i32 2
  store i32 0, i32* %199, align 4
  %200 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %201 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %204 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %203, i32 0, i32 6
  store i32 %202, i32* %204, align 4
  %205 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %206 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %209 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %208, i32 0, i32 5
  store i32 %207, i32* %209, align 8
  %210 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %211 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %214 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %213, i32 0, i32 4
  store i32 %212, i32* %214, align 4
  %215 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %216 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %219 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %218, i32 0, i32 3
  store i32 %217, i32* %219, align 8
  br label %220

220:                                              ; preds = %177, %176
  %221 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %222 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %298

225:                                              ; preds = %220
  store i32 0, i32* %17, align 4
  %226 = load i8**, i8*** %11, align 8
  %227 = load i8*, i8** %226, align 8
  store i8* %227, i8** %18, align 8
  %228 = call i32 (...) @GetProcessHeap()
  %229 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %230 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %231 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = mul i64 64, %233
  %235 = trunc i64 %234 to i32
  %236 = call i8* @HeapAlloc(i32 %228, i32 %229, i32 %235)
  %237 = bitcast i8* %236 to %struct.d3dx_parameter*
  %238 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %239 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %238, i32 0, i32 9
  store %struct.d3dx_parameter* %237, %struct.d3dx_parameter** %239, align 8
  %240 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %241 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %240, i32 0, i32 9
  %242 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %241, align 8
  %243 = icmp ne %struct.d3dx_parameter* %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %225
  %245 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %246 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %246, i64* %15, align 8
  br label %373

247:                                              ; preds = %225
  store i64 0, i64* %16, align 8
  br label %248

248:                                              ; preds = %291, %247
  %249 = load i64, i64* %16, align 8
  %250 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %251 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = icmp ult i64 %249, %253
  br i1 %254, label %255, label %294

255:                                              ; preds = %248
  %256 = load i8*, i8** %18, align 8
  %257 = load i8**, i8*** %11, align 8
  store i8* %256, i8** %257, align 8
  %258 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %259 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %258, i32 0, i32 9
  %260 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %259, align 8
  %261 = load i64, i64* %16, align 8
  %262 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %260, i64 %261
  %263 = call i32 @param_set_magic_number(%struct.d3dx_parameter* %262)
  %264 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %265 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %266 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %265, i32 0, i32 9
  %267 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %266, align 8
  %268 = load i64, i64* %16, align 8
  %269 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %267, i64 %268
  %270 = load i8*, i8** %10, align 8
  %271 = load i8**, i8*** %11, align 8
  %272 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %273 = load i64, i64* %13, align 8
  %274 = call i64 @d3dx9_parse_effect_typedef(%struct.d3dx9_base_effect* %264, %struct.d3dx_parameter* %269, i8* %270, i8** %271, %struct.d3dx_parameter* %272, i64 %273)
  store i64 %274, i64* %15, align 8
  %275 = load i64, i64* %15, align 8
  %276 = load i64, i64* @D3D_OK, align 8
  %277 = icmp ne i64 %275, %276
  br i1 %277, label %278, label %281

278:                                              ; preds = %255
  %279 = load i64, i64* %16, align 8
  %280 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i64 %279)
  br label %373

281:                                              ; preds = %255
  %282 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %283 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %282, i32 0, i32 9
  %284 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %283, align 8
  %285 = load i64, i64* %16, align 8
  %286 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %284, i64 %285
  %287 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* %17, align 4
  %290 = add i32 %289, %288
  store i32 %290, i32* %17, align 4
  br label %291

291:                                              ; preds = %281
  %292 = load i64, i64* %16, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* %16, align 8
  br label %248

294:                                              ; preds = %248
  %295 = load i32, i32* %17, align 4
  %296 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %297 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %296, i32 0, i32 5
  store i32 %295, i32* %297, align 8
  br label %371

298:                                              ; preds = %220
  %299 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %300 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %370

303:                                              ; preds = %298
  %304 = call i32 (...) @GetProcessHeap()
  %305 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %306 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %307 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %306, i32 0, i32 6
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = mul i64 64, %309
  %311 = trunc i64 %310 to i32
  %312 = call i8* @HeapAlloc(i32 %304, i32 %305, i32 %311)
  %313 = bitcast i8* %312 to %struct.d3dx_parameter*
  %314 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %315 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %314, i32 0, i32 9
  store %struct.d3dx_parameter* %313, %struct.d3dx_parameter** %315, align 8
  %316 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %317 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %316, i32 0, i32 9
  %318 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %317, align 8
  %319 = icmp ne %struct.d3dx_parameter* %318, null
  br i1 %319, label %323, label %320

320:                                              ; preds = %303
  %321 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %322 = load i64, i64* @E_OUTOFMEMORY, align 8
  store i64 %322, i64* %15, align 8
  br label %373

323:                                              ; preds = %303
  store i64 0, i64* %16, align 8
  br label %324

324:                                              ; preds = %366, %323
  %325 = load i64, i64* %16, align 8
  %326 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %327 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %326, i32 0, i32 6
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = icmp ult i64 %325, %329
  br i1 %330, label %331, label %369

331:                                              ; preds = %324
  %332 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %333 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %332, i32 0, i32 9
  %334 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %333, align 8
  %335 = load i64, i64* %16, align 8
  %336 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %334, i64 %335
  %337 = call i32 @param_set_magic_number(%struct.d3dx_parameter* %336)
  %338 = load %struct.d3dx9_base_effect*, %struct.d3dx9_base_effect** %8, align 8
  %339 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %340 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %339, i32 0, i32 9
  %341 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %340, align 8
  %342 = load i64, i64* %16, align 8
  %343 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %341, i64 %342
  %344 = load i8*, i8** %10, align 8
  %345 = load i8**, i8*** %11, align 8
  %346 = load i64, i64* %13, align 8
  %347 = call i64 @d3dx9_parse_effect_typedef(%struct.d3dx9_base_effect* %338, %struct.d3dx_parameter* %343, i8* %344, i8** %345, %struct.d3dx_parameter* null, i64 %346)
  store i64 %347, i64* %15, align 8
  %348 = load i64, i64* %15, align 8
  %349 = load i64, i64* @D3D_OK, align 8
  %350 = icmp ne i64 %348, %349
  br i1 %350, label %351, label %354

351:                                              ; preds = %331
  %352 = load i64, i64* %16, align 8
  %353 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i64 %352)
  br label %373

354:                                              ; preds = %331
  %355 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %356 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %355, i32 0, i32 9
  %357 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %356, align 8
  %358 = load i64, i64* %16, align 8
  %359 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %357, i64 %358
  %360 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %359, i32 0, i32 5
  %361 = load i32, i32* %360, align 8
  %362 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %363 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %362, i32 0, i32 5
  %364 = load i32, i32* %363, align 8
  %365 = add nsw i32 %364, %361
  store i32 %365, i32* %363, align 8
  br label %366

366:                                              ; preds = %354
  %367 = load i64, i64* %16, align 8
  %368 = add i64 %367, 1
  store i64 %368, i64* %16, align 8
  br label %324

369:                                              ; preds = %324
  br label %370

370:                                              ; preds = %369, %298
  br label %371

371:                                              ; preds = %370, %294
  %372 = load i64, i64* @D3D_OK, align 8
  store i64 %372, i64* %7, align 8
  br label %442

373:                                              ; preds = %351, %320, %278, %244, %76, %59
  %374 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %375 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %374, i32 0, i32 9
  %376 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %375, align 8
  %377 = icmp ne %struct.d3dx_parameter* %376, null
  br i1 %377, label %378, label %422

378:                                              ; preds = %373
  %379 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %380 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %378
  %384 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %385 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  br label %391

387:                                              ; preds = %378
  %388 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %389 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 4
  br label %391

391:                                              ; preds = %387, %383
  %392 = phi i32 [ %386, %383 ], [ %390, %387 ]
  store i32 %392, i32* %19, align 4
  store i64 0, i64* %16, align 8
  br label %393

393:                                              ; preds = %411, %391
  %394 = load i64, i64* %16, align 8
  %395 = load i32, i32* %19, align 4
  %396 = zext i32 %395 to i64
  %397 = icmp ult i64 %394, %396
  br i1 %397, label %398, label %414

398:                                              ; preds = %393
  %399 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %400 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %399, i32 0, i32 9
  %401 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %400, align 8
  %402 = load i64, i64* %16, align 8
  %403 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %401, i64 %402
  %404 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %405 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = icmp ne i32 %406, 0
  %408 = zext i1 %407 to i32
  %409 = load i32, i32* @TRUE, align 4
  %410 = call i32 @free_parameter(%struct.d3dx_parameter* %403, i32 %408, i32 %409)
  br label %411

411:                                              ; preds = %398
  %412 = load i64, i64* %16, align 8
  %413 = add i64 %412, 1
  store i64 %413, i64* %16, align 8
  br label %393

414:                                              ; preds = %393
  %415 = call i32 (...) @GetProcessHeap()
  %416 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %417 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %416, i32 0, i32 9
  %418 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %417, align 8
  %419 = call i32 @HeapFree(i32 %415, i32 0, %struct.d3dx_parameter* %418)
  %420 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %421 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %420, i32 0, i32 9
  store %struct.d3dx_parameter* null, %struct.d3dx_parameter** %421, align 8
  br label %422

422:                                              ; preds = %414, %373
  %423 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %12, align 8
  %424 = icmp ne %struct.d3dx_parameter* %423, null
  br i1 %424, label %436, label %425

425:                                              ; preds = %422
  %426 = call i32 (...) @GetProcessHeap()
  %427 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %428 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %427, i32 0, i32 8
  %429 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %428, align 8
  %430 = call i32 @HeapFree(i32 %426, i32 0, %struct.d3dx_parameter* %429)
  %431 = call i32 (...) @GetProcessHeap()
  %432 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %433 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %432, i32 0, i32 7
  %434 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %433, align 8
  %435 = call i32 @HeapFree(i32 %431, i32 0, %struct.d3dx_parameter* %434)
  br label %436

436:                                              ; preds = %425, %422
  %437 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %438 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %437, i32 0, i32 8
  store %struct.d3dx_parameter* null, %struct.d3dx_parameter** %438, align 8
  %439 = load %struct.d3dx_parameter*, %struct.d3dx_parameter** %9, align 8
  %440 = getelementptr inbounds %struct.d3dx_parameter, %struct.d3dx_parameter* %439, i32 0, i32 7
  store %struct.d3dx_parameter* null, %struct.d3dx_parameter** %440, align 8
  %441 = load i64, i64* %15, align 8
  store i64 %441, i64* %7, align 8
  br label %442

442:                                              ; preds = %436, %371
  %443 = load i64, i64* %7, align 8
  ret i64 %443
}

declare dso_local i32 @read_dword(i8**, i32*) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debug_d3dxparameter_type(i64) #1

declare dso_local i32 @debug_d3dxparameter_class(i32) #1

declare dso_local i64 @d3dx9_parse_name(%struct.d3dx_parameter**, i8*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @param_set_magic_number(%struct.d3dx_parameter*) #1

declare dso_local i32 @free_parameter(%struct.d3dx_parameter*, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.d3dx_parameter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
