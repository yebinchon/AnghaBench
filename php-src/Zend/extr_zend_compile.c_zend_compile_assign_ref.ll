; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_assign_ref.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_assign_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_21__** }
%struct.TYPE_20__ = type { i64, i32 }

@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot re-assign $this\00", align 1
@BP_VAR_W = common dso_local global i32 0, align 4
@ZEND_AST_VAR = common dso_local global i64 0, align 8
@ZEND_AST_ZVAL = common dso_local global i64 0, align 8
@IS_CV = common dso_local global i64 0, align 8
@ZEND_MAKE_REF = common dso_local global i32 0, align 4
@IS_VAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"Cannot use result of built-in function in write context\00", align 1
@ZEND_RETURNS_FUNCTION = common dso_local global i32 0, align 4
@ZEND_FETCH_OBJ_W = common dso_local global i64 0, align 8
@ZEND_ASSIGN_OBJ_REF = common dso_local global i64 0, align 8
@ZEND_FETCH_REF = common dso_local global i32 0, align 4
@ZEND_FETCH_STATIC_PROP_W = common dso_local global i64 0, align 8
@ZEND_ASSIGN_STATIC_PROP_REF = common dso_local global i64 0, align 8
@ZEND_ASSIGN_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_assign_ref(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca %struct.TYPE_19__, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %14, i64 0
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %5, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %19, i64 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %6, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = call i64 @is_this_fetch(%struct.TYPE_21__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @E_COMPILE_ERROR, align 4
  %27 = call i32 @zend_error_noreturn(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = call i32 @zend_ensure_writable_variable(%struct.TYPE_21__* %29)
  %31 = call i32 (...) @zend_delayed_compile_begin()
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = load i32, i32* @BP_VAR_W, align 4
  %34 = call i32 @zend_delayed_compile_var(%struct.TYPE_19__* %7, %struct.TYPE_21__* %32, i32 %33, i32 1)
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %36 = load i32, i32* @BP_VAR_W, align 4
  %37 = call i32 @zend_compile_var(%struct.TYPE_19__* %8, %struct.TYPE_21__* %35, i32 %36, i32 1)
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ZEND_AST_VAR, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %28
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %46, i64 0
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @ZEND_AST_ZVAL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %43, %28
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @IS_CV, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @ZEND_MAKE_REF, align 4
  %60 = call %struct.TYPE_20__* @zend_emit_op(%struct.TYPE_19__* %8, i32 %59, %struct.TYPE_19__* %8, %struct.TYPE_19__* null)
  br label %61

61:                                               ; preds = %58, %53, %43
  %62 = load i32, i32* %10, align 4
  %63 = call %struct.TYPE_20__* @zend_delayed_compile_end(i32 %62)
  store %struct.TYPE_20__* %63, %struct.TYPE_20__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %8, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IS_VAR, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %70 = call i64 @zend_is_call(%struct.TYPE_21__* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* @E_COMPILE_ERROR, align 4
  %74 = call i32 @zend_error_noreturn(i32 %73, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %68, %61
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %77 = call i64 @zend_is_call(%struct.TYPE_21__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @ZEND_RETURNS_FUNCTION, align 4
  br label %82

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  store i32 %83, i32* %11, align 4
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %85 = icmp ne %struct.TYPE_20__* %84, null
  br i1 %85, label %86, label %115

86:                                               ; preds = %82
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ZEND_FETCH_OBJ_W, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %86
  %93 = load i64, i64* @ZEND_ASSIGN_OBJ_REF, align 8
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load i32, i32* @ZEND_FETCH_REF, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = call i32 @zend_emit_op_data(%struct.TYPE_19__* %8)
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %109 = icmp ne %struct.TYPE_19__* %108, null
  br i1 %109, label %110, label %114

110:                                              ; preds = %92
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %112 = bitcast %struct.TYPE_19__* %111 to i8*
  %113 = bitcast %struct.TYPE_19__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 %113, i64 8, i1 false)
  br label %114

114:                                              ; preds = %110, %92
  br label %155

115:                                              ; preds = %86, %82
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %117 = icmp ne %struct.TYPE_20__* %116, null
  br i1 %117, label %118, label %147

118:                                              ; preds = %115
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @ZEND_FETCH_STATIC_PROP_W, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %147

124:                                              ; preds = %118
  %125 = load i64, i64* @ZEND_ASSIGN_STATIC_PROP_REF, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  %128 = load i32, i32* @ZEND_FETCH_REF, align 4
  %129 = xor i32 %128, -1
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = and i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = call i32 @zend_emit_op_data(%struct.TYPE_19__* %8)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %141 = icmp ne %struct.TYPE_19__* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %124
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %144 = bitcast %struct.TYPE_19__* %143 to i8*
  %145 = bitcast %struct.TYPE_19__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %144, i8* align 8 %145, i64 8, i1 false)
  br label %146

146:                                              ; preds = %142, %124
  br label %154

147:                                              ; preds = %118, %115
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %149 = load i32, i32* @ZEND_ASSIGN_REF, align 4
  %150 = call %struct.TYPE_20__* @zend_emit_op(%struct.TYPE_19__* %148, i32 %149, %struct.TYPE_19__* %7, %struct.TYPE_19__* %8)
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %9, align 8
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 8
  br label %154

154:                                              ; preds = %147, %146
  br label %155

155:                                              ; preds = %154, %114
  ret void
}

declare dso_local i64 @is_this_fetch(%struct.TYPE_21__*) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*) #1

declare dso_local i32 @zend_ensure_writable_variable(%struct.TYPE_21__*) #1

declare dso_local i32 @zend_delayed_compile_begin(...) #1

declare dso_local i32 @zend_delayed_compile_var(%struct.TYPE_19__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @zend_compile_var(%struct.TYPE_19__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @zend_emit_op(%struct.TYPE_19__*, i32, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @zend_delayed_compile_end(i32) #1

declare dso_local i64 @zend_is_call(%struct.TYPE_21__*) #1

declare dso_local i32 @zend_emit_op_data(%struct.TYPE_19__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
