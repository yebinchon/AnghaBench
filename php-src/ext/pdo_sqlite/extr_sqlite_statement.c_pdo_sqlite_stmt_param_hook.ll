; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_statement.c_pdo_sqlite_stmt_param_hook.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_sqlite/extr_sqlite_statement.c_pdo_sqlite_stmt_param_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.pdo_bound_param_data = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@IS_NULL = common dso_local global i32 0, align 4
@IS_RESOURCE = common dso_local global i32 0, align 4
@PHP_STREAM_COPY_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"HY105\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Expected a stream resource\00", align 1
@SQLITE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.pdo_bound_param_data*, i32)* @pdo_sqlite_stmt_param_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_sqlite_stmt_param_hook(%struct.TYPE_6__* %0, %struct.pdo_bound_param_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.pdo_bound_param_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.pdo_bound_param_data* %1, %struct.pdo_bound_param_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %8, align 8
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %282 [
    i32 133, label %17
  ]

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sqlite3_reset(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %27, %22, %17
  %35 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %36 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %281

39:                                               ; preds = %34
  %40 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %41 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %49 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ZSTR_VAL(i32 %50)
  %52 = call i32 @sqlite3_bind_parameter_index(i32 %47, i32 %51)
  %53 = sub nsw i32 %52, 1
  %54 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %55 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %44, %39
  %57 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %58 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PDO_PARAM_TYPE(i32 %59)
  switch i32 %60, label %223 [
    i32 129, label %61
    i32 130, label %62
    i32 132, label %77
    i32 134, label %77
    i32 131, label %129
    i32 128, label %222
  ]

61:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %284

62:                                               ; preds = %56
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %67 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  %70 = call i32 @sqlite3_bind_null(i32 %65, i32 %69)
  %71 = load i32, i32* @SQLITE_OK, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  store i32 1, i32* %4, align 4
  br label %284

74:                                               ; preds = %62
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %76 = call i32 @pdo_sqlite_error_stmt(%struct.TYPE_6__* %75)
  store i32 0, i32* %4, align 4
  br label %284

77:                                               ; preds = %56, %56
  %78 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %79 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @Z_ISREF(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %85 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32* @Z_REFVAL(i32 %86)
  store i32* %87, i32** %9, align 8
  br label %91

88:                                               ; preds = %77
  %89 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %90 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %89, i32 0, i32 1
  store i32* %90, i32** %9, align 8
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @Z_TYPE_P(i32* %92)
  %94 = load i32, i32* @IS_NULL, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %91
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %101 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  %104 = call i32 @sqlite3_bind_null(i32 %99, i32 %103)
  %105 = load i32, i32* @SQLITE_OK, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  store i32 1, i32* %4, align 4
  br label %284

108:                                              ; preds = %96
  br label %126

109:                                              ; preds = %91
  %110 = load i32*, i32** %9, align 8
  %111 = call i32 @convert_to_long(i32* %110)
  %112 = load i32, i32* @SQLITE_OK, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %117 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @Z_LVAL_P(i32* %120)
  %122 = call i32 @sqlite3_bind_int(i32 %115, i32 %119, i32 %121)
  %123 = icmp eq i32 %112, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %109
  store i32 1, i32* %4, align 4
  br label %284

125:                                              ; preds = %109
  br label %126

126:                                              ; preds = %125, %108
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %128 = call i32 @pdo_sqlite_error_stmt(%struct.TYPE_6__* %127)
  store i32 0, i32* %4, align 4
  br label %284

129:                                              ; preds = %56
  %130 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %131 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @Z_ISREF(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %137 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32* @Z_REFVAL(i32 %138)
  store i32* %139, i32** %9, align 8
  br label %143

140:                                              ; preds = %129
  %141 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %142 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %141, i32 0, i32 1
  store i32* %142, i32** %9, align 8
  br label %143

143:                                              ; preds = %140, %135
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @Z_TYPE_P(i32* %144)
  %146 = load i32, i32* @IS_RESOURCE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %177

148:                                              ; preds = %143
  store i32* null, i32** %10, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = call i32 @php_stream_from_zval_no_verify(i32* %149, i32* %150)
  %152 = load i32*, i32** %10, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %170

154:                                              ; preds = %148
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* @PHP_STREAM_COPY_ALL, align 4
  %157 = call i32* @php_stream_copy_to_mem(i32* %155, i32 %156, i32 0)
  store i32* %157, i32** %11, align 8
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @zval_ptr_dtor(i32* %158)
  %160 = load i32*, i32** %9, align 8
  %161 = load i32*, i32** %11, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %154
  %164 = load i32*, i32** %11, align 8
  br label %167

165:                                              ; preds = %154
  %166 = call i32* (...) @ZSTR_EMPTY_ALLOC()
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32* [ %164, %163 ], [ %166, %165 ]
  %169 = call i32 @ZVAL_STR(i32* %160, i32* %168)
  br label %176

170:                                              ; preds = %148
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %175 = call i32 @pdo_raise_impl_error(i32 %173, %struct.TYPE_6__* %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %284

176:                                              ; preds = %167
  br label %204

177:                                              ; preds = %143
  %178 = load i32*, i32** %9, align 8
  %179 = call i32 @Z_TYPE_P(i32* %178)
  %180 = load i32, i32* @IS_NULL, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %197

182:                                              ; preds = %177
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %187 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  %190 = call i32 @sqlite3_bind_null(i32 %185, i32 %189)
  %191 = load i32, i32* @SQLITE_OK, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %182
  store i32 1, i32* %4, align 4
  br label %284

194:                                              ; preds = %182
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %196 = call i32 @pdo_sqlite_error_stmt(%struct.TYPE_6__* %195)
  store i32 0, i32* %4, align 4
  br label %284

197:                                              ; preds = %177
  %198 = load i32*, i32** %9, align 8
  %199 = call i32 @try_convert_to_string(i32* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  store i32 0, i32* %4, align 4
  br label %284

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203, %176
  %205 = load i32, i32* @SQLITE_OK, align 4
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %210 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  %213 = load i32*, i32** %9, align 8
  %214 = call i32 @Z_STRVAL_P(i32* %213)
  %215 = load i32*, i32** %9, align 8
  %216 = call i32 @Z_STRLEN_P(i32* %215)
  %217 = load i32, i32* @SQLITE_STATIC, align 4
  %218 = call i32 @sqlite3_bind_blob(i32 %208, i32 %212, i32 %214, i32 %216, i32 %217)
  %219 = icmp eq i32 %205, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %204
  store i32 1, i32* %4, align 4
  br label %284

221:                                              ; preds = %204
  store i32 0, i32* %4, align 4
  br label %284

222:                                              ; preds = %56
  br label %223

223:                                              ; preds = %56, %222
  %224 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %225 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @Z_ISREF(i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %223
  %230 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %231 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32* @Z_REFVAL(i32 %232)
  store i32* %233, i32** %9, align 8
  br label %237

234:                                              ; preds = %223
  %235 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %236 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %235, i32 0, i32 1
  store i32* %236, i32** %9, align 8
  br label %237

237:                                              ; preds = %234, %229
  %238 = load i32*, i32** %9, align 8
  %239 = call i32 @Z_TYPE_P(i32* %238)
  %240 = load i32, i32* @IS_NULL, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %255

242:                                              ; preds = %237
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %247 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  %250 = call i32 @sqlite3_bind_null(i32 %245, i32 %249)
  %251 = load i32, i32* @SQLITE_OK, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %242
  store i32 1, i32* %4, align 4
  br label %284

254:                                              ; preds = %242
  br label %278

255:                                              ; preds = %237
  %256 = load i32*, i32** %9, align 8
  %257 = call i32 @try_convert_to_string(i32* %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %255
  store i32 0, i32* %4, align 4
  br label %284

260:                                              ; preds = %255
  %261 = load i32, i32* @SQLITE_OK, align 4
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %266 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 1
  %269 = load i32*, i32** %9, align 8
  %270 = call i32 @Z_STRVAL_P(i32* %269)
  %271 = load i32*, i32** %9, align 8
  %272 = call i32 @Z_STRLEN_P(i32* %271)
  %273 = load i32, i32* @SQLITE_STATIC, align 4
  %274 = call i32 @sqlite3_bind_text(i32 %264, i32 %268, i32 %270, i32 %272, i32 %273)
  %275 = icmp eq i32 %261, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %260
  store i32 1, i32* %4, align 4
  br label %284

277:                                              ; preds = %260
  br label %278

278:                                              ; preds = %277, %254
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %280 = call i32 @pdo_sqlite_error_stmt(%struct.TYPE_6__* %279)
  store i32 0, i32* %4, align 4
  br label %284

281:                                              ; preds = %34
  br label %283

282:                                              ; preds = %3
  br label %283

283:                                              ; preds = %282, %281
  store i32 1, i32* %4, align 4
  br label %284

284:                                              ; preds = %283, %278, %276, %259, %253, %221, %220, %201, %194, %193, %170, %126, %124, %107, %74, %73, %61
  %285 = load i32, i32* %4, align 4
  ret i32 %285
}

declare dso_local i32 @sqlite3_reset(i32) #1

declare dso_local i32 @sqlite3_bind_parameter_index(i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32) #1

declare dso_local i32 @PDO_PARAM_TYPE(i32) #1

declare dso_local i32 @sqlite3_bind_null(i32, i32) #1

declare dso_local i32 @pdo_sqlite_error_stmt(%struct.TYPE_6__*) #1

declare dso_local i32 @Z_ISREF(i32) #1

declare dso_local i32* @Z_REFVAL(i32) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @convert_to_long(i32*) #1

declare dso_local i32 @sqlite3_bind_int(i32, i32, i32) #1

declare dso_local i32 @Z_LVAL_P(i32*) #1

declare dso_local i32 @php_stream_from_zval_no_verify(i32*, i32*) #1

declare dso_local i32* @php_stream_copy_to_mem(i32*, i32, i32) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @ZVAL_STR(i32*, i32*) #1

declare dso_local i32* @ZSTR_EMPTY_ALLOC(...) #1

declare dso_local i32 @pdo_raise_impl_error(i32, %struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @try_convert_to_string(i32*) #1

declare dso_local i32 @sqlite3_bind_blob(i32, i32, i32, i32, i32) #1

declare dso_local i32 @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i32 @sqlite3_bind_text(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
