; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_init_ps_input.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/wined3d/extr_arb_program_shader.c_init_ps_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wined3d_shader = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.wined3d_shader_signature_element* }
%struct.wined3d_shader_signature_element = type { i8*, i32, i64 }
%struct.arb_ps_compile_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.shader_arb_ctx_priv = type { i8** }

@init_ps_input.texcoords = internal constant [8 x i8*] [i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [21 x i8] c"fragment.texcoord[0]\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"fragment.texcoord[1]\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"fragment.texcoord[2]\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"fragment.texcoord[3]\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"fragment.texcoord[4]\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"fragment.texcoord[5]\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"fragment.texcoord[6]\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"fragment.texcoord[7]\00", align 1
@WINED3D_DECL_USAGE_COLOR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"fragment.color.primary\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"fragment.color.secondary\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"0.0\00", align 1
@WINED3D_DECL_USAGE_TEXCOORD = common dso_local global i32 0, align 4
@WINED3D_DECL_USAGE_FOG = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"fragment.fogcoord\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"v%u, semantic %s%u is %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wined3d_shader*, %struct.arb_ps_compile_args*, %struct.shader_arb_ctx_priv*)* @init_ps_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ps_input(%struct.wined3d_shader* %0, %struct.arb_ps_compile_args* %1, %struct.shader_arb_ctx_priv* %2) #0 {
  %4 = alloca %struct.wined3d_shader*, align 8
  %5 = alloca %struct.arb_ps_compile_args*, align 8
  %6 = alloca %struct.shader_arb_ctx_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wined3d_shader_signature_element*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.wined3d_shader* %0, %struct.wined3d_shader** %4, align 8
  store %struct.arb_ps_compile_args* %1, %struct.arb_ps_compile_args** %5, align 8
  store %struct.shader_arb_ctx_priv* %2, %struct.shader_arb_ctx_priv** %6, align 8
  %11 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %5, align 8
  %12 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %201 [
    i32 129, label %15
    i32 130, label %15
    i32 128, label %174
  ]

15:                                               ; preds = %3, %3
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %170, %15
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %19 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ult i32 %17, %21
  br i1 %22, label %23, label %173

23:                                               ; preds = %16
  %24 = load %struct.wined3d_shader*, %struct.wined3d_shader** %4, align 8
  %25 = getelementptr inbounds %struct.wined3d_shader, %struct.wined3d_shader* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %27, i64 %29
  store %struct.wined3d_shader_signature_element* %30, %struct.wined3d_shader_signature_element** %8, align 8
  %31 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %32 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %170

36:                                               ; preds = %23
  %37 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %38 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* @WINED3D_DECL_USAGE_COLOR, align 4
  %42 = call i32 @shader_match_semantic(i8* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %49 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %52 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8** %54, align 8
  br label %75

55:                                               ; preds = %44
  %56 = load i32, i32* %10, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %60 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %59, i32 0, i32 0
  %61 = load i8**, i8*** %60, align 8
  %62 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %63 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8** %65, align 8
  br label %74

66:                                               ; preds = %55
  %67 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %68 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %67, i32 0, i32 0
  %69 = load i8**, i8*** %68, align 8
  %70 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %71 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i8*, i8** %69, i64 %72
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %73, align 8
  br label %74

74:                                               ; preds = %66, %58
  br label %75

75:                                               ; preds = %74, %47
  br label %155

76:                                               ; preds = %36
  %77 = load %struct.arb_ps_compile_args*, %struct.arb_ps_compile_args** %5, align 8
  %78 = getelementptr inbounds %struct.arb_ps_compile_args, %struct.arb_ps_compile_args* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 130
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %84 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %83, i32 0, i32 0
  %85 = load i8**, i8*** %84, align 8
  %86 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %87 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %89, align 8
  br label %154

90:                                               ; preds = %76
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* @WINED3D_DECL_USAGE_TEXCOORD, align 4
  %93 = call i32 @shader_match_semantic(i8* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 8
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [8 x i8*], [8 x i8*]* @init_ps_input.texcoords, i64 0, i64 %100
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %104 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %103, i32 0, i32 0
  %105 = load i8**, i8*** %104, align 8
  %106 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %107 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i8*, i8** %105, i64 %108
  store i8* %102, i8** %109, align 8
  br label %118

110:                                              ; preds = %95
  %111 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %112 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %115 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i8*, i8** %113, i64 %116
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %117, align 8
  br label %118

118:                                              ; preds = %110, %98
  br label %153

119:                                              ; preds = %90
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* @WINED3D_DECL_USAGE_FOG, align 4
  %122 = call i32 @shader_match_semantic(i8* %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %144

124:                                              ; preds = %119
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %124
  %128 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %129 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %128, i32 0, i32 0
  %130 = load i8**, i8*** %129, align 8
  %131 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %132 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds i8*, i8** %130, i64 %133
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %134, align 8
  br label %143

135:                                              ; preds = %124
  %136 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %137 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %136, i32 0, i32 0
  %138 = load i8**, i8*** %137, align 8
  %139 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %140 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i8*, i8** %138, i64 %141
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %142, align 8
  br label %143

143:                                              ; preds = %135, %127
  br label %152

144:                                              ; preds = %119
  %145 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %146 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %145, i32 0, i32 0
  %147 = load i8**, i8*** %146, align 8
  %148 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %149 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i8*, i8** %147, i64 %150
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %151, align 8
  br label %152

152:                                              ; preds = %144, %143
  br label %153

153:                                              ; preds = %152, %118
  br label %154

154:                                              ; preds = %153, %82
  br label %155

155:                                              ; preds = %154, %75
  %156 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %157 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %162 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %161, i32 0, i32 0
  %163 = load i8**, i8*** %162, align 8
  %164 = load %struct.wined3d_shader_signature_element*, %struct.wined3d_shader_signature_element** %8, align 8
  %165 = getelementptr inbounds %struct.wined3d_shader_signature_element, %struct.wined3d_shader_signature_element* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i8*, i8** %163, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i64 %158, i8* %159, i32 %160, i8* %168)
  br label %170

170:                                              ; preds = %155, %35
  %171 = load i32, i32* %7, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %16

173:                                              ; preds = %16
  br label %201

174:                                              ; preds = %3
  store i32 0, i32* %7, align 4
  br label %175

175:                                              ; preds = %189, %174
  %176 = load i32, i32* %7, align 4
  %177 = icmp ult i32 %176, 8
  br i1 %177, label %178, label %192

178:                                              ; preds = %175
  %179 = load i32, i32* %7, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [8 x i8*], [8 x i8*]* @init_ps_input.texcoords, i64 0, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %184 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %183, i32 0, i32 0
  %185 = load i8**, i8*** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i8*, i8** %185, i64 %187
  store i8* %182, i8** %188, align 8
  br label %189

189:                                              ; preds = %178
  %190 = load i32, i32* %7, align 4
  %191 = add i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %175

192:                                              ; preds = %175
  %193 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %194 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %193, i32 0, i32 0
  %195 = load i8**, i8*** %194, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8** %196, align 8
  %197 = load %struct.shader_arb_ctx_priv*, %struct.shader_arb_ctx_priv** %6, align 8
  %198 = getelementptr inbounds %struct.shader_arb_ctx_priv, %struct.shader_arb_ctx_priv* %197, i32 0, i32 0
  %199 = load i8**, i8*** %198, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 9
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8** %200, align 8
  br label %201

201:                                              ; preds = %3, %192, %173
  ret void
}

declare dso_local i32 @shader_match_semantic(i8*, i32) #1

declare dso_local i32 @TRACE(i8*, i64, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
