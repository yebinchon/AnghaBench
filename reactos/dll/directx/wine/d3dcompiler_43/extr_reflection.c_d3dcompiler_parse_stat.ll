; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_d3dcompiler_parse_stat.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/d3dcompiler_43/extr_reflection.c_d3dcompiler_parse_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d3dcompiler_shader_reflection = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Size %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"InstructionCount: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"TempRegisterCount: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"DclCount: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"FloatInstructionCount: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"IntInstructionCount: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"UintInstructionCount: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"StaticFlowControlCount: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"DynamicFlowControlCount: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"TempArrayCount: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"ArrayInstructionCount: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"CutInstructionCount: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"EmitInstructionCount: %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"TextureNormalInstructions: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"TextureLoadInstructions: %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"TextureCompInstructions: %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"TextureBiasInstructions: %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"TextureGradientInstructions: %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"MovInstructionCount: %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"ConversionInstructionCount: %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"InputPrimitive: %x\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"GSOutputTopology: %x\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"GSMaxOutputVertexCount: %u\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [20 x i8] c"cControlPoints: %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"HSOutputPrimitive: %x\0A\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"HSPartitioning: %x\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"TessellatorDomain: %x\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"Unhandled size %u\0A\00", align 1
@E_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d3dcompiler_shader_reflection*, i8*, i32)* @d3dcompiler_parse_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d3dcompiler_parse_stat(%struct.d3dcompiler_shader_reflection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.d3dcompiler_shader_reflection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.d3dcompiler_shader_reflection* %0, %struct.d3dcompiler_shader_reflection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = ashr i32 %11, 2
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %16 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %15, i32 0, i32 0
  %17 = call i32 @read_dword(i8** %8, i32* %16)
  %18 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %19 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %23 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %22, i32 0, i32 1
  %24 = call i32 @read_dword(i8** %8, i32* %23)
  %25 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %26 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = call i32 @skip_dword_unknown(i8** %8, i32 1)
  %30 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %31 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %30, i32 0, i32 2
  %32 = call i32 @read_dword(i8** %8, i32* %31)
  %33 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %34 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  %37 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %38 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %37, i32 0, i32 3
  %39 = call i32 @read_dword(i8** %8, i32* %38)
  %40 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %41 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %45 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %44, i32 0, i32 4
  %46 = call i32 @read_dword(i8** %8, i32* %45)
  %47 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %48 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %52 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %51, i32 0, i32 5
  %53 = call i32 @read_dword(i8** %8, i32* %52)
  %54 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %55 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %56)
  %58 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %59 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %58, i32 0, i32 6
  %60 = call i32 @read_dword(i8** %8, i32* %59)
  %61 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %62 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %63)
  %65 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %66 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %65, i32 0, i32 7
  %67 = call i32 @read_dword(i8** %8, i32* %66)
  %68 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %69 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %70)
  %72 = call i32 @skip_dword_unknown(i8** %8, i32 1)
  %73 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %74 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %73, i32 0, i32 8
  %75 = call i32 @read_dword(i8** %8, i32* %74)
  %76 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %77 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  %80 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %81 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %80, i32 0, i32 9
  %82 = call i32 @read_dword(i8** %8, i32* %81)
  %83 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %84 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %85)
  %87 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %88 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %87, i32 0, i32 10
  %89 = call i32 @read_dword(i8** %8, i32* %88)
  %90 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %91 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %92)
  %94 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %95 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %94, i32 0, i32 11
  %96 = call i32 @read_dword(i8** %8, i32* %95)
  %97 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %98 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %97, i32 0, i32 11
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %99)
  %101 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %102 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %101, i32 0, i32 12
  %103 = call i32 @read_dword(i8** %8, i32* %102)
  %104 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %105 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %104, i32 0, i32 12
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @TRACE(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %106)
  %108 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %109 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %108, i32 0, i32 13
  %110 = call i32 @read_dword(i8** %8, i32* %109)
  %111 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %112 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %111, i32 0, i32 13
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i32 %113)
  %115 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %116 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %115, i32 0, i32 14
  %117 = call i32 @read_dword(i8** %8, i32* %116)
  %118 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %119 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %118, i32 0, i32 14
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %120)
  %122 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %123 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %122, i32 0, i32 15
  %124 = call i32 @read_dword(i8** %8, i32* %123)
  %125 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %126 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %125, i32 0, i32 15
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i32 %127)
  %129 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %130 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %129, i32 0, i32 16
  %131 = call i32 @read_dword(i8** %8, i32* %130)
  %132 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %133 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %132, i32 0, i32 16
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @TRACE(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %134)
  %136 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %137 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %136, i32 0, i32 17
  %138 = call i32 @read_dword(i8** %8, i32* %137)
  %139 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %140 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %139, i32 0, i32 17
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %141)
  %143 = call i32 @skip_dword_unknown(i8** %8, i32 1)
  %144 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %145 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %144, i32 0, i32 18
  %146 = call i32 @read_dword(i8** %8, i32* %145)
  %147 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %148 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %147, i32 0, i32 18
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32 %149)
  %151 = call i32 @skip_dword_unknown(i8** %8, i32 1)
  %152 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %153 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %152, i32 0, i32 19
  %154 = call i32 @read_dword(i8** %8, i32* %153)
  %155 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %156 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %155, i32 0, i32 19
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %157)
  %159 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %160 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %159, i32 0, i32 20
  %161 = call i32 @read_dword(i8** %8, i32* %160)
  %162 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %163 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %162, i32 0, i32 20
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @TRACE(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 %164)
  %166 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %167 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %166, i32 0, i32 21
  %168 = call i32 @read_dword(i8** %8, i32* %167)
  %169 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %170 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %169, i32 0, i32 21
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 %171)
  %173 = call i32 @skip_dword_unknown(i8** %8, i32 2)
  %174 = load i32, i32* %9, align 4
  %175 = icmp eq i32 %174, 28
  br i1 %175, label %176, label %178

176:                                              ; preds = %3
  %177 = load i32, i32* @S_OK, align 4
  store i32 %177, i32* %4, align 4
  br label %223

178:                                              ; preds = %3
  %179 = call i32 @skip_dword_unknown(i8** %8, i32 1)
  %180 = load i32, i32* %9, align 4
  %181 = icmp eq i32 %180, 29
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32, i32* @S_OK, align 4
  store i32 %183, i32* %4, align 4
  br label %223

184:                                              ; preds = %178
  %185 = call i32 @skip_dword_unknown(i8** %8, i32 1)
  %186 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %187 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %186, i32 0, i32 22
  %188 = call i32 @read_dword(i8** %8, i32* %187)
  %189 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %190 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %189, i32 0, i32 22
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %191)
  %193 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %194 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %193, i32 0, i32 23
  %195 = call i32 @read_dword(i8** %8, i32* %194)
  %196 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %197 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %196, i32 0, i32 23
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 %198)
  %200 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %201 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %200, i32 0, i32 24
  %202 = call i32 @read_dword(i8** %8, i32* %201)
  %203 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %204 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %203, i32 0, i32 24
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32 %205)
  %207 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %208 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %207, i32 0, i32 25
  %209 = call i32 @read_dword(i8** %8, i32* %208)
  %210 = load %struct.d3dcompiler_shader_reflection*, %struct.d3dcompiler_shader_reflection** %5, align 8
  %211 = getelementptr inbounds %struct.d3dcompiler_shader_reflection, %struct.d3dcompiler_shader_reflection* %210, i32 0, i32 25
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @TRACE(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 %212)
  %214 = call i32 @skip_dword_unknown(i8** %8, i32 3)
  %215 = load i32, i32* %9, align 4
  %216 = icmp eq i32 %215, 37
  br i1 %216, label %217, label %219

217:                                              ; preds = %184
  %218 = load i32, i32* @S_OK, align 4
  store i32 %218, i32* %4, align 4
  br label %223

219:                                              ; preds = %184
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i32 %220)
  %222 = load i32, i32* @E_FAIL, align 4
  store i32 %222, i32* %4, align 4
  br label %223

223:                                              ; preds = %219, %217, %182, %176
  %224 = load i32, i32* %4, align 4
  ret i32 %224
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @read_dword(i8**, i32*) #1

declare dso_local i32 @skip_dword_unknown(i8**, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
