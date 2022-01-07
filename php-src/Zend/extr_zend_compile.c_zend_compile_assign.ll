; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_assign.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_21__** }
%struct.TYPE_20__ = type { i32 }

@E_COMPILE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Cannot re-assign $this\00", align 1
@BP_VAR_W = common dso_local global i32 0, align 4
@ZEND_ASSIGN = common dso_local global i32 0, align 4
@ZEND_ASSIGN_STATIC_PROP = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@BP_VAR_R = common dso_local global i32 0, align 4
@ZEND_QM_ASSIGN = common dso_local global i32 0, align 4
@ZEND_ASSIGN_DIM = common dso_local global i32 0, align 4
@ZEND_ASSIGN_OBJ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Cannot assign reference to non referencable value\00", align 1
@ZEND_MAKE_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_assign(i32* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %15, i64 0
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  store %struct.TYPE_21__* %17, %struct.TYPE_21__** %5, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %20, i64 1
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %6, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %24 = call i64 @is_this_fetch(%struct.TYPE_21__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @E_COMPILE_ERROR, align 4
  %28 = call i32 @zend_error_noreturn(i32 %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %31 = call i32 @zend_ensure_writable_variable(%struct.TYPE_21__* %30)
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %158 [
    i32 128, label %35
    i32 129, label %47
    i32 131, label %61
    i32 130, label %98
    i32 132, label %112
  ]

35:                                               ; preds = %29
  %36 = call i32 (...) @zend_delayed_compile_begin()
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = load i32, i32* @BP_VAR_W, align 4
  %39 = call i32 @zend_delayed_compile_var(i32* %7, %struct.TYPE_21__* %37, i32 %38, i32 0)
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = call i32 @zend_compile_expr(i32* %8, %struct.TYPE_21__* %40)
  %42 = load i32, i32* %10, align 4
  %43 = call %struct.TYPE_20__* @zend_delayed_compile_end(i32 %42)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @ZEND_ASSIGN, align 4
  %46 = call i32 @zend_emit_op(i32* %44, i32 %45, i32* %7, i32* %8)
  br label %158

47:                                               ; preds = %29
  %48 = call i32 (...) @zend_delayed_compile_begin()
  store i32 %48, i32* %10, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %51 = load i32, i32* @BP_VAR_W, align 4
  %52 = call i32 @zend_delayed_compile_var(i32* %49, %struct.TYPE_21__* %50, i32 %51, i32 0)
  %53 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %54 = call i32 @zend_compile_expr(i32* %8, %struct.TYPE_21__* %53)
  %55 = load i32, i32* %10, align 4
  %56 = call %struct.TYPE_20__* @zend_delayed_compile_end(i32 %55)
  store %struct.TYPE_20__* %56, %struct.TYPE_20__** %9, align 8
  %57 = load i32, i32* @ZEND_ASSIGN_STATIC_PROP, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = call %struct.TYPE_20__* @zend_emit_op_data(i32* %8)
  br label %158

61:                                               ; preds = %29
  %62 = call i32 (...) @zend_delayed_compile_begin()
  store i32 %62, i32* %10, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %65 = load i32, i32* @BP_VAR_W, align 4
  %66 = call i32 @zend_delayed_compile_dim(i32* %63, %struct.TYPE_21__* %64, i32 %65)
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %69 = call i32 @zend_is_assign_to_self(%struct.TYPE_21__* %67, %struct.TYPE_21__* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %61
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %73 = call i64 @is_this_fetch(%struct.TYPE_21__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %71
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %77 = call i32 @zend_try_compile_cv(i32* %11, %struct.TYPE_21__* %76)
  %78 = load i32, i32* @FAILURE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %82 = load i32, i32* @BP_VAR_R, align 4
  %83 = call i32 @zend_compile_simple_var_no_cv(i32* %8, %struct.TYPE_21__* %81, i32 %82, i32 0)
  br label %87

84:                                               ; preds = %75
  %85 = load i32, i32* @ZEND_QM_ASSIGN, align 4
  %86 = call i32 @zend_emit_op_tmp(i32* %8, i32 %85, i32* %11, i32* null)
  br label %87

87:                                               ; preds = %84, %80
  br label %91

88:                                               ; preds = %71, %61
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %90 = call i32 @zend_compile_expr(i32* %8, %struct.TYPE_21__* %89)
  br label %91

91:                                               ; preds = %88, %87
  %92 = load i32, i32* %10, align 4
  %93 = call %struct.TYPE_20__* @zend_delayed_compile_end(i32 %92)
  store %struct.TYPE_20__* %93, %struct.TYPE_20__** %9, align 8
  %94 = load i32, i32* @ZEND_ASSIGN_DIM, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = call %struct.TYPE_20__* @zend_emit_op_data(i32* %8)
  store %struct.TYPE_20__* %97, %struct.TYPE_20__** %9, align 8
  br label %158

98:                                               ; preds = %29
  %99 = call i32 (...) @zend_delayed_compile_begin()
  store i32 %99, i32* %10, align 4
  %100 = load i32*, i32** %3, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %102 = load i32, i32* @BP_VAR_W, align 4
  %103 = call i32 @zend_delayed_compile_prop(i32* %100, %struct.TYPE_21__* %101, i32 %102)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %105 = call i32 @zend_compile_expr(i32* %8, %struct.TYPE_21__* %104)
  %106 = load i32, i32* %10, align 4
  %107 = call %struct.TYPE_20__* @zend_delayed_compile_end(i32 %106)
  store %struct.TYPE_20__* %107, %struct.TYPE_20__** %9, align 8
  %108 = load i32, i32* @ZEND_ASSIGN_OBJ, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = call %struct.TYPE_20__* @zend_emit_op_data(i32* %8)
  br label %158

112:                                              ; preds = %29
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %114 = call i32 @zend_propagate_list_refs(%struct.TYPE_21__* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %118 = call i32 @zend_is_variable_or_call(%struct.TYPE_21__* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* @E_COMPILE_ERROR, align 4
  %122 = call i32 @zend_error_noreturn(i32 %121, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %116
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %125 = load i32, i32* @BP_VAR_W, align 4
  %126 = call i32 @zend_compile_var(i32* %8, %struct.TYPE_21__* %124, i32 %125, i32 1)
  %127 = load i32, i32* @ZEND_MAKE_REF, align 4
  %128 = call i32 @zend_emit_op(i32* %8, i32 %127, i32* %8, i32* null)
  br label %151

129:                                              ; preds = %112
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 128
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %136 = call i32 @zend_try_compile_cv(i32* %12, %struct.TYPE_21__* %135)
  %137 = load i32, i32* @FAILURE, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = load i32, i32* @BP_VAR_R, align 4
  %142 = call i32 @zend_compile_simple_var_no_cv(i32* %8, %struct.TYPE_21__* %140, i32 %141, i32 0)
  br label %146

143:                                              ; preds = %134
  %144 = load i32, i32* @ZEND_QM_ASSIGN, align 4
  %145 = call i32 @zend_emit_op_tmp(i32* %8, i32 %144, i32* %12, i32* null)
  br label %146

146:                                              ; preds = %143, %139
  br label %150

147:                                              ; preds = %129
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = call i32 @zend_compile_expr(i32* %8, %struct.TYPE_21__* %148)
  br label %150

150:                                              ; preds = %147, %146
  br label %151

151:                                              ; preds = %150, %123
  %152 = load i32*, i32** %3, align 8
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @zend_compile_list_assign(i32* %152, %struct.TYPE_21__* %153, i32* %8, i32 %156)
  br label %158

158:                                              ; preds = %35, %47, %91, %98, %151, %29
  ret void
}

declare dso_local i64 @is_this_fetch(%struct.TYPE_21__*) #1

declare dso_local i32 @zend_error_noreturn(i32, i8*) #1

declare dso_local i32 @zend_ensure_writable_variable(%struct.TYPE_21__*) #1

declare dso_local i32 @zend_delayed_compile_begin(...) #1

declare dso_local i32 @zend_delayed_compile_var(i32*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @zend_compile_expr(i32*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @zend_delayed_compile_end(i32) #1

declare dso_local i32 @zend_emit_op(i32*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_20__* @zend_emit_op_data(i32*) #1

declare dso_local i32 @zend_delayed_compile_dim(i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @zend_is_assign_to_self(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @zend_try_compile_cv(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @zend_compile_simple_var_no_cv(i32*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @zend_emit_op_tmp(i32*, i32, i32*, i32*) #1

declare dso_local i32 @zend_delayed_compile_prop(i32*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @zend_propagate_list_refs(%struct.TYPE_21__*) #1

declare dso_local i32 @zend_is_variable_or_call(%struct.TYPE_21__*) #1

declare dso_local i32 @zend_compile_var(i32*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @zend_compile_list_assign(i32*, %struct.TYPE_21__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
