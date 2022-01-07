; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_typeinfo.c_php_com_process_typeinfo.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_typeinfo.c_php_com_process_typeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { i32, i64, i32, %struct.TYPE_20__*, %struct.TYPE_14__ }
%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@TKIND_DISPATCH = common dso_local global i64 0, align 8
@MEMBERID_NIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"class %s { /* GUID=%s */\0A\00", align 1
@ZVAL_PTR_DTOR = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYGET = common dso_local global i32 0, align 4
@DISPATCH_PROPERTYPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"\09/* DISPID=%d */\0A\00", align 1
@VT_VOID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"\09/* %s [%d] */\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\09/* %s */\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\09var $%s;\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\09function %s(\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"\09\09/* %s [%d] \00", align 1
@PARAMFLAG_FIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"[in]\00", align 1
@PARAMFLAG_FOUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"[out]\00", align 1
@VT_PTR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c" --> %s [%d] \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" */ %s%s%c\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"&$\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\09\09)\0A\09{\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"\09\09/* %s */\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@E_WARNING = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [55 x i8] c"That's not a dispatchable interface!! type kind = %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @php_com_process_typeinfo(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_20__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %16, align 8
  store i32 0, i32* %18, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @ITypeInfo_GetTypeAttr(i32* %29, %struct.TYPE_18__** %12)
  %31 = call i64 @FAILED(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %398

34:                                               ; preds = %5
  %35 = load i32*, i32** %8, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TKIND_DISPATCH, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %387

43:                                               ; preds = %37, %34
  %44 = load i32*, i32** %10, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 2
  %50 = call i32 @memcpy(i32* %47, i32* %49, i32 4)
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load i32*, i32** %7, align 8
  %56 = load i64, i64* @MEMBERID_NIL, align 8
  %57 = call i32 @ITypeInfo_GetDocumentation(i32* %55, i64 %56, i32** %15, i32** null, i32* null, i32* null)
  %58 = load i32*, i32** %15, align 8
  %59 = ptrtoint i32* %58 to i8
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @php_com_olestring_to_string(i8 signext %59, i64* %17, i32 %60)
  store i8* %61, i8** %16, align 8
  %62 = load i32*, i32** %15, align 8
  %63 = ptrtoint i32* %62 to i8
  %64 = call i32 @SysFreeString(i8 signext %63)
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 2
  %67 = load i32, i32* %11, align 4
  %68 = call i8* @php_com_string_from_clsid(i32* %66, i32 %67)
  store i8* %68, i8** %19, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %69, i8* %70)
  %72 = load i8*, i8** %19, align 8
  %73 = call i32 @efree(i8* %72)
  %74 = load i8*, i8** %16, align 8
  %75 = call i32 @efree(i8* %74)
  br label %76

76:                                               ; preds = %54, %51
  %77 = load i32*, i32** %8, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* @ZVAL_PTR_DTOR, align 4
  %82 = call i32 @zend_hash_init(i32* %80, i32 0, i32* null, i32 %81, i32 0)
  br label %83

83:                                               ; preds = %79, %76
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %378, %83
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %381

90:                                               ; preds = %84
  store i64 0, i64* %21, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @ITypeInfo_GetFuncDesc(i32* %91, i32 %92, %struct.TYPE_19__** %13)
  %94 = call i64 @FAILED(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %381

97:                                               ; preds = %90
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @DISPATCH_PROPERTYGET, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %97
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @DISPATCH_PROPERTYPUT, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br label %111

111:                                              ; preds = %104, %97
  %112 = phi i1 [ true, %97 ], [ %110, %104 ]
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %22, align 4
  %114 = load i32, i32* %22, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load i64, i64* %21, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %374

122:                                              ; preds = %116, %111
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %21, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @ITypeInfo_GetDocumentation(i32* %126, i64 %129, i32** %15, i32** null, i32* null, i32* null)
  %131 = load i32*, i32** %15, align 8
  %132 = ptrtoint i32* %131 to i8
  %133 = load i32, i32* %11, align 4
  %134 = call i8* @php_com_olestring_to_string(i8 signext %132, i64* %17, i32 %133)
  store i8* %134, i8** %16, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = ptrtoint i32* %135 to i8
  %137 = call i32 @SysFreeString(i8 signext %136)
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %356

140:                                              ; preds = %122
  store i32 0, i32* %26, align 4
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  %145 = call i64 @safe_emalloc(i32 %144, i32 1, i32 0)
  %146 = inttoptr i64 %145 to i8*
  store i8* %146, i8** %27, align 8
  %147 = load i32*, i32** %7, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i8*, i8** %27, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  %156 = call i32 @ITypeInfo_GetNames(i32* %147, i64 %150, i8* %151, i32 %155, i32* %26)
  %157 = load i8*, i8** %27, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = call i32 @SysFreeString(i8 signext %159)
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %163)
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @VT_VOID, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %185

172:                                              ; preds = %140
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @vt_to_string(i64 %177)
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %178, i64 %183)
  br label %185

185:                                              ; preds = %172, %140
  %186 = load i32, i32* %22, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %211

188:                                              ; preds = %185
  %189 = load i32*, i32** %7, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @ITypeInfo_GetDocumentation(i32* %189, i64 %192, i32** null, i32** %15, i32* null, i32* null)
  %194 = load i32*, i32** %15, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %208

196:                                              ; preds = %188
  %197 = load i32*, i32** %15, align 8
  %198 = ptrtoint i32* %197 to i8
  %199 = load i32, i32* %11, align 4
  %200 = call i8* @php_com_olestring_to_string(i8 signext %198, i64* %25, i32 %199)
  store i8* %200, i8** %24, align 8
  %201 = load i32*, i32** %15, align 8
  %202 = ptrtoint i32* %201 to i8
  %203 = call i32 @SysFreeString(i8 signext %202)
  %204 = load i8*, i8** %24, align 8
  %205 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %204)
  %206 = load i8*, i8** %24, align 8
  %207 = call i32 @efree(i8* %206)
  br label %208

208:                                              ; preds = %196, %188
  %209 = load i8*, i8** %16, align 8
  %210 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %209)
  br label %353

211:                                              ; preds = %185
  %212 = load i8*, i8** %16, align 8
  %213 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %212)
  store i32 0, i32* %23, align 4
  br label %214

214:                                              ; preds = %327, %211
  %215 = load i32, i32* %23, align 4
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %220, label %330

220:                                              ; preds = %214
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 3
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %222, align 8
  %224 = load i32, i32* %23, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i64 %225
  store %struct.TYPE_20__* %226, %struct.TYPE_20__** %28, align 8
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @vt_to_string(i64 %230)
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %231, i64 %235)
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @PARAMFLAG_FIN, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %220
  %245 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %220
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @PARAMFLAG_FOUT, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %246
  %255 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %256

256:                                              ; preds = %254, %246
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @VT_PTR, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %278

263:                                              ; preds = %256
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @vt_to_string(i64 %269)
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %270, i64 %276)
  br label %278

278:                                              ; preds = %263, %256
  %279 = load i32, i32* %23, align 4
  %280 = add nsw i32 %279, 1
  %281 = load i32, i32* %26, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %299

283:                                              ; preds = %278
  %284 = load i8*, i8** %27, align 8
  %285 = load i32, i32* %23, align 4
  %286 = add nsw i32 %285, 1
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %284, i64 %287
  %289 = load i8, i8* %288, align 1
  %290 = load i32, i32* %11, align 4
  %291 = call i8* @php_com_olestring_to_string(i8 signext %289, i64* %25, i32 %290)
  store i8* %291, i8** %24, align 8
  %292 = load i8*, i8** %27, align 8
  %293 = load i32, i32* %23, align 4
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %292, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = call i32 @SysFreeString(i8 signext %297)
  br label %300

299:                                              ; preds = %278
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8** %24, align 8
  br label %300

300:                                              ; preds = %299, %283
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %302 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @VT_PTR, align 8
  %306 = icmp eq i64 %304, %305
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)
  %309 = load i8*, i8** %24, align 8
  %310 = load i32, i32* %23, align 4
  %311 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = sub nsw i32 %313, 1
  %315 = icmp eq i32 %310, %314
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, i32 32, i32 44
  %318 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %308, i8* %309, i32 %317)
  %319 = load i32, i32* %23, align 4
  %320 = add nsw i32 %319, 1
  %321 = load i32, i32* %26, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %300
  %324 = load i8*, i8** %24, align 8
  %325 = call i32 @efree(i8* %324)
  br label %326

326:                                              ; preds = %323, %300
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %23, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %23, align 4
  br label %214

330:                                              ; preds = %214
  %331 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %332 = load i32*, i32** %7, align 8
  %333 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %334 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %333, i32 0, i32 1
  %335 = load i64, i64* %334, align 8
  %336 = call i32 @ITypeInfo_GetDocumentation(i32* %332, i64 %335, i32** null, i32** %15, i32* null, i32* null)
  %337 = load i32*, i32** %15, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %339, label %351

339:                                              ; preds = %330
  %340 = load i32*, i32** %15, align 8
  %341 = ptrtoint i32* %340 to i8
  %342 = load i32, i32* %11, align 4
  %343 = call i8* @php_com_olestring_to_string(i8 signext %341, i64* %25, i32 %342)
  store i8* %343, i8** %24, align 8
  %344 = load i32*, i32** %15, align 8
  %345 = ptrtoint i32* %344 to i8
  %346 = call i32 @SysFreeString(i8 signext %345)
  %347 = load i8*, i8** %24, align 8
  %348 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* %347)
  %349 = load i8*, i8** %24, align 8
  %350 = call i32 @efree(i8* %349)
  br label %351

351:                                              ; preds = %339, %330
  %352 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %353

353:                                              ; preds = %351, %208
  %354 = load i8*, i8** %27, align 8
  %355 = call i32 @efree(i8* %354)
  br label %356

356:                                              ; preds = %353, %122
  %357 = load i32*, i32** %8, align 8
  %358 = icmp ne i32* %357, null
  br i1 %358, label %359, label %373

359:                                              ; preds = %356
  %360 = load i8*, i8** %16, align 8
  %361 = load i64, i64* %17, align 8
  %362 = call i32 @zend_str_tolower(i8* %360, i64 %361)
  %363 = load i8*, i8** %16, align 8
  %364 = load i64, i64* %17, align 8
  %365 = call i32 @ZVAL_STRINGL(i32* %20, i8* %363, i64 %364)
  %366 = load i32*, i32** %8, align 8
  %367 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %367, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = call i32 @zend_hash_index_update(i32* %366, i64 %369, i32* %20)
  %371 = load i8*, i8** %16, align 8
  %372 = call i32 @efree(i8* %371)
  br label %373

373:                                              ; preds = %359, %356
  br label %374

374:                                              ; preds = %373, %116
  %375 = load i32*, i32** %7, align 8
  %376 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %377 = call i32 @ITypeInfo_ReleaseFuncDesc(i32* %375, %struct.TYPE_19__* %376)
  br label %378

378:                                              ; preds = %374
  %379 = load i32, i32* %14, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %14, align 4
  br label %84

381:                                              ; preds = %96, %84
  %382 = load i32, i32* %9, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %381
  %385 = call i32 (i8*, ...) @php_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  br label %386

386:                                              ; preds = %384, %381
  store i32 1, i32* %18, align 4
  br label %393

387:                                              ; preds = %37
  %388 = load i32, i32* @E_WARNING, align 4
  %389 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = call i32 @zend_error(i32 %388, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0), i64 %391)
  br label %393

393:                                              ; preds = %387, %386
  %394 = load i32*, i32** %7, align 8
  %395 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %396 = call i32 @ITypeInfo_ReleaseTypeAttr(i32* %394, %struct.TYPE_18__* %395)
  %397 = load i32, i32* %18, align 4
  store i32 %397, i32* %6, align 4
  br label %398

398:                                              ; preds = %393, %33
  %399 = load i32, i32* %6, align 4
  ret i32 %399
}

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @ITypeInfo_GetTypeAttr(i32*, %struct.TYPE_18__**) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ITypeInfo_GetDocumentation(i32*, i64, i32**, i32**, i32*, i32*) #1

declare dso_local i8* @php_com_olestring_to_string(i8 signext, i64*, i32) #1

declare dso_local i32 @SysFreeString(i8 signext) #1

declare dso_local i8* @php_com_string_from_clsid(i32*, i32) #1

declare dso_local i32 @php_printf(i8*, ...) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @ITypeInfo_GetFuncDesc(i32*, i32, %struct.TYPE_19__**) #1

declare dso_local i64 @safe_emalloc(i32, i32, i32) #1

declare dso_local i32 @ITypeInfo_GetNames(i32*, i64, i8*, i32, i32*) #1

declare dso_local i32 @vt_to_string(i64) #1

declare dso_local i32 @zend_str_tolower(i8*, i64) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i64) #1

declare dso_local i32 @zend_hash_index_update(i32*, i64, i32*) #1

declare dso_local i32 @ITypeInfo_ReleaseFuncDesc(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @zend_error(i32, i8*, i64) #1

declare dso_local i32 @ITypeInfo_ReleaseTypeAttr(i32*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
