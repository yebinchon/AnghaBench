; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_gen_ffp_instr.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_gen_ffp_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_string_buffer = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".xyz\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".w\00", align 1
@tempreg = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"tempreg\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"MOV %s%s, %s;\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"MUL %s%s, %s, %s;\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"SUB arg2, %s, const.w;\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"arg2\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"ADD_SAT %s%s, %s, %s;\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"SUB_SAT %s%s, %s, %s;\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"SUB arg1, const.x, %s;\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"MAD_SAT %s%s, arg1, %s, %s;\0A\00", align 1
@WINED3DTA_CURRENT = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [25 x i8] c"LRP %s%s, %s.w, %s, %s;\0A\00", align 1
@WINED3DTA_TFACTOR = common dso_local global i64 0, align 8
@WINED3DTA_TEXTURE = common dso_local global i64 0, align 8
@WINED3DTA_DIFFUSE = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [28 x i8] c"SUB arg0.w, const.x, %s.w;\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"MAD_SAT %s%s, %s, arg0.w, %s;\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"SUB arg0.w, const.x, %s;\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"MAD_SAT %s%s, arg0.w, %s, %s;\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"MAD_SAT %s%s, %s.w, %s, %s;\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"SUB arg0, const.x, %s;\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"MAD_SAT %s%s, arg0, %s, %s.w;\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"MAD_SAT %s%s, %s, %s, %s.w;\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"SUB arg1, %s, const.w;\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"DP3_SAT %s%s, arg1, arg2;\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"MAD_SAT %s%s, %s, %s, %s;\0A\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"LRP %s%s, %s, %s, %s;\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Unhandled texture op %08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"MUL_SAT %s%s, %s, const.y;\0A\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"MUL_SAT %s%s, %s, const.z;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_string_buffer*, i32, i64, i64, i64, i64, i64, i64, i64)* @gen_ffp_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_ffp_instr(%struct.wined3d_string_buffer* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) #0 {
  %10 = alloca %struct.wined3d_string_buffer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store %struct.wined3d_string_buffer* %0, %struct.wined3d_string_buffer** %10, align 8
  store i32 %1, i32* %11, align 4
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  store i32 1, i32* %24, align 4
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %9
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  br label %37

31:                                               ; preds = %27, %9
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  br label %36

35:                                               ; preds = %31
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  br label %36

36:                                               ; preds = %35, %34
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @tempreg, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %20, align 8
  br label %43

42:                                               ; preds = %37
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %20, align 8
  br label %43

43:                                               ; preds = %42, %41
  %44 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i64, i64* %16, align 8
  %47 = call i8* @get_argreg(%struct.wined3d_string_buffer* %44, i32 0, i32 %45, i64 %46)
  store i8* %47, i8** %21, align 8
  %48 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i64, i64* %17, align 8
  %51 = call i8* @get_argreg(%struct.wined3d_string_buffer* %48, i32 1, i32 %49, i64 %50)
  store i8* %51, i8** %22, align 8
  %52 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i64, i64* %18, align 8
  %55 = call i8* @get_argreg(%struct.wined3d_string_buffer* %52, i32 2, i32 %53, i64 %54)
  store i8* %55, i8** %23, align 8
  %56 = load i64, i64* %15, align 8
  switch i64 %56, label %232 [
    i64 141, label %57
    i64 129, label %58
    i64 130, label %60
    i64 136, label %66
    i64 137, label %67
    i64 138, label %70
    i64 150, label %77
    i64 151, label %78
    i64 152, label %82
    i64 128, label %89
    i64 149, label %96
    i64 148, label %106
    i64 146, label %118
    i64 145, label %130
    i64 147, label %142
    i64 144, label %154
    i64 133, label %168
    i64 135, label %178
    i64 132, label %186
    i64 134, label %196
    i64 140, label %204
    i64 131, label %215
    i64 139, label %223
    i64 143, label %231
    i64 142, label %231
  ]

57:                                               ; preds = %43
  br label %235

58:                                               ; preds = %43
  %59 = load i8*, i8** %23, align 8
  store i8* %59, i8** %22, align 8
  br label %60

60:                                               ; preds = %43, %58
  %61 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %62 = load i8*, i8** %20, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = load i8*, i8** %22, align 8
  %65 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %62, i8* %63, i8* %64)
  br label %235

66:                                               ; preds = %43
  store i32 2, i32* %24, align 4
  br label %67

67:                                               ; preds = %43, %66
  %68 = load i32, i32* %24, align 4
  %69 = mul i32 %68, 2
  store i32 %69, i32* %24, align 4
  br label %70

70:                                               ; preds = %43, %67
  %71 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %72 = load i8*, i8** %20, align 8
  %73 = load i8*, i8** %19, align 8
  %74 = load i8*, i8** %22, align 8
  %75 = load i8*, i8** %23, align 8
  %76 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %72, i8* %73, i8* %74, i8* %75)
  br label %235

77:                                               ; preds = %43
  store i32 2, i32* %24, align 4
  br label %78

78:                                               ; preds = %43, %77
  %79 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %80 = load i8*, i8** %23, align 8
  %81 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %80)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %23, align 8
  br label %82

82:                                               ; preds = %43, %78
  %83 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %84 = load i8*, i8** %20, align 8
  %85 = load i8*, i8** %19, align 8
  %86 = load i8*, i8** %22, align 8
  %87 = load i8*, i8** %23, align 8
  %88 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %83, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %84, i8* %85, i8* %86, i8* %87)
  br label %235

89:                                               ; preds = %43
  %90 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %91 = load i8*, i8** %20, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = load i8*, i8** %22, align 8
  %94 = load i8*, i8** %23, align 8
  %95 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %91, i8* %92, i8* %93, i8* %94)
  br label %235

96:                                               ; preds = %43
  %97 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %98 = load i8*, i8** %22, align 8
  %99 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %97, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %98)
  %100 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %101 = load i8*, i8** %20, align 8
  %102 = load i8*, i8** %19, align 8
  %103 = load i8*, i8** %23, align 8
  %104 = load i8*, i8** %22, align 8
  %105 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i8* %101, i8* %102, i8* %103, i8* %104)
  br label %235

106:                                              ; preds = %43
  %107 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i64, i64* @WINED3DTA_CURRENT, align 8
  %110 = call i8* @get_argreg(%struct.wined3d_string_buffer* %107, i32 0, i32 %108, i64 %109)
  store i8* %110, i8** %21, align 8
  %111 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %112 = load i8*, i8** %20, align 8
  %113 = load i8*, i8** %19, align 8
  %114 = load i8*, i8** %21, align 8
  %115 = load i8*, i8** %22, align 8
  %116 = load i8*, i8** %23, align 8
  %117 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %112, i8* %113, i8* %114, i8* %115, i8* %116)
  br label %235

118:                                              ; preds = %43
  %119 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load i64, i64* @WINED3DTA_TFACTOR, align 8
  %122 = call i8* @get_argreg(%struct.wined3d_string_buffer* %119, i32 0, i32 %120, i64 %121)
  store i8* %122, i8** %21, align 8
  %123 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %124 = load i8*, i8** %20, align 8
  %125 = load i8*, i8** %19, align 8
  %126 = load i8*, i8** %21, align 8
  %127 = load i8*, i8** %22, align 8
  %128 = load i8*, i8** %23, align 8
  %129 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %123, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %124, i8* %125, i8* %126, i8* %127, i8* %128)
  br label %235

130:                                              ; preds = %43
  %131 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %134 = call i8* @get_argreg(%struct.wined3d_string_buffer* %131, i32 0, i32 %132, i64 %133)
  store i8* %134, i8** %21, align 8
  %135 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %136 = load i8*, i8** %20, align 8
  %137 = load i8*, i8** %19, align 8
  %138 = load i8*, i8** %21, align 8
  %139 = load i8*, i8** %22, align 8
  %140 = load i8*, i8** %23, align 8
  %141 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %135, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %136, i8* %137, i8* %138, i8* %139, i8* %140)
  br label %235

142:                                              ; preds = %43
  %143 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i64, i64* @WINED3DTA_DIFFUSE, align 8
  %146 = call i8* @get_argreg(%struct.wined3d_string_buffer* %143, i32 0, i32 %144, i64 %145)
  store i8* %146, i8** %21, align 8
  %147 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %148 = load i8*, i8** %20, align 8
  %149 = load i8*, i8** %19, align 8
  %150 = load i8*, i8** %21, align 8
  %151 = load i8*, i8** %22, align 8
  %152 = load i8*, i8** %23, align 8
  %153 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %148, i8* %149, i8* %150, i8* %151, i8* %152)
  br label %235

154:                                              ; preds = %43
  %155 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %156 = load i32, i32* %11, align 4
  %157 = load i64, i64* @WINED3DTA_TEXTURE, align 8
  %158 = call i8* @get_argreg(%struct.wined3d_string_buffer* %155, i32 0, i32 %156, i64 %157)
  store i8* %158, i8** %21, align 8
  %159 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %160 = load i8*, i8** %21, align 8
  %161 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i8* %160)
  %162 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %163 = load i8*, i8** %20, align 8
  %164 = load i8*, i8** %19, align 8
  %165 = load i8*, i8** %23, align 8
  %166 = load i8*, i8** %22, align 8
  %167 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0), i8* %163, i8* %164, i8* %165, i8* %166)
  br label %235

168:                                              ; preds = %43
  %169 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %170 = load i8*, i8** %22, align 8
  %171 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8* %170)
  %172 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %173 = load i8*, i8** %20, align 8
  %174 = load i8*, i8** %19, align 8
  %175 = load i8*, i8** %23, align 8
  %176 = load i8*, i8** %22, align 8
  %177 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %172, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* %173, i8* %174, i8* %175, i8* %176)
  br label %235

178:                                              ; preds = %43
  %179 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %180 = load i8*, i8** %20, align 8
  %181 = load i8*, i8** %19, align 8
  %182 = load i8*, i8** %22, align 8
  %183 = load i8*, i8** %23, align 8
  %184 = load i8*, i8** %22, align 8
  %185 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %179, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i8* %180, i8* %181, i8* %182, i8* %183, i8* %184)
  br label %235

186:                                              ; preds = %43
  %187 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %188 = load i8*, i8** %22, align 8
  %189 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %187, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0), i8* %188)
  %190 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %191 = load i8*, i8** %20, align 8
  %192 = load i8*, i8** %19, align 8
  %193 = load i8*, i8** %23, align 8
  %194 = load i8*, i8** %22, align 8
  %195 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %190, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i8* %191, i8* %192, i8* %193, i8* %194)
  br label %235

196:                                              ; preds = %43
  %197 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %198 = load i8*, i8** %20, align 8
  %199 = load i8*, i8** %19, align 8
  %200 = load i8*, i8** %22, align 8
  %201 = load i8*, i8** %23, align 8
  %202 = load i8*, i8** %22, align 8
  %203 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %197, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), i8* %198, i8* %199, i8* %200, i8* %201, i8* %202)
  br label %235

204:                                              ; preds = %43
  store i32 4, i32* %24, align 4
  %205 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %206 = load i8*, i8** %22, align 8
  %207 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %205, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i8* %206)
  %208 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %209 = load i8*, i8** %23, align 8
  %210 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %208, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %209)
  %211 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %212 = load i8*, i8** %20, align 8
  %213 = load i8*, i8** %19, align 8
  %214 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %211, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8* %212, i8* %213)
  br label %235

215:                                              ; preds = %43
  %216 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %217 = load i8*, i8** %20, align 8
  %218 = load i8*, i8** %19, align 8
  %219 = load i8*, i8** %22, align 8
  %220 = load i8*, i8** %23, align 8
  %221 = load i8*, i8** %21, align 8
  %222 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %216, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i8* %217, i8* %218, i8* %219, i8* %220, i8* %221)
  br label %235

223:                                              ; preds = %43
  %224 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %225 = load i8*, i8** %20, align 8
  %226 = load i8*, i8** %19, align 8
  %227 = load i8*, i8** %21, align 8
  %228 = load i8*, i8** %22, align 8
  %229 = load i8*, i8** %23, align 8
  %230 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i8* %225, i8* %226, i8* %227, i8* %228, i8* %229)
  br label %235

231:                                              ; preds = %43, %43
  br label %235

232:                                              ; preds = %43
  %233 = load i64, i64* %15, align 8
  %234 = call i32 @FIXME(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i64 %233)
  br label %235

235:                                              ; preds = %232, %231, %223, %215, %204, %196, %186, %178, %168, %154, %142, %130, %118, %106, %96, %89, %82, %70, %60, %57
  %236 = load i32, i32* %24, align 4
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %238, label %244

238:                                              ; preds = %235
  %239 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %240 = load i8*, i8** %20, align 8
  %241 = load i8*, i8** %19, align 8
  %242 = load i8*, i8** %20, align 8
  %243 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %239, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i8* %240, i8* %241, i8* %242)
  br label %254

244:                                              ; preds = %235
  %245 = load i32, i32* %24, align 4
  %246 = icmp eq i32 %245, 4
  br i1 %246, label %247, label %253

247:                                              ; preds = %244
  %248 = load %struct.wined3d_string_buffer*, %struct.wined3d_string_buffer** %10, align 8
  %249 = load i8*, i8** %20, align 8
  %250 = load i8*, i8** %19, align 8
  %251 = load i8*, i8** %20, align 8
  %252 = call i32 (%struct.wined3d_string_buffer*, i8*, i8*, ...) @shader_addline(%struct.wined3d_string_buffer* %248, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i64 0, i64 0), i8* %249, i8* %250, i8* %251)
  br label %253

253:                                              ; preds = %247, %244
  br label %254

254:                                              ; preds = %253, %238
  ret void
}

declare dso_local i8* @get_argreg(%struct.wined3d_string_buffer*, i32, i32, i64) #1

declare dso_local i32 @shader_addline(%struct.wined3d_string_buffer*, i8*, i8*, ...) #1

declare dso_local i32 @FIXME(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
