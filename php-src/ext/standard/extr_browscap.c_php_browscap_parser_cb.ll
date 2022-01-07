; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_browscap.c_php_browscap_parser_cb.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_browscap.c_php_browscap_parser_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i64, i32*, i32*, i32*, i32, i32, i8* }
%struct.TYPE_9__ = type { i32, i32 }

@IS_ARRAY_PERSISTENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@E_CORE_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [94 x i8] c"Invalid browscap ini file: 'Parent' value cannot be same as the section name: %s (in file %s)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"browscap\00", align 1
@UINT16_MAX = common dso_local global i32 0, align 4
@E_WARNING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [48 x i8] c"Skipping excessively long pattern of length %zd\00", align 1
@BROWSCAP_NUM_CONTAINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i8*)* @php_browscap_parser_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_browscap_parser_cb(i32* %0, i32* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %11, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %12, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @GC_FLAGS(i32 %28)
  %30 = load i32, i32* @IS_ARRAY_PERSISTENT, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %5
  br label %280

35:                                               ; preds = %5
  %36 = load i32, i32* %9, align 4
  switch i32 %36, label %280 [
    i32 129, label %37
    i32 128, label %186
  ]

37:                                               ; preds = %35
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %185

42:                                               ; preds = %37
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %185

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @Z_STRLEN_P(i32* %46)
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32*, i32** %7, align 8
  %51 = call i8* @Z_STRVAL_P(i32* %50)
  %52 = call i32 @strncasecmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %72

54:                                               ; preds = %49, %45
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @Z_STRLEN_P(i32* %55)
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = call i8* @Z_STRVAL_P(i32* %59)
  %61 = call i32 @strncasecmp(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58, %54
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @Z_STRLEN_P(i32* %64)
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = call i8* @Z_STRVAL_P(i32* %68)
  %70 = call i32 @strncasecmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67, %58, %49
  %73 = call i32* @ZSTR_CHAR(i8 signext 49)
  store i32* %73, i32** %15, align 8
  br label %119

74:                                               ; preds = %67, %63
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @Z_STRLEN_P(i32* %75)
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32*, i32** %7, align 8
  %80 = call i8* @Z_STRVAL_P(i32* %79)
  %81 = call i32 @strncasecmp(i8* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %110

83:                                               ; preds = %78, %74
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @Z_STRLEN_P(i32* %84)
  %86 = icmp eq i32 %85, 3
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32*, i32** %7, align 8
  %89 = call i8* @Z_STRVAL_P(i32* %88)
  %90 = call i32 @strncasecmp(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %110

92:                                               ; preds = %87, %83
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @Z_STRLEN_P(i32* %93)
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32*, i32** %7, align 8
  %98 = call i8* @Z_STRVAL_P(i32* %97)
  %99 = call i32 @strncasecmp(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96, %92
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @Z_STRLEN_P(i32* %102)
  %104 = icmp eq i32 %103, 5
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = load i32*, i32** %7, align 8
  %107 = call i8* @Z_STRVAL_P(i32* %106)
  %108 = call i32 @strncasecmp(i8* %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %105, %96, %87, %78
  %111 = call i32* (...) @ZSTR_EMPTY_ALLOC()
  store i32* %111, i32** %15, align 8
  br label %118

112:                                              ; preds = %105, %101
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = call i32* @Z_STR_P(i32* %114)
  %116 = load i32, i32* %13, align 4
  %117 = call i32* @browscap_intern_str(%struct.TYPE_10__* %113, i32* %115, i32 %116)
  store i32* %117, i32** %15, align 8
  br label %118

118:                                              ; preds = %112, %110
  br label %119

119:                                              ; preds = %118, %72
  %120 = load i32*, i32** %6, align 8
  %121 = call i8* @Z_STRVAL_P(i32* %120)
  %122 = call i32 @strcasecmp(i8* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %166, label %124

124:                                              ; preds = %119
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %146

129:                                              ; preds = %124
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i8* @ZSTR_VAL(i32* %132)
  %134 = load i32*, i32** %7, align 8
  %135 = call i8* @Z_STRVAL_P(i32* %134)
  %136 = call i32 @strcasecmp(i8* %133, i8* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %129
  %139 = load i32, i32* @E_CORE_ERROR, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = call i8* @ZSTR_VAL(i32* %142)
  %144 = call i32 @INI_STR(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %145 = call i32 @zend_error(i32 %139, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.8, i64 0, i64 0), i8* %143, i32 %144)
  br label %280

146:                                              ; preds = %129, %124
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @zend_string_release(i32* %158)
  br label %160

160:                                              ; preds = %153, %146
  %161 = load i32*, i32** %15, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  store i32* %161, i32** %165, align 8
  br label %184

166:                                              ; preds = %119
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = call i32* @Z_STR_P(i32* %168)
  %170 = load i32, i32* %13, align 4
  %171 = call i32* @browscap_intern_str_ci(%struct.TYPE_10__* %167, i32* %169, i32 %170)
  store i32* %171, i32** %14, align 8
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %173 = load i32*, i32** %14, align 8
  %174 = load i32*, i32** %15, align 8
  %175 = load i32, i32* %13, align 4
  %176 = call i32 @browscap_add_kv(%struct.TYPE_9__* %172, i32* %173, i32* %174, i32 %175)
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 5
  store i32 %179, i32* %183, align 4
  br label %184

184:                                              ; preds = %166, %160
  br label %185

185:                                              ; preds = %184, %42, %37
  br label %280

186:                                              ; preds = %35
  %187 = load i32*, i32** %6, align 8
  %188 = call i32* @Z_STR_P(i32* %187)
  store i32* %188, i32** %17, align 8
  %189 = load i32*, i32** %17, align 8
  %190 = call i32 @ZSTR_LEN(i32* %189)
  %191 = load i32, i32* @UINT16_MAX, align 4
  %192 = icmp sgt i32 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %186
  %194 = load i32, i32* @E_WARNING, align 4
  %195 = load i32*, i32** %17, align 8
  %196 = call i32 @ZSTR_LEN(i32* %195)
  %197 = call i32 @php_error_docref(i32* null, i32 %194, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %196)
  br label %280

198:                                              ; preds = %186
  %199 = load i32, i32* %13, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load i32*, i32** %17, align 8
  %203 = call i8* @zend_string_copy(i32* %202)
  %204 = call i32* @zend_new_interned_string(i8* %203)
  store i32* %204, i32** %17, align 8
  %205 = load i32*, i32** %17, align 8
  %206 = call i32 @ZSTR_IS_INTERNED(i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  store i32 0, i32* %20, align 4
  br label %212

209:                                              ; preds = %201
  %210 = load i32*, i32** %17, align 8
  %211 = call i32 @zend_string_release(i32* %210)
  br label %212

212:                                              ; preds = %209, %208
  br label %213

213:                                              ; preds = %212, %198
  %214 = load i32, i32* %13, align 4
  %215 = call %struct.TYPE_11__* @pemalloc(i32 48, i32 %214)
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  store %struct.TYPE_11__* %215, %struct.TYPE_11__** %217, align 8
  store %struct.TYPE_11__* %215, %struct.TYPE_11__** %16, align 8
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %17, align 8
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %223 = call i32 @zend_hash_update_ptr(i32 %220, i32* %221, %struct.TYPE_11__* %222)
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %233

228:                                              ; preds = %213
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = call i32 @zend_string_release(i32* %231)
  br label %233

233:                                              ; preds = %228, %213
  %234 = load i32*, i32** %17, align 8
  %235 = call i8* @zend_string_copy(i32* %234)
  %236 = bitcast i8* %235 to i32*
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 0
  store i32* %236, i32** %238, align 8
  %239 = load i32*, i32** %17, align 8
  %240 = call i8* @zend_string_copy(i32* %239)
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 6
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 4
  store i32 %245, i32* %247, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 5
  store i32 %245, i32* %249, align 4
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 3
  store i32* null, i32** %251, align 8
  %252 = load i32*, i32** %17, align 8
  %253 = call i64 @browscap_compute_prefix_len(i32* %252)
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  store i64 %253, i64* %255, align 8
  store i64 %253, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %256

256:                                              ; preds = %276, %233
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* @BROWSCAP_NUM_CONTAINS, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %279

260:                                              ; preds = %256
  %261 = load i32*, i32** %17, align 8
  %262 = load i64, i64* %18, align 8
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %19, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %19, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = call i64 @browscap_compute_contains(i32* %261, i64 %262, i32* %268, i32* %274)
  store i64 %275, i64* %18, align 8
  br label %276

276:                                              ; preds = %260
  %277 = load i32, i32* %19, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %19, align 4
  br label %256

279:                                              ; preds = %256
  br label %280

280:                                              ; preds = %34, %138, %35, %279, %193, %185
  ret void
}

declare dso_local i32 @GC_FLAGS(i32) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32* @ZSTR_CHAR(i8 signext) #1

declare dso_local i32* @ZSTR_EMPTY_ALLOC(...) #1

declare dso_local i32* @browscap_intern_str(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32* @Z_STR_P(i32*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_error(i32, i8*, i8*, i32) #1

declare dso_local i32 @INI_STR(i8*) #1

declare dso_local i32 @zend_string_release(i32*) #1

declare dso_local i32* @browscap_intern_str_ci(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @browscap_add_kv(%struct.TYPE_9__*, i32*, i32*, i32) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @php_error_docref(i32*, i32, i8*, i32) #1

declare dso_local i32* @zend_new_interned_string(i8*) #1

declare dso_local i8* @zend_string_copy(i32*) #1

declare dso_local i32 @ZSTR_IS_INTERNED(i32*) #1

declare dso_local %struct.TYPE_11__* @pemalloc(i32, i32) #1

declare dso_local i32 @zend_hash_update_ptr(i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @browscap_compute_prefix_len(i32*) #1

declare dso_local i64 @browscap_compute_contains(i32*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
