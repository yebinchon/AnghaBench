; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_get_obj_param.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_get_obj_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_log = type { i32 }
%struct.m_config = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"@%d\00", align 1
@M_OPT_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Option %.*s: %.*s doesn't have a %.*s parameter.\0A\00", align 1
@M_OPT_EXIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Option %.*s: Error while parsing %.*s parameter %.*s (%.*s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [86 x i8] c"Option %.*s: %.*s has only %d params, so you can't give more than %d unnamed params.\0A\00", align 1
@M_OPT_OUT_OF_RANGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"Option %.*s: Error while parsing %.*s parameter %s (%.*s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mp_log*, i64, i64, i64, i64, %struct.m_config*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32, i32, i32*, %struct.TYPE_13__*, %struct.TYPE_13__*, i8*, i64)* @get_obj_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_obj_param(%struct.mp_log* %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.m_config* %5, %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %6, %struct.TYPE_13__* byval(%struct.TYPE_13__) align 8 %7, i32 %8, i32 %9, i32* %10, %struct.TYPE_13__* %11, %struct.TYPE_13__* %12, i8* %13, i64 %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_13__, align 8
  %18 = alloca %struct.TYPE_13__, align 8
  %19 = alloca %struct.mp_log*, align 8
  %20 = alloca %struct.m_config*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_13__*, align 8
  %25 = alloca %struct.TYPE_13__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_13__, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.TYPE_13__, align 8
  %32 = alloca %struct.TYPE_13__, align 8
  %33 = bitcast %struct.TYPE_13__* %17 to { i64, i64 }*
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 0
  store i64 %1, i64* %34, align 8
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %33, i32 0, i32 1
  store i64 %2, i64* %35, align 8
  %36 = bitcast %struct.TYPE_13__* %18 to { i64, i64 }*
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 0
  store i64 %3, i64* %37, align 8
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %36, i32 0, i32 1
  store i64 %4, i64* %38, align 8
  store %struct.mp_log* %0, %struct.mp_log** %19, align 8
  store %struct.m_config* %5, %struct.m_config** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %25, align 8
  store i8* %13, i8** %26, align 8
  store i64 %14, i64* %27, align 8
  %39 = load %struct.m_config*, %struct.m_config** %20, align 8
  %40 = icmp ne %struct.m_config* %39, null
  br i1 %40, label %88, label %41

41:                                               ; preds = %15
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %22, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %45, %41
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %50 = bitcast %struct.TYPE_13__* %49 to i8*
  %51 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %53 = bitcast %struct.TYPE_13__* %52 to i8*
  %54 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 %54, i64 16, i1 false)
  br label %87

55:                                               ; preds = %45
  %56 = bitcast %struct.TYPE_13__* %7 to i8*
  %57 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 16, i1 false)
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32*, i32** %23, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  store i32 0, i32* %16, align 4
  br label %291

65:                                               ; preds = %55
  %66 = load i8*, i8** %26, align 8
  %67 = load i64, i64* %27, align 8
  %68 = load i32*, i32** %23, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @snprintf(i8* %66, i64 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %72 = load i8*, i8** %26, align 8
  %73 = call { i64, i64 } @bstr0(i8* %72)
  %74 = bitcast %struct.TYPE_13__* %29 to { i64, i64 }*
  %75 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 0
  %76 = extractvalue { i64, i64 } %73, 0
  store i64 %76, i64* %75, align 8
  %77 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %74, i32 0, i32 1
  %78 = extractvalue { i64, i64 } %73, 1
  store i64 %78, i64* %77, align 8
  %79 = bitcast %struct.TYPE_13__* %71 to i8*
  %80 = bitcast %struct.TYPE_13__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 16, i1 false)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %82 = bitcast %struct.TYPE_13__* %81 to i8*
  %83 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 16, i1 false)
  %84 = load i32*, i32** %23, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %65, %48
  store i32 1, i32* %16, align 4
  br label %291

88:                                               ; preds = %15
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %88
  %93 = load %struct.m_config*, %struct.m_config** %20, align 8
  %94 = bitcast %struct.TYPE_13__* %6 to { i64, i64 }*
  %95 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %94, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i64 @m_config_option_requires_param(%struct.m_config* %93, i64 %96, i64 %98)
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* %22, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %186

104:                                              ; preds = %101, %92, %88
  %105 = load %struct.m_config*, %struct.m_config** %20, align 8
  %106 = load i32, i32* %21, align 4
  %107 = bitcast %struct.TYPE_13__* %6 to { i64, i64 }*
  %108 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %107, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = bitcast %struct.TYPE_13__* %7 to { i64, i64 }*
  %113 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %112, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @m_config_set_option_cli(%struct.m_config* %105, i64 %109, i64 %111, i64 %114, i64 %116, i32 %106)
  store i32 %117, i32* %28, align 4
  %118 = load i32, i32* %28, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %179

120:                                              ; preds = %104
  %121 = load i32, i32* %28, align 4
  %122 = load i32, i32* @M_OPT_UNKNOWN, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %120
  %125 = load %struct.mp_log*, %struct.mp_log** %19, align 8
  %126 = bitcast %struct.TYPE_13__* %17 to { i64, i64 }*
  %127 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %126, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @BSTR_P(i64 %128, i64 %130)
  %132 = bitcast %struct.TYPE_13__* %18 to { i64, i64 }*
  %133 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %132, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = call i8* @BSTR_P(i64 %134, i64 %136)
  %138 = bitcast %struct.TYPE_13__* %6 to { i64, i64 }*
  %139 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %138, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @BSTR_P(i64 %140, i64 %142)
  %144 = call i32 (%struct.mp_log*, i8*, i8*, i8*, ...) @mp_err(%struct.mp_log* %125, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %131, i8* %137, i8* %143)
  %145 = load i32, i32* @M_OPT_UNKNOWN, align 4
  store i32 %145, i32* %16, align 4
  br label %291

146:                                              ; preds = %120
  %147 = load i32, i32* %28, align 4
  %148 = load i32, i32* @M_OPT_EXIT, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %177

150:                                              ; preds = %146
  %151 = load %struct.mp_log*, %struct.mp_log** %19, align 8
  %152 = bitcast %struct.TYPE_13__* %17 to { i64, i64 }*
  %153 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %152, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = call i8* @BSTR_P(i64 %154, i64 %156)
  %158 = bitcast %struct.TYPE_13__* %18 to { i64, i64 }*
  %159 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %158, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i8* @BSTR_P(i64 %160, i64 %162)
  %164 = bitcast %struct.TYPE_13__* %6 to { i64, i64 }*
  %165 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %164, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i8* @BSTR_P(i64 %166, i64 %168)
  %170 = bitcast %struct.TYPE_13__* %7 to { i64, i64 }*
  %171 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %170, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = call i8* @BSTR_P(i64 %172, i64 %174)
  %176 = call i32 (%struct.mp_log*, i8*, i8*, i8*, ...) @mp_err(%struct.mp_log* %151, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* %157, i8* %163, i8* %169, i8* %175)
  br label %177

177:                                              ; preds = %150, %146
  %178 = load i32, i32* %28, align 4
  store i32 %178, i32* %16, align 4
  br label %291

179:                                              ; preds = %104
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %181 = bitcast %struct.TYPE_13__* %180 to i8*
  %182 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %181, i8* align 8 %182, i64 16, i1 false)
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %184 = bitcast %struct.TYPE_13__* %183 to i8*
  %185 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %184, i8* align 8 %185, i64 16, i1 false)
  store i32 1, i32* %16, align 4
  br label %291

186:                                              ; preds = %101
  %187 = bitcast %struct.TYPE_13__* %7 to i8*
  %188 = bitcast %struct.TYPE_13__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %187, i8* align 8 %188, i64 16, i1 false)
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = load i32*, i32** %23, align 8
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 4
  store i32 0, i32* %16, align 4
  br label %291

196:                                              ; preds = %186
  %197 = load %struct.m_config*, %struct.m_config** %20, align 8
  %198 = load i32*, i32** %23, align 8
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @m_config_get_positional_option(%struct.m_config* %197, i32 %199)
  store i8* %200, i8** %30, align 8
  %201 = load i8*, i8** %30, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %223, label %203

203:                                              ; preds = %196
  %204 = load %struct.mp_log*, %struct.mp_log** %19, align 8
  %205 = bitcast %struct.TYPE_13__* %17 to { i64, i64 }*
  %206 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %205, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = call i8* @BSTR_P(i64 %207, i64 %209)
  %211 = bitcast %struct.TYPE_13__* %18 to { i64, i64 }*
  %212 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %211, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = call i8* @BSTR_P(i64 %213, i64 %215)
  %217 = load i32*, i32** %23, align 8
  %218 = load i32, i32* %217, align 4
  %219 = load i32*, i32** %23, align 8
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (%struct.mp_log*, i8*, i8*, i8*, ...) @mp_err(%struct.mp_log* %204, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0), i8* %210, i8* %216, i32 %218, i32 %220)
  %222 = load i32, i32* @M_OPT_OUT_OF_RANGE, align 4
  store i32 %222, i32* %16, align 4
  br label %291

223:                                              ; preds = %196
  %224 = load %struct.m_config*, %struct.m_config** %20, align 8
  %225 = load i8*, i8** %30, align 8
  %226 = call { i64, i64 } @bstr0(i8* %225)
  %227 = bitcast %struct.TYPE_13__* %31 to { i64, i64 }*
  %228 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %227, i32 0, i32 0
  %229 = extractvalue { i64, i64 } %226, 0
  store i64 %229, i64* %228, align 8
  %230 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %227, i32 0, i32 1
  %231 = extractvalue { i64, i64 } %226, 1
  store i64 %231, i64* %230, align 8
  %232 = load i32, i32* %21, align 4
  %233 = bitcast %struct.TYPE_13__* %31 to { i64, i64 }*
  %234 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %233, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = bitcast %struct.TYPE_13__* %7 to { i64, i64 }*
  %239 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %238, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @m_config_set_option_cli(%struct.m_config* %224, i64 %235, i64 %237, i64 %240, i64 %242, i32 %232)
  store i32 %243, i32* %28, align 4
  %244 = load i32, i32* %28, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %274

246:                                              ; preds = %223
  %247 = load i32, i32* %28, align 4
  %248 = load i32, i32* @M_OPT_EXIT, align 4
  %249 = icmp ne i32 %247, %248
  br i1 %249, label %250, label %272

250:                                              ; preds = %246
  %251 = load %struct.mp_log*, %struct.mp_log** %19, align 8
  %252 = bitcast %struct.TYPE_13__* %17 to { i64, i64 }*
  %253 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %252, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = call i8* @BSTR_P(i64 %254, i64 %256)
  %258 = bitcast %struct.TYPE_13__* %18 to { i64, i64 }*
  %259 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %258, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = call i8* @BSTR_P(i64 %260, i64 %262)
  %264 = load i8*, i8** %30, align 8
  %265 = bitcast %struct.TYPE_13__* %7 to { i64, i64 }*
  %266 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %265, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = call i8* @BSTR_P(i64 %267, i64 %269)
  %271 = call i32 (%struct.mp_log*, i8*, i8*, i8*, ...) @mp_err(%struct.mp_log* %251, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i8* %257, i8* %263, i8* %264, i8* %270)
  br label %272

272:                                              ; preds = %250, %246
  %273 = load i32, i32* %28, align 4
  store i32 %273, i32* %16, align 4
  br label %291

274:                                              ; preds = %223
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %276 = load i8*, i8** %30, align 8
  %277 = call { i64, i64 } @bstr0(i8* %276)
  %278 = bitcast %struct.TYPE_13__* %32 to { i64, i64 }*
  %279 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %278, i32 0, i32 0
  %280 = extractvalue { i64, i64 } %277, 0
  store i64 %280, i64* %279, align 8
  %281 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %278, i32 0, i32 1
  %282 = extractvalue { i64, i64 } %277, 1
  store i64 %282, i64* %281, align 8
  %283 = bitcast %struct.TYPE_13__* %275 to i8*
  %284 = bitcast %struct.TYPE_13__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %283, i8* align 8 %284, i64 16, i1 false)
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %286 = bitcast %struct.TYPE_13__* %285 to i8*
  %287 = bitcast %struct.TYPE_13__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %286, i8* align 8 %287, i64 16, i1 false)
  %288 = load i32*, i32** %23, align 8
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %288, align 4
  store i32 1, i32* %16, align 4
  br label %291

291:                                              ; preds = %274, %272, %203, %192, %179, %177, %124, %87, %61
  %292 = load i32, i32* %16, align 4
  ret i32 %292
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #2

declare dso_local { i64, i64 } @bstr0(i8*) #2

declare dso_local i64 @m_config_option_requires_param(%struct.m_config*, i64, i64) #2

declare dso_local i32 @m_config_set_option_cli(%struct.m_config*, i64, i64, i64, i64, i32) #2

declare dso_local i32 @mp_err(%struct.mp_log*, i8*, i8*, i8*, ...) #2

declare dso_local i8* @BSTR_P(i64, i64) #2

declare dso_local i8* @m_config_get_positional_option(%struct.m_config*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
