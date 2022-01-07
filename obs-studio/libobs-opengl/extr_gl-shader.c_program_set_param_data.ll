; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_program_set_param_data.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-shader.c_program_set_param_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gs_program = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32** }
%struct.program_param = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@GS_SHADER_PARAM_BOOL = common dso_local global i64 0, align 8
@GS_SHADER_PARAM_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"glUniform1iv\00", align 1
@GS_SHADER_PARAM_INT2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"glUniform2iv\00", align 1
@GS_SHADER_PARAM_INT3 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"glUniform3iv\00", align 1
@GS_SHADER_PARAM_INT4 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"glUniform4iv\00", align 1
@GS_SHADER_PARAM_FLOAT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"glUniform1fv\00", align 1
@GS_SHADER_PARAM_VEC2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"glUniform2fv\00", align 1
@GS_SHADER_PARAM_VEC3 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"glUniform3fv\00", align 1
@GS_SHADER_PARAM_VEC4 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [13 x i8] c"glUniform4fv\00", align 1
@GS_SHADER_PARAM_MATRIX4X4 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"glUniformMatrix4fv\00", align 1
@GS_SHADER_PARAM_TEXTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gs_program*, %struct.program_param*)* @program_set_param_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_set_param_data(%struct.gs_program* %0, %struct.program_param* %1) #0 {
  %3 = alloca %struct.gs_program*, align 8
  %4 = alloca %struct.program_param*, align 8
  %5 = alloca i8*, align 8
  store %struct.gs_program* %0, %struct.gs_program** %3, align 8
  store %struct.program_param* %1, %struct.program_param** %4, align 8
  %6 = load %struct.program_param*, %struct.program_param** %4, align 8
  %7 = getelementptr inbounds %struct.program_param, %struct.program_param* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load %struct.program_param*, %struct.program_param** %4, align 8
  %13 = getelementptr inbounds %struct.program_param, %struct.program_param* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GS_SHADER_PARAM_BOOL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %2
  %20 = load %struct.program_param*, %struct.program_param** %4, align 8
  %21 = getelementptr inbounds %struct.program_param, %struct.program_param* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GS_SHADER_PARAM_INT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %19, %2
  %28 = load %struct.program_param*, %struct.program_param** %4, align 8
  %29 = call i64 @validate_param(%struct.program_param* %28, i32 4)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.program_param*, %struct.program_param** %4, align 8
  %33 = getelementptr inbounds %struct.program_param, %struct.program_param* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = call i32 @glUniform1iv(i32 %34, i32 1, i32* %36)
  %38 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %31, %27
  br label %277

40:                                               ; preds = %19
  %41 = load %struct.program_param*, %struct.program_param** %4, align 8
  %42 = getelementptr inbounds %struct.program_param, %struct.program_param* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @GS_SHADER_PARAM_INT2, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %40
  %49 = load %struct.program_param*, %struct.program_param** %4, align 8
  %50 = call i64 @validate_param(%struct.program_param* %49, i32 8)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load %struct.program_param*, %struct.program_param** %4, align 8
  %54 = getelementptr inbounds %struct.program_param, %struct.program_param* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = bitcast i8* %56 to i32*
  %58 = call i32 @glUniform2iv(i32 %55, i32 1, i32* %57)
  %59 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %52, %48
  br label %276

61:                                               ; preds = %40
  %62 = load %struct.program_param*, %struct.program_param** %4, align 8
  %63 = getelementptr inbounds %struct.program_param, %struct.program_param* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @GS_SHADER_PARAM_INT3, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = load %struct.program_param*, %struct.program_param** %4, align 8
  %71 = call i64 @validate_param(%struct.program_param* %70, i32 12)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.program_param*, %struct.program_param** %4, align 8
  %75 = getelementptr inbounds %struct.program_param, %struct.program_param* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = bitcast i8* %77 to i32*
  %79 = call i32 @glUniform3iv(i32 %76, i32 1, i32* %78)
  %80 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %73, %69
  br label %275

82:                                               ; preds = %61
  %83 = load %struct.program_param*, %struct.program_param** %4, align 8
  %84 = getelementptr inbounds %struct.program_param, %struct.program_param* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @GS_SHADER_PARAM_INT4, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %82
  %91 = load %struct.program_param*, %struct.program_param** %4, align 8
  %92 = call i64 @validate_param(%struct.program_param* %91, i32 16)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %90
  %95 = load %struct.program_param*, %struct.program_param** %4, align 8
  %96 = getelementptr inbounds %struct.program_param, %struct.program_param* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = call i32 @glUniform4iv(i32 %97, i32 1, i32* %99)
  %101 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %94, %90
  br label %274

103:                                              ; preds = %82
  %104 = load %struct.program_param*, %struct.program_param** %4, align 8
  %105 = getelementptr inbounds %struct.program_param, %struct.program_param* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @GS_SHADER_PARAM_FLOAT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %103
  %112 = load %struct.program_param*, %struct.program_param** %4, align 8
  %113 = call i64 @validate_param(%struct.program_param* %112, i32 4)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load %struct.program_param*, %struct.program_param** %4, align 8
  %117 = getelementptr inbounds %struct.program_param, %struct.program_param* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = bitcast i8* %119 to float*
  %121 = call i32 @glUniform1fv(i32 %118, i32 1, float* %120)
  %122 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %123

123:                                              ; preds = %115, %111
  br label %273

124:                                              ; preds = %103
  %125 = load %struct.program_param*, %struct.program_param** %4, align 8
  %126 = getelementptr inbounds %struct.program_param, %struct.program_param* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @GS_SHADER_PARAM_VEC2, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %124
  %133 = load %struct.program_param*, %struct.program_param** %4, align 8
  %134 = call i64 @validate_param(%struct.program_param* %133, i32 4)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load %struct.program_param*, %struct.program_param** %4, align 8
  %138 = getelementptr inbounds %struct.program_param, %struct.program_param* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i8*, i8** %5, align 8
  %141 = bitcast i8* %140 to float*
  %142 = call i32 @glUniform2fv(i32 %139, i32 1, float* %141)
  %143 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %144

144:                                              ; preds = %136, %132
  br label %272

145:                                              ; preds = %124
  %146 = load %struct.program_param*, %struct.program_param** %4, align 8
  %147 = getelementptr inbounds %struct.program_param, %struct.program_param* %146, i32 0, i32 0
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @GS_SHADER_PARAM_VEC3, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %145
  %154 = load %struct.program_param*, %struct.program_param** %4, align 8
  %155 = call i64 @validate_param(%struct.program_param* %154, i32 12)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load %struct.program_param*, %struct.program_param** %4, align 8
  %159 = getelementptr inbounds %struct.program_param, %struct.program_param* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load i8*, i8** %5, align 8
  %162 = bitcast i8* %161 to float*
  %163 = call i32 @glUniform3fv(i32 %160, i32 1, float* %162)
  %164 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %165

165:                                              ; preds = %157, %153
  br label %271

166:                                              ; preds = %145
  %167 = load %struct.program_param*, %struct.program_param** %4, align 8
  %168 = getelementptr inbounds %struct.program_param, %struct.program_param* %167, i32 0, i32 0
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @GS_SHADER_PARAM_VEC4, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %166
  %175 = load %struct.program_param*, %struct.program_param** %4, align 8
  %176 = call i64 @validate_param(%struct.program_param* %175, i32 4)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %174
  %179 = load %struct.program_param*, %struct.program_param** %4, align 8
  %180 = getelementptr inbounds %struct.program_param, %struct.program_param* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i8*, i8** %5, align 8
  %183 = bitcast i8* %182 to float*
  %184 = call i32 @glUniform4fv(i32 %181, i32 1, float* %183)
  %185 = call i32 @gl_success(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %186

186:                                              ; preds = %178, %174
  br label %270

187:                                              ; preds = %166
  %188 = load %struct.program_param*, %struct.program_param** %4, align 8
  %189 = getelementptr inbounds %struct.program_param, %struct.program_param* %188, i32 0, i32 0
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @GS_SHADER_PARAM_MATRIX4X4, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %208

195:                                              ; preds = %187
  %196 = load %struct.program_param*, %struct.program_param** %4, align 8
  %197 = call i64 @validate_param(%struct.program_param* %196, i32 4)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %195
  %200 = load %struct.program_param*, %struct.program_param** %4, align 8
  %201 = getelementptr inbounds %struct.program_param, %struct.program_param* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load i8*, i8** %5, align 8
  %204 = bitcast i8* %203 to float*
  %205 = call i32 @glUniformMatrix4fv(i32 %202, i32 1, i32 0, float* %204)
  %206 = call i32 @gl_success(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %207

207:                                              ; preds = %199, %195
  br label %269

208:                                              ; preds = %187
  %209 = load %struct.program_param*, %struct.program_param** %4, align 8
  %210 = getelementptr inbounds %struct.program_param, %struct.program_param* %209, i32 0, i32 0
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @GS_SHADER_PARAM_TEXTURE, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %268

216:                                              ; preds = %208
  %217 = load %struct.program_param*, %struct.program_param** %4, align 8
  %218 = getelementptr inbounds %struct.program_param, %struct.program_param* %217, i32 0, i32 0
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 4
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %244

223:                                              ; preds = %216
  %224 = load %struct.program_param*, %struct.program_param** %4, align 8
  %225 = getelementptr inbounds %struct.program_param, %struct.program_param* %224, i32 0, i32 0
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.gs_program*, %struct.gs_program** %3, align 8
  %230 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %229, i32 0, i32 0
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i32**, i32*** %232, align 8
  %234 = load %struct.program_param*, %struct.program_param** %4, align 8
  %235 = getelementptr inbounds %struct.program_param, %struct.program_param* %234, i32 0, i32 0
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds i32*, i32** %233, i64 %238
  store i32* %228, i32** %239, align 8
  %240 = load %struct.program_param*, %struct.program_param** %4, align 8
  %241 = getelementptr inbounds %struct.program_param, %struct.program_param* %240, i32 0, i32 0
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 4
  store i32* null, i32** %243, align 8
  br label %244

244:                                              ; preds = %223, %216
  %245 = load %struct.program_param*, %struct.program_param** %4, align 8
  %246 = getelementptr inbounds %struct.program_param, %struct.program_param* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.program_param*, %struct.program_param** %4, align 8
  %249 = getelementptr inbounds %struct.program_param, %struct.program_param* %248, i32 0, i32 0
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @glUniform1i(i32 %247, i32 %252)
  %254 = load %struct.gs_program*, %struct.gs_program** %3, align 8
  %255 = getelementptr inbounds %struct.gs_program, %struct.gs_program* %254, i32 0, i32 0
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %255, align 8
  %257 = load %struct.program_param*, %struct.program_param** %4, align 8
  %258 = getelementptr inbounds %struct.program_param, %struct.program_param* %257, i32 0, i32 0
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.program_param*, %struct.program_param** %4, align 8
  %263 = getelementptr inbounds %struct.program_param, %struct.program_param* %262, i32 0, i32 0
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @device_load_texture(%struct.TYPE_6__* %256, i32 %261, i32 %266)
  br label %268

268:                                              ; preds = %244, %208
  br label %269

269:                                              ; preds = %268, %207
  br label %270

270:                                              ; preds = %269, %186
  br label %271

271:                                              ; preds = %270, %165
  br label %272

272:                                              ; preds = %271, %144
  br label %273

273:                                              ; preds = %272, %123
  br label %274

274:                                              ; preds = %273, %102
  br label %275

275:                                              ; preds = %274, %81
  br label %276

276:                                              ; preds = %275, %60
  br label %277

277:                                              ; preds = %276, %39
  ret void
}

declare dso_local i64 @validate_param(%struct.program_param*, i32) #1

declare dso_local i32 @glUniform1iv(i32, i32, i32*) #1

declare dso_local i32 @gl_success(i8*) #1

declare dso_local i32 @glUniform2iv(i32, i32, i32*) #1

declare dso_local i32 @glUniform3iv(i32, i32, i32*) #1

declare dso_local i32 @glUniform4iv(i32, i32, i32*) #1

declare dso_local i32 @glUniform1fv(i32, i32, float*) #1

declare dso_local i32 @glUniform2fv(i32, i32, float*) #1

declare dso_local i32 @glUniform3fv(i32, i32, float*) #1

declare dso_local i32 @glUniform4fv(i32, i32, float*) #1

declare dso_local i32 @glUniformMatrix4fv(i32, i32, i32, float*) #1

declare dso_local i32 @glUniform1i(i32, i32) #1

declare dso_local i32 @device_load_texture(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
