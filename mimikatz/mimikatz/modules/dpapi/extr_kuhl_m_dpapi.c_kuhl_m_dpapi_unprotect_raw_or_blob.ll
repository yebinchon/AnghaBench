; ModuleID = '/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi.c_kuhl_m_dpapi_unprotect_raw_or_blob.c'
source_filename = "/home/carl/AnghaBench/mimikatz/mimikatz/modules/dpapi/extr_kuhl_m_dpapi.c_kuhl_m_dpapi_unprotect_raw_or_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@FALSE = common dso_local global i64 0, align 8
@CRYPTPROTECT_PROMPT_ON_PROTECT = common dso_local global i32 0, align 4
@CRYPTPROTECT_PROMPT_ON_UNPROTECT = common dso_local global i32 0, align 4
@CRYPTPROTECT_PROMPT_STRONG = common dso_local global i32 0, align 4
@MIMIKATZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i32] [i32 117, i32 110, i32 112, i32 114, i32 111, i32 116, i32 101, i32 99, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 109, i32 97, i32 115, i32 116, i32 101, i32 114, i32 107, i32 101, i32 121, i32 0], align 4
@.str.2 = private unnamed_addr constant [9 x i32] [i32 112, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 0], align 4
@.str.3 = private unnamed_addr constant [8 x i32] [i32 101, i32 110, i32 116, i32 114, i32 111, i32 112, i32 121, i32 0], align 4
@.str.4 = private unnamed_addr constant [7 x i32] [i32 112, i32 114, i32 111, i32 109, i32 112, i32 116, i32 0], align 4
@.str.5 = private unnamed_addr constant [8 x i32] [i32 109, i32 97, i32 99, i32 104, i32 105, i32 110, i32 101, i32 0], align 4
@CRYPTPROTECT_LOCAL_MACHINE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4
@.str.7 = private unnamed_addr constant [33 x i32] [i32 32, i32 42, i32 32, i32 117, i32 115, i32 105, i32 110, i32 103, i32 32, i32 67, i32 114, i32 121, i32 112, i32 116, i32 85, i32 110, i32 112, i32 114, i32 111, i32 116, i32 101, i32 99, i32 116, i32 68, i32 97, i32 116, i32 97, i32 32, i32 65, i32 80, i32 73, i32 10, i32 0], align 4
@.str.8 = private unnamed_addr constant [20 x i32] [i32 32, i32 42, i32 32, i32 118, i32 111, i32 108, i32 97, i32 116, i32 105, i32 108, i32 101, i32 32, i32 99, i32 97, i32 99, i32 104, i32 101, i32 58, i32 32, i32 0], align 4
@.str.9 = private unnamed_addr constant [20 x i32] [i32 32, i32 42, i32 32, i32 109, i32 97, i32 115, i32 116, i32 101, i32 114, i32 107, i32 101, i32 121, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.10 = private unnamed_addr constant [2 x i32] [i32 10, i32 0], align 4
@.str.11 = private unnamed_addr constant [20 x i32] [i32 32, i32 62, i32 32, i32 112, i32 114, i32 111, i32 109, i32 112, i32 116, i32 32, i32 102, i32 108, i32 97, i32 103, i32 115, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@CRYPTPROTECT_UI_FORBIDDEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i32] [i32 32, i32 62, i32 32, i32 101, i32 110, i32 116, i32 114, i32 111, i32 112, i32 121, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 0], align 4
@.str.13 = private unnamed_addr constant [23 x i32] [i32 32, i32 62, i32 32, i32 112, i32 97, i32 115, i32 115, i32 119, i32 111, i32 114, i32 100, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 58, i32 32, i32 37, i32 115, i32 10, i32 0], align 4
@NTE_BAD_KEY_STATE = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [41 x i32] [i32 78, i32 84, i32 69, i32 95, i32 66, i32 65, i32 68, i32 95, i32 75, i32 69, i32 89, i32 95, i32 83, i32 84, i32 65, i32 84, i32 69, i32 44, i32 32, i32 110, i32 101, i32 101, i32 100, i32 101, i32 100, i32 32, i32 77, i32 97, i32 115, i32 116, i32 101, i32 114, i32 107, i32 101, i32 121, i32 32, i32 105, i32 115, i32 58, i32 32, i32 0], align 4
@.str.15 = private unnamed_addr constant [19 x i32] [i32 67, i32 114, i32 121, i32 112, i32 116, i32 85, i32 110, i32 112, i32 114, i32 111, i32 116, i32 101, i32 99, i32 116, i32 68, i32 97, i32 116, i32 97, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kuhl_m_dpapi_unprotect_raw_or_blob(i32* %0, i32 %1, i32* %2, i32 %3, i32** %4, i32* %5, i32 %6, i32* %7, i32* %8, i64 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_13__, align 8
  %26 = alloca %struct.TYPE_13__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_11__*, align 8
  %33 = alloca %struct.TYPE_12__*, align 8
  %34 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32** %4, i32*** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i64 %9, i64* %20, align 8
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %21, align 8
  store i32* null, i32** %24, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  store i32 24, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %38 = load i32, i32* @CRYPTPROTECT_PROMPT_ON_PROTECT, align 4
  %39 = load i32, i32* @CRYPTPROTECT_PROMPT_ON_UNPROTECT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CRYPTPROTECT_PROMPT_STRONG, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %37, align 4
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 3
  %45 = load i32, i32* @MIMIKATZ, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 4
  store i32* null, i32** %46, align 8
  store i32* null, i32** %27, align 8
  store i32* null, i32** %28, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %33, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32**, i32*** %15, align 8
  %49 = call i64 @kull_m_string_args_byName(i32 %47, i32** %48, i8* bitcast ([10 x i32]* @.str to i8*), i32** null, i32* null)
  store i64 %49, i64* %34, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32**, i32*** %15, align 8
  %52 = call i64 @kull_m_string_args_byName(i32 %50, i32** %51, i8* bitcast ([10 x i32]* @.str.1 to i8*), i32** %23, i32* null)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %10
  %55 = load i32*, i32** %23, align 8
  %56 = call i32 @kull_m_string_stringToHexBuffer(i32* %55, i32** %27, i32* %29)
  br label %57

57:                                               ; preds = %54, %10
  %58 = load i32, i32* %14, align 4
  %59 = load i32**, i32*** %15, align 8
  %60 = call i64 @kull_m_string_args_byName(i32 %58, i32** %59, i8* bitcast ([9 x i32]* @.str.2 to i8*), i32** %24, i32* null)
  %61 = load i32, i32* %14, align 4
  %62 = load i32**, i32*** %15, align 8
  %63 = call i64 @kull_m_string_args_byName(i32 %61, i32** %62, i8* bitcast ([8 x i32]* @.str.3 to i8*), i32** %22, i32* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32*, i32** %22, align 8
  %67 = call i32 @kull_m_string_stringToHexBuffer(i32* %66, i32** %28, i32* %30)
  br label %68

68:                                               ; preds = %65, %57
  %69 = load i32, i32* %14, align 4
  %70 = load i32**, i32*** %15, align 8
  %71 = call i64 @kull_m_string_args_byName(i32 %69, i32** %70, i8* bitcast ([7 x i32]* @.str.4 to i8*), i32** null, i32* null)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %75

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %73
  %76 = phi %struct.TYPE_13__* [ %25, %73 ], [ null, %74 ]
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %26, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32**, i32*** %15, align 8
  %79 = call i64 @kull_m_string_args_byName(i32 %77, i32** %78, i8* bitcast ([8 x i32]* @.str.5 to i8*), i32** null, i32* null)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @CRYPTPROTECT_LOCAL_MACHINE, align 4
  %83 = load i32, i32* %31, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %31, align 4
  br label %85

85:                                               ; preds = %81, %75
  %86 = load i32*, i32** %11, align 8
  %87 = call %struct.TYPE_11__* @kull_m_dpapi_blob_create(i32* %86)
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %32, align 8
  %88 = icmp ne %struct.TYPE_11__* %87, null
  br i1 %88, label %89, label %281

89:                                               ; preds = %85
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = call %struct.TYPE_12__* @kuhl_m_dpapi_oe_masterkey_get(i32* %91)
  store %struct.TYPE_12__* %92, %struct.TYPE_12__** %33, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %94 = icmp ne %struct.TYPE_12__* %93, null
  br i1 %94, label %104, label %95

95:                                               ; preds = %89
  %96 = load i32*, i32** %27, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %29, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98, %95
  %102 = load i64, i64* %34, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %278

104:                                              ; preds = %101, %98, %89
  %105 = load i64, i64* %20, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64, i64* %20, align 8
  %109 = call i32 (i8*, ...) @kprintf(i8* bitcast ([3 x i32]* @.str.6 to i8*), i64 %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i64, i64* %34, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = call i32 (i8*, ...) @kprintf(i8* bitcast ([33 x i32]* @.str.7 to i8*))
  br label %115

115:                                              ; preds = %113, %110
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %117 = icmp ne %struct.TYPE_12__* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.8 to i8*))
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %121 = call i32 @kuhl_m_dpapi_oe_masterkey_descr(%struct.TYPE_12__* %120)
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i32*, i32** %27, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.9 to i8*))
  %127 = load i32*, i32** %27, align 8
  %128 = load i32, i32* %29, align 4
  %129 = call i32 @kull_m_string_wprintf_hex(i32* %127, i32 %128, i32 0)
  %130 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.10 to i8*))
  br label %131

131:                                              ; preds = %125, %122
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %133 = icmp ne %struct.TYPE_13__* %132, null
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.11 to i8*))
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @kull_m_dpapi_displayPromptFlags(i32 %138)
  %140 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.10 to i8*))
  br label %145

141:                                              ; preds = %131
  %142 = load i32, i32* @CRYPTPROTECT_UI_FORBIDDEN, align 4
  %143 = load i32, i32* %31, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %31, align 4
  br label %145

145:                                              ; preds = %141, %134
  %146 = load i32*, i32** %28, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = call i32 (i8*, ...) @kprintf(i8* bitcast ([20 x i32]* @.str.12 to i8*))
  %150 = load i32*, i32** %28, align 8
  %151 = load i32, i32* %30, align 4
  %152 = call i32 @kull_m_string_wprintf_hex(i32* %150, i32 %151, i32 0)
  %153 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.10 to i8*))
  br label %154

154:                                              ; preds = %148, %145
  %155 = load i32*, i32** %24, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load i32*, i32** %24, align 8
  %159 = call i32 (i8*, ...) @kprintf(i8* bitcast ([23 x i32]* @.str.13 to i8*), i32* %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %162 = icmp ne %struct.TYPE_12__* %161, null
  br i1 %162, label %163, label %197

163:                                              ; preds = %160
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load i32*, i32** %13, align 8
  %167 = load i32*, i32** %16, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %163
  %170 = load i32, i32* %17, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i32*, i32** %16, align 8
  br label %176

174:                                              ; preds = %169, %163
  %175 = load i32*, i32** %28, align 8
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi i32* [ %173, %172 ], [ %175, %174 ]
  %178 = load i32*, i32** %16, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %176
  %181 = load i32, i32* %17, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i32, i32* %17, align 4
  br label %187

185:                                              ; preds = %180, %176
  %186 = load i32, i32* %30, align 4
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i32 [ %184, %183 ], [ %186, %185 ]
  %189 = load i32*, i32** %18, align 8
  %190 = load i32*, i32** %19, align 8
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i32*, i32** %24, align 8
  %196 = call i64 @kull_m_dpapi_unprotect_raw_or_blob(i32* %164, i32 %165, i32* %166, i32* %177, i32 %188, %struct.TYPE_13__* null, i32 0, i32* %189, i32* %190, i32* %194, i32 8, i32* %195)
  store i64 %196, i64* %21, align 8
  br label %197

197:                                              ; preds = %187, %160
  %198 = load i64, i64* %21, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %277, label %200

200:                                              ; preds = %197
  %201 = load i32*, i32** %27, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32, i32* %29, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %203, %200
  %207 = load i64, i64* %34, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %277

209:                                              ; preds = %206, %203
  %210 = load i32*, i32** %11, align 8
  %211 = load i32, i32* %12, align 4
  %212 = load i32*, i32** %13, align 8
  %213 = load i32*, i32** %16, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %220

215:                                              ; preds = %209
  %216 = load i32, i32* %17, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load i32*, i32** %16, align 8
  br label %222

220:                                              ; preds = %215, %209
  %221 = load i32*, i32** %28, align 8
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i32* [ %219, %218 ], [ %221, %220 ]
  %224 = load i32*, i32** %16, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %222
  %227 = load i32, i32* %17, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = load i32, i32* %17, align 4
  br label %233

231:                                              ; preds = %226, %222
  %232 = load i32, i32* %30, align 4
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i32 [ %230, %229 ], [ %232, %231 ]
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %236 = load i32, i32* %31, align 4
  %237 = load i32*, i32** %18, align 8
  %238 = load i32*, i32** %19, align 8
  %239 = load i32*, i32** %27, align 8
  %240 = load i32, i32* %29, align 4
  %241 = load i32*, i32** %24, align 8
  %242 = call i64 @kull_m_dpapi_unprotect_raw_or_blob(i32* %210, i32 %211, i32* %212, i32* %223, i32 %234, %struct.TYPE_13__* %235, i32 %236, i32* %237, i32* %238, i32* %239, i32 %240, i32* %241)
  store i64 %242, i64* %21, align 8
  %243 = load i64, i64* %21, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %257

245:                                              ; preds = %233
  %246 = load i32*, i32** %27, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %248, label %257

248:                                              ; preds = %245
  %249 = load i32, i32* %29, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = load i32*, i32** %27, align 8
  %255 = load i32, i32* %29, align 4
  %256 = call i32 @kuhl_m_dpapi_oe_masterkey_add(i32* %253, i32* %254, i32 %255)
  br label %257

257:                                              ; preds = %251, %248, %245, %233
  %258 = load i64, i64* %21, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %276, label %260

260:                                              ; preds = %257
  %261 = load i32*, i32** %27, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %276, label %263

263:                                              ; preds = %260
  %264 = call i64 (...) @GetLastError()
  %265 = load i64, i64* @NTE_BAD_KEY_STATE, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %263
  %268 = call i32 @PRINT_ERROR(i8* bitcast ([41 x i32]* @.str.14 to i8*))
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 0
  %271 = call i32 @kull_m_string_displayGUID(i32* %270)
  %272 = call i32 (i8*, ...) @kprintf(i8* bitcast ([2 x i32]* @.str.10 to i8*))
  br label %275

273:                                              ; preds = %263
  %274 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([19 x i32]* @.str.15 to i8*))
  br label %275

275:                                              ; preds = %273, %267
  br label %276

276:                                              ; preds = %275, %260, %257
  br label %277

277:                                              ; preds = %276, %206, %197
  br label %278

278:                                              ; preds = %277, %101
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %280 = call i32 @kull_m_dpapi_blob_delete(%struct.TYPE_11__* %279)
  br label %281

281:                                              ; preds = %278, %85
  %282 = load i32*, i32** %28, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %287

284:                                              ; preds = %281
  %285 = load i32*, i32** %28, align 8
  %286 = call i32 @LocalFree(i32* %285)
  br label %287

287:                                              ; preds = %284, %281
  %288 = load i32*, i32** %27, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load i32*, i32** %27, align 8
  %292 = call i32 @LocalFree(i32* %291)
  br label %293

293:                                              ; preds = %290, %287
  %294 = load i64, i64* %21, align 8
  ret i64 %294
}

declare dso_local i64 @kull_m_string_args_byName(i32, i32**, i8*, i32**, i32*) #1

declare dso_local i32 @kull_m_string_stringToHexBuffer(i32*, i32**, i32*) #1

declare dso_local %struct.TYPE_11__* @kull_m_dpapi_blob_create(i32*) #1

declare dso_local %struct.TYPE_12__* @kuhl_m_dpapi_oe_masterkey_get(i32*) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32 @kuhl_m_dpapi_oe_masterkey_descr(%struct.TYPE_12__*) #1

declare dso_local i32 @kull_m_string_wprintf_hex(i32*, i32, i32) #1

declare dso_local i32 @kull_m_dpapi_displayPromptFlags(i32) #1

declare dso_local i64 @kull_m_dpapi_unprotect_raw_or_blob(i32*, i32, i32*, i32*, i32, %struct.TYPE_13__*, i32, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @kuhl_m_dpapi_oe_masterkey_add(i32*, i32*, i32) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @PRINT_ERROR(i8*) #1

declare dso_local i32 @kull_m_string_displayGUID(i32*) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

declare dso_local i32 @kull_m_dpapi_blob_delete(%struct.TYPE_11__*) #1

declare dso_local i32 @LocalFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
