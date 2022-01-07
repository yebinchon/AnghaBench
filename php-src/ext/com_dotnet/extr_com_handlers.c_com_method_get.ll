; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_handlers.c_com_method_get.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_handlers.c_com_method_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_19__*, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_25__ = type { i32*, i32, i64, i32, i32 }
%struct.TYPE_26__ = type { i32*, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@VT_DISPATCH = common dso_local global i64 0, align 8
@ZEND_INTERNAL_FUNCTION = common dso_local global i32 0, align 4
@ZEND_ACC_CALL_VIA_HANDLER = common dso_local global i32 0, align 4
@com_method_handler = common dso_local global i32 0, align 4
@SYS_WIN32 = common dso_local global i32 0, align 4
@LOCALE_SYSTEM_DEFAULT = common dso_local global i32 0, align 4
@INVOKE_FUNC = common dso_local global i32 0, align 4
@PARAMFLAG_FOUT = common dso_local global i32 0, align 4
@function_dtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_23__*, i32*)* @com_method_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @com_method_get(i32** %0, %struct.TYPE_23__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_24__, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_26__, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %9, align 8
  %21 = load i32**, i32*** %5, align 8
  %22 = load i32*, i32** %21, align 8
  %23 = bitcast i32* %22 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %23, %struct.TYPE_25__** %12, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 4
  %26 = call i64 @V_VT(i32* %25)
  %27 = load i64, i64* @VT_DISPATCH, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %218

30:                                               ; preds = %3
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @php_com_get_id_of_name(%struct.TYPE_25__* %31, i32 %34, i32 %37, i32* %11)
  %39 = call i64 @FAILED(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32* null, i32** %4, align 8
  br label %218

42:                                               ; preds = %30
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %52 = call %struct.TYPE_24__* @zend_hash_find_ptr(i32* %50, %struct.TYPE_23__* %51)
  store %struct.TYPE_24__* %52, %struct.TYPE_24__** %9, align 8
  %53 = icmp eq %struct.TYPE_24__* null, %52
  br i1 %53, label %54, label %204

54:                                               ; preds = %47, %42
  %55 = call i32 @memset(%struct.TYPE_24__* %8, i32 0, i32 32)
  %56 = load i32, i32* @ZEND_INTERNAL_FUNCTION, align 4
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 6
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  store i32 0, i32* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %59, align 8
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 5
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* @ZEND_ACC_CALL_VIA_HANDLER, align 4
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 4
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %67 = call i32 @zend_string_copy(%struct.TYPE_23__* %66)
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @com_method_handler, align 4
  %70 = call i32 @PHP_FN(i32 %69)
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 3
  store i32 %70, i32* %71, align 8
  store %struct.TYPE_24__* %8, %struct.TYPE_24__** %9, align 8
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %181

76:                                               ; preds = %54
  store i32* null, i32** %14, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @ITypeInfo_GetTypeComp(i64 %79, i32** %13)
  %81 = call i64 @SUCCEEDED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %180

83:                                               ; preds = %76
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32* @php_com_string_to_olestring(i32 %86, i32 %89, i32 %92)
  store i32* %93, i32** %17, align 8
  %94 = load i32, i32* @SYS_WIN32, align 4
  %95 = load i32, i32* @LOCALE_SYSTEM_DEFAULT, align 4
  %96 = load i32*, i32** %17, align 8
  %97 = call i32 @LHashValOfNameSys(i32 %94, i32 %95, i32* %96)
  store i32 %97, i32* %18, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = load i32*, i32** %17, align 8
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* @INVOKE_FUNC, align 4
  %102 = call i32 @ITypeComp_Bind(i32* %98, i32* %99, i32 %100, i32 %101, i32** %14, i32* %15, %struct.TYPE_26__* %16)
  %103 = call i64 @SUCCEEDED(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %175

105:                                              ; preds = %83
  %106 = load i32, i32* %15, align 4
  switch i32 %106, label %168 [
    i32 131, label %107
    i32 128, label %158
    i32 129, label %163
    i32 130, label %167
  ]

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call %struct.TYPE_19__* @ecalloc(i32 %111, i32 4)
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  store %struct.TYPE_19__* %112, %struct.TYPE_19__** %113, align 8
  store i32 0, i32* %19, align 4
  br label %114

114:                                              ; preds = %145, %107
  %115 = load i32, i32* %19, align 4
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %115, %119
  br i1 %120, label %121, label %148

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %124, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @PARAMFLAG_FOUT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* %20, align 4
  %137 = call i32 @_ZEND_ARG_INFO_FLAGS(i32 %136, i32 0)
  %138 = call i32 @ZEND_TYPE_INIT_NONE(i32 %137)
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %139, align 8
  %141 = load i32, i32* %19, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  store i32 %138, i32* %144, align 4
  br label %145

145:                                              ; preds = %121
  %146 = load i32, i32* %19, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %19, align 4
  br label %114

148:                                              ; preds = %114
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  store i32 %152, i32* %153, align 8
  %154 = load i32*, i32** %14, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 2
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %155, align 8
  %157 = call i32 @ITypeInfo_ReleaseFuncDesc(i32* %154, %struct.TYPE_20__* %156)
  br label %168

158:                                              ; preds = %105
  %159 = load i32*, i32** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @ITypeInfo_ReleaseVarDesc(i32* %159, i32 %161)
  br label %168

163:                                              ; preds = %105
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @ITypeComp_Release(i32* %165)
  br label %168

167:                                              ; preds = %105
  br label %168

168:                                              ; preds = %105, %167, %163, %158, %148
  %169 = load i32*, i32** %14, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32*, i32** %14, align 8
  %173 = call i32 @ITypeInfo_Release(i32* %172)
  br label %174

174:                                              ; preds = %171, %168
  br label %175

175:                                              ; preds = %174, %83
  %176 = load i32*, i32** %13, align 8
  %177 = call i32 @ITypeComp_Release(i32* %176)
  %178 = load i32*, i32** %17, align 8
  %179 = call i32 @efree(i32* %178)
  br label %180

180:                                              ; preds = %175, %76
  br label %181

181:                                              ; preds = %180, %54
  %182 = bitcast %struct.TYPE_24__* %8 to i32*
  %183 = call i32 @zend_set_function_arg_flags(i32* %182)
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %198, label %188

188:                                              ; preds = %181
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @ALLOC_HASHTABLE(i32* %191)
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* @function_dtor, align 4
  %197 = call i32 @zend_hash_init(i32* %195, i32 2, i32* null, i32 %196, i32 0)
  br label %198

198:                                              ; preds = %188, %181
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %203 = call i32 @zend_hash_update_mem(i32* %201, %struct.TYPE_23__* %202, %struct.TYPE_24__* %8, i32 32)
  br label %204

204:                                              ; preds = %198, %47
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %206 = icmp ne %struct.TYPE_24__* %205, null
  br i1 %206, label %207, label %217

207:                                              ; preds = %204
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @zend_string_addref(i32 %210)
  %212 = call i32* @emalloc(i32 32)
  store i32* %212, i32** %10, align 8
  %213 = load i32*, i32** %10, align 8
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %215 = call i32 @memcpy(i32* %213, %struct.TYPE_24__* %214, i32 32)
  %216 = load i32*, i32** %10, align 8
  store i32* %216, i32** %4, align 8
  br label %218

217:                                              ; preds = %204
  store i32* null, i32** %4, align 8
  br label %218

218:                                              ; preds = %217, %207, %41, %29
  %219 = load i32*, i32** %4, align 8
  ret i32* %219
}

declare dso_local i64 @V_VT(i32*) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @php_com_get_id_of_name(%struct.TYPE_25__*, i32, i32, i32*) #1

declare dso_local %struct.TYPE_24__* @zend_hash_find_ptr(i32*, %struct.TYPE_23__*) #1

declare dso_local i32 @memset(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @zend_string_copy(%struct.TYPE_23__*) #1

declare dso_local i32 @PHP_FN(i32) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @ITypeInfo_GetTypeComp(i64, i32**) #1

declare dso_local i32* @php_com_string_to_olestring(i32, i32, i32) #1

declare dso_local i32 @LHashValOfNameSys(i32, i32, i32*) #1

declare dso_local i32 @ITypeComp_Bind(i32*, i32*, i32, i32, i32**, i32*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_19__* @ecalloc(i32, i32) #1

declare dso_local i32 @ZEND_TYPE_INIT_NONE(i32) #1

declare dso_local i32 @_ZEND_ARG_INFO_FLAGS(i32, i32) #1

declare dso_local i32 @ITypeInfo_ReleaseFuncDesc(i32*, %struct.TYPE_20__*) #1

declare dso_local i32 @ITypeInfo_ReleaseVarDesc(i32*, i32) #1

declare dso_local i32 @ITypeComp_Release(i32*) #1

declare dso_local i32 @ITypeInfo_Release(i32*) #1

declare dso_local i32 @efree(i32*) #1

declare dso_local i32 @zend_set_function_arg_flags(i32*) #1

declare dso_local i32 @ALLOC_HASHTABLE(i32*) #1

declare dso_local i32 @zend_hash_init(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @zend_hash_update_mem(i32*, %struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @zend_string_addref(i32) #1

declare dso_local i32* @emalloc(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
