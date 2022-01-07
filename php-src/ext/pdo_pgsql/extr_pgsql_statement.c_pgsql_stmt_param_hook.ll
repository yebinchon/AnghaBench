; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_statement.c_pgsql_stmt_param_hook.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_statement.c_pgsql_stmt_param_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i32, i32, i64 }
%struct.pdo_bound_param_data = type { i64, i32, i32, i64, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i8**, i32*, i32*, i32* }
%struct.TYPE_12__ = type { i64 }
%struct.pdo_pgsql_lob_self = type { i32 }

@PDO_PLACEHOLDER_NAMED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"HY093\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"parameter was not defined\00", align 1
@PDO_PARAM_LOB = common dso_local global i64 0, align 8
@IS_RESOURCE = common dso_local global i32 0, align 4
@pdo_pgsql_lob_stream_ops = common dso_local global i32 0, align 4
@OIDOID = common dso_local global i32 0, align 4
@PHP_STREAM_COPY_ALL = common dso_local global i32 0, align 4
@PGRES_FATAL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"HY105\00", align 1
@PDO_PARAM_NULL = common dso_local global i64 0, align 8
@IS_NULL = common dso_local global i32 0, align 4
@IS_FALSE = common dso_local global i32 0, align 4
@IS_TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@PDO_PARAM_BOOL = common dso_local global i64 0, align 8
@PDO_PARAM_INPUT_OUTPUT = common dso_local global i32 0, align 4
@PDO_PARAM_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.pdo_bound_param_data*, i32)* @pgsql_stmt_param_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_stmt_param_hook(%struct.TYPE_13__* %0, %struct.pdo_bound_param_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.pdo_bound_param_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.pdo_pgsql_lob_self*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.pdo_bound_param_data* %1, %struct.pdo_bound_param_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %8, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PDO_PLACEHOLDER_NAMED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %415

25:                                               ; preds = %3
  %26 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %27 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %415

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %414 [
    i32 129, label %32
    i32 128, label %43
    i32 134, label %105
    i32 133, label %127
    i32 130, label %127
    i32 131, label %127
    i32 132, label %128
  ]

32:                                               ; preds = %30
  %33 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %34 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %33, i32 0, i32 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = icmp ne %struct.TYPE_15__* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %39 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %38, i32 0, i32 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = call i32 @efree(%struct.TYPE_15__* %40)
  br label %42

42:                                               ; preds = %37, %32
  br label %414

43:                                               ; preds = %30
  %44 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %45 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %104

48:                                               ; preds = %43
  %49 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %50 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @ZSTR_VAL(i32 %51)
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 36
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %59 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %62 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @ZSTR_VAL(i32 %63)
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = call i32 @ZEND_ATOL(i64 %60, i8* %65)
  br label %103

67:                                               ; preds = %48
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %77 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @zend_hash_find_ptr(i32 %75, i32 %78)
  store i8* %79, i8** %9, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %72
  %82 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %83 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  %87 = call i32 @ZEND_ATOL(i64 %84, i8* %86)
  %88 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %89 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, -1
  store i64 %91, i64* %89, align 8
  br label %102

92:                                               ; preds = %72, %67
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %97 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %98 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @ZSTR_VAL(i32 %99)
  %101 = call i32 @pdo_raise_impl_error(i32 %95, %struct.TYPE_13__* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %100)
  store i32 0, i32* %4, align 4
  br label %455

102:                                              ; preds = %81
  br label %103

103:                                              ; preds = %102, %57
  br label %104

104:                                              ; preds = %103, %43
  br label %414

105:                                              ; preds = %30
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  store i32 1, i32* %4, align 4
  br label %455

111:                                              ; preds = %105
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %116 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @zend_hash_index_exists(i32 %114, i64 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %111
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %125 = call i32 @pdo_raise_impl_error(i32 %123, %struct.TYPE_13__* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %455

126:                                              ; preds = %111
  br label %127

127:                                              ; preds = %30, %30, %30, %126
  store i32 1, i32* %4, align 4
  br label %455

128:                                              ; preds = %30
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  store i32 1, i32* %4, align 4
  br label %455

134:                                              ; preds = %128
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  %137 = load i8**, i8*** %136, align 8
  %138 = icmp ne i8** %137, null
  br i1 %138, label %172, label %139

139:                                              ; preds = %134
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @zend_hash_num_elements(i32 %142)
  %144 = call i8* @ecalloc(i32 %143, i32 8)
  %145 = bitcast i8* %144 to i8**
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  store i8** %145, i8*** %147, align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @zend_hash_num_elements(i32 %150)
  %152 = call i8* @ecalloc(i32 %151, i32 4)
  %153 = bitcast i8* %152 to i32*
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  store i32* %153, i32** %155, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @zend_hash_num_elements(i32 %158)
  %160 = call i8* @ecalloc(i32 %159, i32 4)
  %161 = bitcast i8* %160 to i32*
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 2
  store i32* %161, i32** %163, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @zend_hash_num_elements(i32 %166)
  %168 = call i8* @ecalloc(i32 %167, i32 4)
  %169 = bitcast i8* %168 to i32*
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 3
  store i32* %169, i32** %171, align 8
  br label %172

172:                                              ; preds = %139, %134
  %173 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %174 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp uge i64 %175, 0
  br i1 %176, label %177, label %413

177:                                              ; preds = %172
  %178 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %179 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @Z_ISREF(i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %185 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = call i32* @Z_REFVAL(i32 %186)
  store i32* %187, i32** %10, align 8
  br label %191

188:                                              ; preds = %177
  %189 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %190 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %189, i32 0, i32 2
  store i32* %190, i32** %10, align 8
  br label %191

191:                                              ; preds = %188, %183
  %192 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %193 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @PDO_PARAM_TYPE(i32 %194)
  %196 = load i64, i64* @PDO_PARAM_LOB, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %288

198:                                              ; preds = %191
  %199 = load i32*, i32** %10, align 8
  %200 = call i32 @Z_TYPE_P(i32* %199)
  %201 = load i32, i32* @IS_RESOURCE, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %288

203:                                              ; preds = %198
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = call i32 @php_stream_from_zval_no_verify(%struct.TYPE_12__* %204, i32* %205)
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %208 = icmp ne %struct.TYPE_12__* %207, null
  br i1 %208, label %209, label %283

209:                                              ; preds = %203
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %211 = call i32 @php_stream_is(%struct.TYPE_12__* %210, i32* @pdo_pgsql_lob_stream_ops)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %268

213:                                              ; preds = %209
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = inttoptr i64 %216 to %struct.pdo_pgsql_lob_self*
  store %struct.pdo_pgsql_lob_self* %217, %struct.pdo_pgsql_lob_self** %12, align 8
  %218 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %219 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %218, i32 0, i32 4
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %219, align 8
  store %struct.TYPE_15__* %220, %struct.TYPE_15__** %13, align 8
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %222 = icmp eq %struct.TYPE_15__* %221, null
  br i1 %222, label %223, label %229

223:                                              ; preds = %213
  %224 = call i8* @ecalloc(i32 1, i32 4)
  %225 = bitcast i8* %224 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %225, %struct.TYPE_15__** %13, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %227 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %228 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %227, i32 0, i32 4
  store %struct.TYPE_15__* %226, %struct.TYPE_15__** %228, align 8
  br label %229

229:                                              ; preds = %223, %213
  %230 = load %struct.pdo_pgsql_lob_self*, %struct.pdo_pgsql_lob_self** %12, align 8
  %231 = getelementptr inbounds %struct.pdo_pgsql_lob_self, %struct.pdo_pgsql_lob_self* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @htonl(i32 %232)
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  store i32 %233, i32* %235, align 4
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = bitcast i32* %237 to i8*
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  %241 = load i8**, i8*** %240, align 8
  %242 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %243 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds i8*, i8** %241, i64 %244
  store i8* %238, i8** %245, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %250 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds i32, i32* %248, i64 %251
  store i32 4, i32* %252, align 4
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %257 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = getelementptr inbounds i32, i32* %255, i64 %258
  store i32 1, i32* %259, align 4
  %260 = load i32, i32* @OIDOID, align 4
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 3
  %263 = load i32*, i32** %262, align 8
  %264 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %265 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  store i32 %260, i32* %267, align 4
  store i32 1, i32* %4, align 4
  br label %455

268:                                              ; preds = %209
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %270 = load i32, i32* @PHP_STREAM_COPY_ALL, align 4
  %271 = call i32* @php_stream_copy_to_mem(%struct.TYPE_12__* %269, i32 %270, i32 0)
  store i32* %271, i32** %14, align 8
  %272 = load i32*, i32** %14, align 8
  %273 = icmp ne i32* %272, null
  br i1 %273, label %274, label %278

274:                                              ; preds = %268
  %275 = load i32*, i32** %10, align 8
  %276 = load i32*, i32** %14, align 8
  %277 = call i32 @ZVAL_STR(i32* %275, i32* %276)
  br label %281

278:                                              ; preds = %268
  %279 = load i32*, i32** %10, align 8
  %280 = call i32 @ZVAL_EMPTY_STRING(i32* %279)
  br label %281

281:                                              ; preds = %278, %274
  br label %282

282:                                              ; preds = %281
  br label %287

283:                                              ; preds = %203
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %285 = load i32, i32* @PGRES_FATAL_ERROR, align 4
  %286 = call i32 @pdo_pgsql_error_stmt(%struct.TYPE_13__* %284, i32 %285, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %455

287:                                              ; preds = %282
  br label %288

288:                                              ; preds = %287, %198, %191
  %289 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %290 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = call i64 @PDO_PARAM_TYPE(i32 %291)
  %293 = load i64, i64* @PDO_PARAM_NULL, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %300, label %295

295:                                              ; preds = %288
  %296 = load i32*, i32** %10, align 8
  %297 = call i32 @Z_TYPE_P(i32* %296)
  %298 = load i32, i32* @IS_NULL, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %315

300:                                              ; preds = %295, %288
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 0
  %303 = load i8**, i8*** %302, align 8
  %304 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %305 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = getelementptr inbounds i8*, i8** %303, i64 %306
  store i8* null, i8** %307, align 8
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %312 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds i32, i32* %310, i64 %313
  store i32 0, i32* %314, align 4
  br label %382

315:                                              ; preds = %295
  %316 = load i32*, i32** %10, align 8
  %317 = call i32 @Z_TYPE_P(i32* %316)
  %318 = load i32, i32* @IS_FALSE, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %325, label %320

320:                                              ; preds = %315
  %321 = load i32*, i32** %10, align 8
  %322 = call i32 @Z_TYPE_P(i32* %321)
  %323 = load i32, i32* @IS_TRUE, align 4
  %324 = icmp eq i32 %322, %323
  br i1 %324, label %325, label %353

325:                                              ; preds = %320, %315
  %326 = load i32*, i32** %10, align 8
  %327 = call i32 @Z_TYPE_P(i32* %326)
  %328 = load i32, i32* @IS_TRUE, align 4
  %329 = icmp eq i32 %327, %328
  %330 = zext i1 %329 to i64
  %331 = select i1 %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 0
  %334 = load i8**, i8*** %333, align 8
  %335 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %336 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds i8*, i8** %334, i64 %337
  store i8* %331, i8** %338, align 8
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %343 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = getelementptr inbounds i32, i32* %341, i64 %344
  store i32 1, i32* %345, align 4
  %346 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 2
  %348 = load i32*, i32** %347, align 8
  %349 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %350 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = getelementptr inbounds i32, i32* %348, i64 %351
  store i32 0, i32* %352, align 4
  br label %381

353:                                              ; preds = %320
  %354 = load i32*, i32** %10, align 8
  %355 = call i32 @convert_to_string_ex(i32* %354)
  %356 = load i32*, i32** %10, align 8
  %357 = call i8* @Z_STRVAL_P(i32* %356)
  %358 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 0
  %360 = load i8**, i8*** %359, align 8
  %361 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %362 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = getelementptr inbounds i8*, i8** %360, i64 %363
  store i8* %357, i8** %364, align 8
  %365 = load i32*, i32** %10, align 8
  %366 = call i32 @Z_STRLEN_P(i32* %365)
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %371 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  store i32 %366, i32* %373, align 4
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %375 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %374, i32 0, i32 2
  %376 = load i32*, i32** %375, align 8
  %377 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %378 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  store i32 0, i32* %380, align 4
  br label %381

381:                                              ; preds = %353, %325
  br label %382

382:                                              ; preds = %381, %300
  %383 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %384 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  %386 = call i64 @PDO_PARAM_TYPE(i32 %385)
  %387 = load i64, i64* @PDO_PARAM_LOB, align 8
  %388 = icmp eq i64 %386, %387
  br i1 %388, label %389, label %404

389:                                              ; preds = %382
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 3
  %392 = load i32*, i32** %391, align 8
  %393 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %394 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = getelementptr inbounds i32, i32* %392, i64 %395
  store i32 0, i32* %396, align 4
  %397 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %397, i32 0, i32 2
  %399 = load i32*, i32** %398, align 8
  %400 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %401 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %400, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = getelementptr inbounds i32, i32* %399, i64 %402
  store i32 1, i32* %403, align 4
  br label %412

404:                                              ; preds = %382
  %405 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %405, i32 0, i32 3
  %407 = load i32*, i32** %406, align 8
  %408 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %409 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = getelementptr inbounds i32, i32* %407, i64 %410
  store i32 0, i32* %411, align 4
  br label %412

412:                                              ; preds = %404, %389
  br label %413

413:                                              ; preds = %412, %172
  br label %414

414:                                              ; preds = %30, %413, %104, %42
  br label %454

415:                                              ; preds = %25, %3
  %416 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %417 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %416, i32 0, i32 3
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %453

420:                                              ; preds = %415
  %421 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %422 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 8
  %424 = call i64 @PDO_PARAM_TYPE(i32 %423)
  %425 = load i64, i64* @PDO_PARAM_BOOL, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %427, label %452

427:                                              ; preds = %420
  %428 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %429 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @PDO_PARAM_INPUT_OUTPUT, align 4
  %432 = and i32 %430, %431
  %433 = load i32, i32* @PDO_PARAM_INPUT_OUTPUT, align 4
  %434 = icmp ne i32 %432, %433
  br i1 %434, label %435, label %452

435:                                              ; preds = %427
  %436 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %437 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %436, i32 0, i32 2
  %438 = call i64 @zend_is_true(i32* %437)
  %439 = icmp ne i64 %438, 0
  %440 = zext i1 %439 to i64
  %441 = select i1 %439, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)
  store i8* %441, i8** %15, align 8
  %442 = load i32, i32* @PDO_PARAM_STR, align 4
  %443 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %444 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %443, i32 0, i32 1
  store i32 %442, i32* %444, align 8
  %445 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %446 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %445, i32 0, i32 2
  %447 = call i32 @zval_ptr_dtor(i32* %446)
  %448 = load %struct.pdo_bound_param_data*, %struct.pdo_bound_param_data** %6, align 8
  %449 = getelementptr inbounds %struct.pdo_bound_param_data, %struct.pdo_bound_param_data* %448, i32 0, i32 2
  %450 = load i8*, i8** %15, align 8
  %451 = call i32 @ZVAL_STRINGL(i32* %449, i8* %450, i32 1)
  br label %452

452:                                              ; preds = %435, %427, %420
  br label %453

453:                                              ; preds = %452, %415
  br label %454

454:                                              ; preds = %453, %414
  store i32 1, i32* %4, align 4
  br label %455

455:                                              ; preds = %454, %283, %229, %133, %127, %120, %110, %92
  %456 = load i32, i32* %4, align 4
  ret i32 %456
}

declare dso_local i32 @efree(%struct.TYPE_15__*) #1

declare dso_local i8* @ZSTR_VAL(i32) #1

declare dso_local i32 @ZEND_ATOL(i64, i8*) #1

declare dso_local i8* @zend_hash_find_ptr(i32, i32) #1

declare dso_local i32 @pdo_raise_impl_error(i32, %struct.TYPE_13__*, i8*, i8*) #1

declare dso_local i32 @zend_hash_index_exists(i32, i64) #1

declare dso_local i8* @ecalloc(i32, i32) #1

declare dso_local i32 @zend_hash_num_elements(i32) #1

declare dso_local i32 @Z_ISREF(i32) #1

declare dso_local i32* @Z_REFVAL(i32) #1

declare dso_local i64 @PDO_PARAM_TYPE(i32) #1

declare dso_local i32 @Z_TYPE_P(i32*) #1

declare dso_local i32 @php_stream_from_zval_no_verify(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @php_stream_is(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32* @php_stream_copy_to_mem(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ZVAL_STR(i32*, i32*) #1

declare dso_local i32 @ZVAL_EMPTY_STRING(i32*) #1

declare dso_local i32 @pdo_pgsql_error_stmt(%struct.TYPE_13__*, i32, i8*) #1

declare dso_local i32 @convert_to_string_ex(i32*) #1

declare dso_local i8* @Z_STRVAL_P(i32*) #1

declare dso_local i32 @Z_STRLEN_P(i32*) #1

declare dso_local i64 @zend_is_true(i32*) #1

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
