; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_jsdisp_define_property.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_dispex.c_jsdisp_define_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, i64, i32*, i64, i32, i64 }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i8* }
%struct.TYPE_12__ = type { i32*, i32* }

@PROP_DELETED = common dso_local global i64 0, align 8
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@PROP_PROTREF = common dso_local global i64 0, align 8
@PROP_ACCESSOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"%s = accessor { get: %p set: %p }\0A\00", align 1
@PROP_JSVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"existing prop %s prop flags %x desc flags %x desc mask %x\0A\00", align 1
@PROPF_CONFIGURABLE = common dso_local global i32 0, align 4
@PROPF_ENUMERABLE = common dso_local global i32 0, align 4
@JS_E_NONCONFIGURABLE_REDEFINED = common dso_local global i32 0, align 4
@PROPF_WRITABLE = common dso_local global i32 0, align 4
@JS_E_NONWRITABLE_MODIFIED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"redefinition of property type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jsdisp_define_property(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @string_hash(i32* %12)
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @find_prop_name(%struct.TYPE_15__* %11, i32 %13, i32* %14, %struct.TYPE_16__** %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i64 @FAILED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %605

21:                                               ; preds = %3
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* @PROP_DELETED, align 8
  %28 = call %struct.TYPE_16__* @alloc_prop(%struct.TYPE_15__* %25, i32* %26, i64 %27, i32 0)
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %8, align 8
  %29 = icmp ne %struct.TYPE_16__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %31, i32* %4, align 4
  br label %605

32:                                               ; preds = %24, %21
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PROP_DELETED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PROP_PROTREF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %147

44:                                               ; preds = %38, %32
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %44
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %109

59:                                               ; preds = %54, %44
  %60 = load i64, i64* @PROP_ACCESSOR, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 4
  %70 = load i32*, i32** %69, align 8
  %71 = call i32* @jsdisp_addref(i32* %70)
  br label %73

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %67
  %74 = phi i32* [ %71, %67 ], [ null, %72 ]
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  store i32* %74, i32** %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32* @jsdisp_addref(i32* %86)
  br label %89

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %83
  %90 = phi i32* [ %87, %83 ], [ null, %88 ]
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i32* %90, i32** %94, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @debugstr_w(i32* %95)
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = ptrtoint i32* %101 to i32
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %102, i32* %107)
  br label %145

109:                                              ; preds = %54
  %110 = load i64, i64* @PROP_JSVAL, align 8
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 7
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %109
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = call i32 @jsval_copy(i32 %120, i8** %123)
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i64 @FAILED(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %4, align 4
  br label %605

130:                                              ; preds = %117
  br label %136

131:                                              ; preds = %109
  %132 = call i8* (...) @jsval_undefined()
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  store i8* %132, i8** %135, align 8
  br label %136

136:                                              ; preds = %131, %130
  %137 = load i32*, i32** %6, align 8
  %138 = call i32 @debugstr_w(i32* %137)
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @debugstr_jsval(i8* %142)
  %144 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %143)
  br label %145

145:                                              ; preds = %136, %89
  %146 = load i32, i32* @S_OK, align 4
  store i32 %146, i32* %4, align 4
  br label %605

147:                                              ; preds = %38
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @debugstr_w(i32* %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 (i8*, i32, i32, ...) @TRACE(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %149, i32 %152, i32 %155, i32 %158)
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %207, label %166

166:                                              ; preds = %147
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %199, label %180

180:                                              ; preds = %173, %166
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @PROPF_ENUMERABLE, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %206

187:                                              ; preds = %180
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @PROPF_ENUMERABLE, align 4
  %192 = and i32 %190, %191
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @PROPF_ENUMERABLE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %192, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %187, %173
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @JS_E_NONCONFIGURABLE_REDEFINED, align 4
  %204 = load i32*, i32** %6, align 8
  %205 = call i32 @throw_type_error(i32 %202, i32 %203, i32* %204)
  store i32 %205, i32* %4, align 4
  br label %605

206:                                              ; preds = %187, %180
  br label %207

207:                                              ; preds = %206, %147
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 7
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %219, label %212

212:                                              ; preds = %207
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @PROPF_WRITABLE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %407

219:                                              ; preds = %212, %207
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @PROP_ACCESSOR, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %288

225:                                              ; preds = %219
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %239, label %232

232:                                              ; preds = %225
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @JS_E_NONCONFIGURABLE_REDEFINED, align 4
  %237 = load i32*, i32** %6, align 8
  %238 = call i32 @throw_type_error(i32 %235, i32 %236, i32* %237)
  store i32 %238, i32* %4, align 4
  br label %605

239:                                              ; preds = %225
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %253

246:                                              ; preds = %239
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = call i32 @jsdisp_release(i32* %251)
  br label %253

253:                                              ; preds = %246, %239
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %267

260:                                              ; preds = %253
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @jsdisp_release(i32* %265)
  br label %267

267:                                              ; preds = %260, %253
  %268 = load i64, i64* @PROP_JSVAL, align 8
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 1
  %277 = call i32 @jsval_copy(i32 %273, i8** %276)
  store i32 %277, i32* %9, align 4
  %278 = load i32, i32* %9, align 4
  %279 = call i64 @FAILED(i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %267
  %282 = call i8* (...) @jsval_undefined()
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 2
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 1
  store i8* %282, i8** %285, align 8
  %286 = load i32, i32* %9, align 4
  store i32 %286, i32* %4, align 4
  br label %605

287:                                              ; preds = %267
  br label %406

288:                                              ; preds = %219
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %366, label %295

295:                                              ; preds = %288
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @PROPF_WRITABLE, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %366, label %302

302:                                              ; preds = %295
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @PROPF_WRITABLE, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %323

309:                                              ; preds = %302
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @PROPF_WRITABLE, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %323

316:                                              ; preds = %309
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @JS_E_NONWRITABLE_MODIFIED, align 4
  %321 = load i32*, i32** %6, align 8
  %322 = call i32 @throw_type_error(i32 %319, i32 %320, i32* %321)
  store i32 %322, i32* %4, align 4
  br label %605

323:                                              ; preds = %309, %302
  %324 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %324, i32 0, i32 7
  %326 = load i64, i64* %325, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %365

328:                                              ; preds = %323
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @PROP_JSVAL, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %359

334:                                              ; preds = %328
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 1
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @jsval_strict_equal(i32 %337, i8* %341, i32* %10)
  store i32 %342, i32* %9, align 4
  %343 = load i32, i32* %9, align 4
  %344 = call i64 @FAILED(i32 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %334
  %347 = load i32, i32* %9, align 4
  store i32 %347, i32* %4, align 4
  br label %605

348:                                              ; preds = %334
  %349 = load i32, i32* %10, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %358, label %351

351:                                              ; preds = %348
  %352 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @JS_E_NONWRITABLE_MODIFIED, align 4
  %356 = load i32*, i32** %6, align 8
  %357 = call i32 @throw_type_error(i32 %354, i32 %355, i32* %356)
  store i32 %357, i32* %4, align 4
  br label %605

358:                                              ; preds = %348
  br label %364

359:                                              ; preds = %328
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = call i32 @FIXME(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %362)
  br label %364

364:                                              ; preds = %359, %358
  br label %365

365:                                              ; preds = %364, %323
  br label %366

366:                                              ; preds = %365, %295, %288
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 7
  %369 = load i64, i64* %368, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %405

371:                                              ; preds = %366
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @PROP_JSVAL, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %383

377:                                              ; preds = %371
  %378 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %379 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %379, i32 0, i32 1
  %381 = load i8*, i8** %380, align 8
  %382 = call i32 @jsval_release(i8* %381)
  br label %387

383:                                              ; preds = %371
  %384 = load i64, i64* @PROP_JSVAL, align 8
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 0
  store i64 %384, i64* %386, align 8
  br label %387

387:                                              ; preds = %383, %377
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 6
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %392, i32 0, i32 1
  %394 = call i32 @jsval_copy(i32 %390, i8** %393)
  store i32 %394, i32* %9, align 4
  %395 = load i32, i32* %9, align 4
  %396 = call i64 @FAILED(i32 %395)
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %404

398:                                              ; preds = %387
  %399 = call i8* (...) @jsval_undefined()
  %400 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %401 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %400, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 1
  store i8* %399, i8** %402, align 8
  %403 = load i32, i32* %9, align 4
  store i32 %403, i32* %4, align 4
  br label %605

404:                                              ; preds = %387
  br label %405

405:                                              ; preds = %404, %366
  br label %406

406:                                              ; preds = %405, %287
  br label %585

407:                                              ; preds = %212
  %408 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %408, i32 0, i32 5
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %417, label %412

412:                                              ; preds = %407
  %413 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %414 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %413, i32 0, i32 3
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %584

417:                                              ; preds = %412, %407
  %418 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @PROP_ACCESSOR, align 8
  %422 = icmp ne i64 %420, %421
  br i1 %422, label %423, label %461

423:                                              ; preds = %417
  %424 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %437, label %430

430:                                              ; preds = %423
  %431 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %432 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @JS_E_NONCONFIGURABLE_REDEFINED, align 4
  %435 = load i32*, i32** %6, align 8
  %436 = call i32 @throw_type_error(i32 %433, i32 %434, i32* %435)
  store i32 %436, i32* %4, align 4
  br label %605

437:                                              ; preds = %423
  %438 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %439 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %438, i32 0, i32 0
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* @PROP_JSVAL, align 8
  %442 = icmp eq i64 %440, %441
  br i1 %442, label %443, label %449

443:                                              ; preds = %437
  %444 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %445 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %445, i32 0, i32 1
  %447 = load i8*, i8** %446, align 8
  %448 = call i32 @jsval_release(i8* %447)
  br label %449

449:                                              ; preds = %443, %437
  %450 = load i64, i64* @PROP_ACCESSOR, align 8
  %451 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %452 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %451, i32 0, i32 0
  store i64 %450, i64* %452, align 8
  %453 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %454 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %453, i32 0, i32 2
  %455 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %455, i32 0, i32 0
  store i32* null, i32** %456, align 8
  %457 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %458 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %459, i32 0, i32 1
  store i32* null, i32** %460, align 8
  br label %507

461:                                              ; preds = %417
  %462 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %463 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @PROPF_CONFIGURABLE, align 4
  %466 = and i32 %464, %465
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %506, label %468

468:                                              ; preds = %461
  %469 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %470 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %469, i32 0, i32 5
  %471 = load i64, i64* %470, align 8
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %483

473:                                              ; preds = %468
  %474 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %475 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %474, i32 0, i32 4
  %476 = load i32*, i32** %475, align 8
  %477 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %478 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %477, i32 0, i32 2
  %479 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %479, i32 0, i32 1
  %481 = load i32*, i32** %480, align 8
  %482 = icmp ne i32* %476, %481
  br i1 %482, label %498, label %483

483:                                              ; preds = %473, %468
  %484 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %485 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %484, i32 0, i32 3
  %486 = load i64, i64* %485, align 8
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %505

488:                                              ; preds = %483
  %489 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %490 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %489, i32 0, i32 2
  %491 = load i32*, i32** %490, align 8
  %492 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %493 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %492, i32 0, i32 2
  %494 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %494, i32 0, i32 0
  %496 = load i32*, i32** %495, align 8
  %497 = icmp ne i32* %491, %496
  br i1 %497, label %498, label %505

498:                                              ; preds = %488, %473
  %499 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %500 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* @JS_E_NONCONFIGURABLE_REDEFINED, align 4
  %503 = load i32*, i32** %6, align 8
  %504 = call i32 @throw_type_error(i32 %501, i32 %502, i32* %503)
  store i32 %504, i32* %4, align 4
  br label %605

505:                                              ; preds = %488, %483
  br label %506

506:                                              ; preds = %505, %461
  br label %507

507:                                              ; preds = %506, %449
  %508 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %509 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %508, i32 0, i32 5
  %510 = load i64, i64* %509, align 8
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %545

512:                                              ; preds = %507
  %513 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %514 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %513, i32 0, i32 2
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %515, i32 0, i32 1
  %517 = load i32*, i32** %516, align 8
  %518 = icmp ne i32* %517, null
  br i1 %518, label %519, label %530

519:                                              ; preds = %512
  %520 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %521 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %520, i32 0, i32 2
  %522 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %522, i32 0, i32 1
  %524 = load i32*, i32** %523, align 8
  %525 = call i32 @jsdisp_release(i32* %524)
  %526 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %527 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %527, i32 0, i32 0
  %529 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %528, i32 0, i32 1
  store i32* null, i32** %529, align 8
  br label %530

530:                                              ; preds = %519, %512
  %531 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %532 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %531, i32 0, i32 4
  %533 = load i32*, i32** %532, align 8
  %534 = icmp ne i32* %533, null
  br i1 %534, label %535, label %544

535:                                              ; preds = %530
  %536 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %537 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %536, i32 0, i32 4
  %538 = load i32*, i32** %537, align 8
  %539 = call i32* @jsdisp_addref(i32* %538)
  %540 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %541 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %540, i32 0, i32 2
  %542 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %542, i32 0, i32 1
  store i32* %539, i32** %543, align 8
  br label %544

544:                                              ; preds = %535, %530
  br label %545

545:                                              ; preds = %544, %507
  %546 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %547 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %546, i32 0, i32 3
  %548 = load i64, i64* %547, align 8
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %583

550:                                              ; preds = %545
  %551 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %552 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %551, i32 0, i32 2
  %553 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %553, i32 0, i32 0
  %555 = load i32*, i32** %554, align 8
  %556 = icmp ne i32* %555, null
  br i1 %556, label %557, label %568

557:                                              ; preds = %550
  %558 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %559 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %558, i32 0, i32 2
  %560 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %560, i32 0, i32 0
  %562 = load i32*, i32** %561, align 8
  %563 = call i32 @jsdisp_release(i32* %562)
  %564 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %565 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %564, i32 0, i32 2
  %566 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %566, i32 0, i32 0
  store i32* null, i32** %567, align 8
  br label %568

568:                                              ; preds = %557, %550
  %569 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %570 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %569, i32 0, i32 2
  %571 = load i32*, i32** %570, align 8
  %572 = icmp ne i32* %571, null
  br i1 %572, label %573, label %582

573:                                              ; preds = %568
  %574 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %575 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %574, i32 0, i32 2
  %576 = load i32*, i32** %575, align 8
  %577 = call i32* @jsdisp_addref(i32* %576)
  %578 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %579 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %578, i32 0, i32 2
  %580 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %579, i32 0, i32 0
  %581 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %580, i32 0, i32 0
  store i32* %577, i32** %581, align 8
  br label %582

582:                                              ; preds = %573, %568
  br label %583

583:                                              ; preds = %582, %545
  br label %584

584:                                              ; preds = %583, %412
  br label %585

585:                                              ; preds = %584, %406
  %586 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %587 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 8
  %589 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %590 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %589, i32 0, i32 1
  %591 = load i32, i32* %590, align 4
  %592 = xor i32 %591, -1
  %593 = and i32 %588, %592
  %594 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %595 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 8
  %597 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %598 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %597, i32 0, i32 1
  %599 = load i32, i32* %598, align 4
  %600 = and i32 %596, %599
  %601 = or i32 %593, %600
  %602 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %603 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %602, i32 0, i32 1
  store i32 %601, i32* %603, align 8
  %604 = load i32, i32* @S_OK, align 4
  store i32 %604, i32* %4, align 4
  br label %605

605:                                              ; preds = %585, %498, %430, %398, %351, %346, %316, %281, %232, %199, %145, %128, %30, %19
  %606 = load i32, i32* %4, align 4
  ret i32 %606
}

declare dso_local i32 @find_prop_name(%struct.TYPE_15__*, i32, i32*, %struct.TYPE_16__**) #1

declare dso_local i32 @string_hash(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local %struct.TYPE_16__* @alloc_prop(%struct.TYPE_15__*, i32*, i64, i32) #1

declare dso_local i32* @jsdisp_addref(i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i32, ...) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @jsval_copy(i32, i8**) #1

declare dso_local i8* @jsval_undefined(...) #1

declare dso_local i32 @debugstr_jsval(i8*) #1

declare dso_local i32 @throw_type_error(i32, i32, i32*) #1

declare dso_local i32 @jsdisp_release(i32*) #1

declare dso_local i32 @jsval_strict_equal(i32, i8*, i32*) #1

declare dso_local i32 @FIXME(i8*, i64) #1

declare dso_local i32 @jsval_release(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
