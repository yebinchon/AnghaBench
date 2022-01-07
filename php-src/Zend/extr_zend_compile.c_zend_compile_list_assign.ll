; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_list_assign.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_list_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_25__** }
%struct.TYPE_23__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_25__** }

@IS_CONST = common dso_local global i64 0, align 8
@IS_STRING = common dso_local global i64 0, align 8
@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Cannot use empty array entries in keyed array assignment\00", align 1
@ZEND_AST_UNPACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Spread operator is not supported in assignments\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Cannot mix keyed and unkeyed array entries in assignments\00", align 1
@IS_CV = common dso_local global i64 0, align 8
@ZEND_FETCH_DIM_W = common dso_local global i32 0, align 4
@ZEND_FETCH_LIST_W = common dso_local global i32 0, align 4
@ZEND_FETCH_LIST_R = common dso_local global i32 0, align 4
@ZEND_AST_ARRAY = common dso_local global i64 0, align 8
@ZEND_MAKE_REF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Cannot use empty list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_25__*, %struct.TYPE_23__*, i32)* @zend_compile_list_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zend_compile_list_assign(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1, %struct.TYPE_23__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_23__, align 8
  %17 = alloca %struct.TYPE_23__, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %20 = call %struct.TYPE_24__* @zend_ast_get_list(%struct.TYPE_25__* %19)
  store %struct.TYPE_24__* %20, %struct.TYPE_24__** %9, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %28, i64 0
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %29, align 8
  %31 = icmp ne %struct.TYPE_25__* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %35, i64 0
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %39, i64 1
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %40, align 8
  %42 = icmp ne %struct.TYPE_25__* %41, null
  br label %43

43:                                               ; preds = %32, %25, %4
  %44 = phi i1 [ false, %25 ], [ false, %4 ], [ %42, %32 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %43
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @IS_CONST, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @Z_TYPE(i32 %60)
  %62 = load i64, i64* @IS_STRING, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = call i32 @zval_make_interned_string(i32* %67)
  br label %69

69:                                               ; preds = %64, %56, %50, %43
  store i64 0, i64* %10, align 8
  br label %70

70:                                               ; preds = %214, %69
  %71 = load i64, i64* %10, align 8
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %217

76:                                               ; preds = %70
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %79, i64 %80
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %81, align 8
  store %struct.TYPE_25__* %82, %struct.TYPE_25__** %13, align 8
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %84 = icmp eq %struct.TYPE_25__* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %76
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @E_COMPILE_ERROR, align 4
  %90 = call i32 @zend_error(i32 %89, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %92

91:                                               ; preds = %85
  br label %214

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92, %76
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ZEND_AST_UNPACK, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @E_COMPILE_ERROR, align 4
  %101 = call i32 @zend_error(i32 %100, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %102

102:                                              ; preds = %99, %93
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %105, i64 0
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %106, align 8
  store %struct.TYPE_25__* %107, %struct.TYPE_25__** %14, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %110, i64 1
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %111, align 8
  store %struct.TYPE_25__* %112, %struct.TYPE_25__** %15, align 8
  store i32 1, i32* %11, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %102
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %117 = icmp eq %struct.TYPE_25__* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* @E_COMPILE_ERROR, align 4
  %120 = call i32 @zend_error(i32 %119, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %123 = call i32 @zend_compile_expr(%struct.TYPE_23__* %17, %struct.TYPE_25__* %122)
  br label %137

124:                                              ; preds = %102
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %126 = icmp ne %struct.TYPE_25__* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* @E_COMPILE_ERROR, align 4
  %129 = call i32 @zend_error(i32 %128, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i64, i64* @IS_CONST, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  store i64 %131, i64* %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 0
  %135 = load i64, i64* %10, align 8
  %136 = call i32 @ZVAL_LONG(i32* %134, i64 %135)
  br label %137

137:                                              ; preds = %130, %121
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @IS_CONST, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @Z_TRY_ADDREF(i32 %147)
  br label %149

149:                                              ; preds = %143, %137
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @zend_verify_list_assign_target(%struct.TYPE_25__* %150, i32 %151)
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %149
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @IS_CV, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* @ZEND_FETCH_DIM_W, align 4
  br label %167

165:                                              ; preds = %157
  %166 = load i32, i32* @ZEND_FETCH_LIST_W, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  br label %171

169:                                              ; preds = %149
  %170 = load i32, i32* @ZEND_FETCH_LIST_R, align 4
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi i32 [ %168, %167 ], [ %170, %169 ]
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %174 = call i32* @zend_emit_op(%struct.TYPE_23__* %16, i32 %172, %struct.TYPE_23__* %173, %struct.TYPE_23__* %17)
  store i32* %174, i32** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @IS_CONST, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = load i32*, i32** %18, align 8
  %181 = call i32 @zend_handle_numeric_dim(i32* %180, %struct.TYPE_23__* %17)
  br label %182

182:                                              ; preds = %179, %171
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @ZEND_AST_ARRAY, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %182
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %188
  %194 = load i32, i32* @ZEND_MAKE_REF, align 4
  %195 = call i32* @zend_emit_op(%struct.TYPE_23__* %16, i32 %194, %struct.TYPE_23__* %16, %struct.TYPE_23__* null)
  br label %196

196:                                              ; preds = %193, %188
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  call void @zend_compile_list_assign(%struct.TYPE_23__* null, %struct.TYPE_25__* %197, %struct.TYPE_23__* %16, i32 %200)
  br label %213

201:                                              ; preds = %182
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %208 = call i32 @zend_emit_assign_ref_znode(%struct.TYPE_25__* %207, %struct.TYPE_23__* %16)
  br label %212

209:                                              ; preds = %201
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %211 = call i32 @zend_emit_assign_znode(%struct.TYPE_25__* %210, %struct.TYPE_23__* %16)
  br label %212

212:                                              ; preds = %209, %206
  br label %213

213:                                              ; preds = %212, %196
  br label %214

214:                                              ; preds = %213, %91
  %215 = load i64, i64* %10, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %10, align 8
  br label %70

217:                                              ; preds = %70
  %218 = load i32, i32* %11, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* @E_COMPILE_ERROR, align 4
  %222 = call i32 @zend_error_noreturn(i32 %221, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %217
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %225 = icmp ne %struct.TYPE_23__* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %223
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %229 = bitcast %struct.TYPE_23__* %227 to i8*
  %230 = bitcast %struct.TYPE_23__* %228 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %229, i8* align 8 %230, i64 16, i1 false)
  br label %234

231:                                              ; preds = %223
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %233 = call i32 @zend_do_free(%struct.TYPE_23__* %232)
  br label %234

234:                                              ; preds = %231, %226
  ret void
}

declare dso_local %struct.TYPE_24__* @zend_ast_get_list(%struct.TYPE_25__*) #1

declare dso_local i64 @Z_TYPE(i32) #1

declare dso_local i32 @zval_make_interned_string(i32*) #1

declare dso_local i32 @zend_error(i32, i8*) #1

declare dso_local i32 @zend_compile_expr(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ZVAL_LONG(i32*, i64) #1

declare dso_local i32 @Z_TRY_ADDREF(i32) #1

declare dso_local i32 @zend_verify_list_assign_target(%struct.TYPE_25__*, i32) #1

declare dso_local i32* @zend_emit_op(%struct.TYPE_23__*, i32, %struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_handle_numeric_dim(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_emit_assign_ref_znode(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_emit_assign_znode(%struct.TYPE_25__*, %struct.TYPE_23__*) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @zend_do_free(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
