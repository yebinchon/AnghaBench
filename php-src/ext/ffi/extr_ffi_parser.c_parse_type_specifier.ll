; ModuleID = '/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_type_specifier.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/ffi/extr_ffi_parser.c_parse_type_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@ZEND_FFI_DCL_TYPE_SPECIFIERS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"unexpected\00", align 1
@ZEND_FFI_DCL_VOID = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_SIGNED = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_UNSIGNED = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_CHAR = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_INT = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_SHORT = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_LONG = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_LONG_LONG = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_DOUBLE = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_COMPLEX = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_FLOAT = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_BOOL = common dso_local global i32 0, align 4
@ZEND_FFI_DCL_TYPEDEF_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_6__*)* @parse_type_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_type_specifier(i32 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %341 [
    i32 132, label %8
    i32 145, label %25
    i32 137, label %46
    i32 139, label %69
    i32 138, label %96
    i32 141, label %157
    i32 143, label %176
    i32 136, label %197
    i32 133, label %224
    i32 131, label %251
    i32 130, label %268
    i32 144, label %268
    i32 129, label %268
    i32 128, label %268
    i32 135, label %291
    i32 134, label %291
    i32 142, label %305
    i32 140, label %319
  ]

8:                                                ; preds = %2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %8
  %19 = call i32 (...) @get_sym()
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* @ZEND_FFI_DCL_VOID, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %344

25:                                               ; preds = %2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %30 = load i32, i32* @ZEND_FFI_DCL_SIGNED, align 4
  %31 = load i32, i32* @ZEND_FFI_DCL_UNSIGNED, align 4
  %32 = or i32 %30, %31
  %33 = sub nsw i32 %29, %32
  %34 = and i32 %28, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %25
  %40 = call i32 (...) @get_sym()
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* @ZEND_FFI_DCL_CHAR, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %344

46:                                               ; preds = %2
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %51 = load i32, i32* @ZEND_FFI_DCL_SIGNED, align 4
  %52 = load i32, i32* @ZEND_FFI_DCL_UNSIGNED, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @ZEND_FFI_DCL_INT, align 4
  %55 = or i32 %53, %54
  %56 = sub nsw i32 %50, %55
  %57 = and i32 %49, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %46
  %63 = call i32 (...) @get_sym()
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* @ZEND_FFI_DCL_SHORT, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %344

69:                                               ; preds = %2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %74 = load i32, i32* @ZEND_FFI_DCL_SIGNED, align 4
  %75 = load i32, i32* @ZEND_FFI_DCL_UNSIGNED, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @ZEND_FFI_DCL_SHORT, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @ZEND_FFI_DCL_LONG, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @ZEND_FFI_DCL_LONG_LONG, align 4
  %82 = or i32 %80, %81
  %83 = sub nsw i32 %73, %82
  %84 = and i32 %72, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %69
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %86, %69
  %90 = call i32 (...) @get_sym()
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @ZEND_FFI_DCL_INT, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 4
  br label %344

96:                                               ; preds = %2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ZEND_FFI_DCL_LONG, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %96
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %108 = load i32, i32* @ZEND_FFI_DCL_LONG, align 4
  %109 = load i32, i32* @ZEND_FFI_DCL_SIGNED, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @ZEND_FFI_DCL_UNSIGNED, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @ZEND_FFI_DCL_INT, align 4
  %114 = or i32 %112, %113
  %115 = sub nsw i32 %107, %114
  %116 = and i32 %106, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %103
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %103
  %122 = load i32, i32* @ZEND_FFI_DCL_LONG_LONG, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %155

127:                                              ; preds = %96
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %132 = load i32, i32* @ZEND_FFI_DCL_LONG, align 4
  %133 = load i32, i32* @ZEND_FFI_DCL_SIGNED, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @ZEND_FFI_DCL_UNSIGNED, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @ZEND_FFI_DCL_INT, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @ZEND_FFI_DCL_DOUBLE, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @ZEND_FFI_DCL_COMPLEX, align 4
  %142 = or i32 %140, %141
  %143 = sub nsw i32 %131, %142
  %144 = and i32 %130, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %127
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %147)
  br label %149

149:                                              ; preds = %146, %127
  %150 = load i32, i32* @ZEND_FFI_DCL_LONG, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %149, %121
  %156 = call i32 (...) @get_sym()
  store i32 %156, i32* %3, align 4
  br label %344

157:                                              ; preds = %2
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %162 = load i32, i32* @ZEND_FFI_DCL_COMPLEX, align 4
  %163 = sub nsw i32 %161, %162
  %164 = and i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %166, %157
  %170 = call i32 (...) @get_sym()
  store i32 %170, i32* %3, align 4
  %171 = load i32, i32* @ZEND_FFI_DCL_FLOAT, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %344

176:                                              ; preds = %2
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %181 = load i32, i32* @ZEND_FFI_DCL_LONG, align 4
  %182 = load i32, i32* @ZEND_FFI_DCL_COMPLEX, align 4
  %183 = or i32 %181, %182
  %184 = sub nsw i32 %180, %183
  %185 = and i32 %179, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %176
  %188 = load i32, i32* %3, align 4
  %189 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %187, %176
  %191 = call i32 (...) @get_sym()
  store i32 %191, i32* %3, align 4
  %192 = load i32, i32* @ZEND_FFI_DCL_DOUBLE, align 4
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  br label %344

197:                                              ; preds = %2
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %202 = load i32, i32* @ZEND_FFI_DCL_CHAR, align 4
  %203 = load i32, i32* @ZEND_FFI_DCL_SHORT, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @ZEND_FFI_DCL_LONG, align 4
  %206 = or i32 %204, %205
  %207 = load i32, i32* @ZEND_FFI_DCL_LONG_LONG, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @ZEND_FFI_DCL_INT, align 4
  %210 = or i32 %208, %209
  %211 = sub nsw i32 %201, %210
  %212 = and i32 %200, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %197
  %215 = load i32, i32* %3, align 4
  %216 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %214, %197
  %218 = call i32 (...) @get_sym()
  store i32 %218, i32* %3, align 4
  %219 = load i32, i32* @ZEND_FFI_DCL_SIGNED, align 4
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %219
  store i32 %223, i32* %221, align 4
  br label %344

224:                                              ; preds = %2
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %229 = load i32, i32* @ZEND_FFI_DCL_CHAR, align 4
  %230 = load i32, i32* @ZEND_FFI_DCL_SHORT, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @ZEND_FFI_DCL_LONG, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @ZEND_FFI_DCL_LONG_LONG, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @ZEND_FFI_DCL_INT, align 4
  %237 = or i32 %235, %236
  %238 = sub nsw i32 %228, %237
  %239 = and i32 %227, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %224
  %242 = load i32, i32* %3, align 4
  %243 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %241, %224
  %245 = call i32 (...) @get_sym()
  store i32 %245, i32* %3, align 4
  %246 = load i32, i32* @ZEND_FFI_DCL_UNSIGNED, align 4
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %246
  store i32 %250, i32* %248, align 4
  br label %344

251:                                              ; preds = %2
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %251
  %259 = load i32, i32* %3, align 4
  %260 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %259)
  br label %261

261:                                              ; preds = %258, %251
  %262 = call i32 (...) @get_sym()
  store i32 %262, i32* %3, align 4
  %263 = load i32, i32* @ZEND_FFI_DCL_BOOL, align 4
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %344

268:                                              ; preds = %2, %2, %2, %2
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %273 = load i32, i32* @ZEND_FFI_DCL_FLOAT, align 4
  %274 = load i32, i32* @ZEND_FFI_DCL_DOUBLE, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* @ZEND_FFI_DCL_LONG, align 4
  %277 = or i32 %275, %276
  %278 = sub nsw i32 %272, %277
  %279 = and i32 %271, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %268
  %282 = load i32, i32* %3, align 4
  %283 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %282)
  br label %284

284:                                              ; preds = %281, %268
  %285 = call i32 (...) @get_sym()
  store i32 %285, i32* %3, align 4
  %286 = load i32, i32* @ZEND_FFI_DCL_COMPLEX, align 4
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %344

291:                                              ; preds = %2, %2
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %291
  %299 = load i32, i32* %3, align 4
  %300 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %299)
  br label %301

301:                                              ; preds = %298, %291
  %302 = load i32, i32* %3, align 4
  %303 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %304 = call i32 @parse_struct_or_union_specifier(i32 %302, %struct.TYPE_6__* %303)
  store i32 %304, i32* %3, align 4
  br label %344

305:                                              ; preds = %2
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %305
  %313 = load i32, i32* %3, align 4
  %314 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %313)
  br label %315

315:                                              ; preds = %312, %305
  %316 = load i32, i32* %3, align 4
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %318 = call i32 @parse_enum_specifier(i32 %316, %struct.TYPE_6__* %317)
  store i32 %318, i32* %3, align 4
  br label %344

319:                                              ; preds = %2
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* @ZEND_FFI_DCL_TYPE_SPECIFIERS, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %319
  %327 = load i32, i32* %3, align 4
  %328 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %327)
  br label %329

329:                                              ; preds = %326, %319
  %330 = load i32, i32* %3, align 4
  %331 = call i32 @parse_ID(i32 %330, i8** %5, i64* %6)
  store i32 %331, i32* %3, align 4
  %332 = load i32, i32* @ZEND_FFI_DCL_TYPEDEF_NAME, align 4
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 4
  %337 = load i8*, i8** %5, align 8
  %338 = load i64, i64* %6, align 8
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %340 = call i32 @zend_ffi_resolve_typedef(i8* %337, i64 %338, %struct.TYPE_6__* %339)
  br label %344

341:                                              ; preds = %2
  %342 = load i32, i32* %3, align 4
  %343 = call i32 @yy_error_sym(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %342)
  br label %344

344:                                              ; preds = %341, %329, %315, %301, %284, %261, %244, %217, %190, %169, %155, %89, %62, %39, %18
  %345 = load i32, i32* %3, align 4
  ret i32 %345
}

declare dso_local i32 @yy_error_sym(i8*, i32) #1

declare dso_local i32 @get_sym(...) #1

declare dso_local i32 @parse_struct_or_union_specifier(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @parse_enum_specifier(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @parse_ID(i32, i8**, i64*) #1

declare dso_local i32 @zend_ffi_resolve_typedef(i8*, i64, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
