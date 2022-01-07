; ModuleID = '/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_return.c'
source_filename = "/home/carl/AnghaBench/php-src/Zend/extr_zend_compile.c_zend_compile_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_24__** }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32, i64 }

@active_op_array = common dso_local global i32 0, align 4
@ZEND_ACC_GENERATOR = common dso_local global i32 0, align 4
@ZEND_ACC_RETURN_REFERENCE = common dso_local global i32 0, align 4
@IS_CONST = common dso_local global i32 0, align 4
@BP_VAR_W = common dso_local global i32 0, align 4
@ZEND_ACC_HAS_FINALLY_BLOCK = common dso_local global i32 0, align 4
@IS_CV = common dso_local global i32 0, align 4
@IS_VAR = common dso_local global i32 0, align 4
@ZEND_MAKE_REF = common dso_local global i32 0, align 4
@ZEND_QM_ASSIGN = common dso_local global i32 0, align 4
@ZEND_ACC_HAS_RETURN_TYPE = common dso_local global i32 0, align 4
@IS_TMP_VAR = common dso_local global i32 0, align 4
@ZEND_RETURN_BY_REF = common dso_local global i32 0, align 4
@ZEND_RETURN = common dso_local global i32 0, align 4
@ZEND_RETURNS_FUNCTION = common dso_local global i32 0, align 4
@ZEND_RETURNS_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zend_compile_return(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %10, i64 0
  %12 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_24__* %12, %struct.TYPE_24__** %3, align 8
  %13 = load i32, i32* @active_op_array, align 4
  %14 = call %struct.TYPE_20__* @CG(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ZEND_ACC_GENERATOR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @active_op_array, align 4
  %22 = call %struct.TYPE_20__* @CG(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ZEND_ACC_RETURN_REFERENCE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %34 = icmp ne %struct.TYPE_24__* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @IS_CONST, align 4
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = call i32 @ZVAL_NULL(i32* %39)
  br label %56

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %46 = call i64 @zend_is_variable(%struct.TYPE_24__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %50 = load i32, i32* @BP_VAR_W, align 4
  %51 = call i32 @zend_compile_var(%struct.TYPE_22__* %6, %struct.TYPE_24__* %49, i32 %50, i32 1)
  br label %55

52:                                               ; preds = %44, %41
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %54 = call i32 @zend_compile_expr(%struct.TYPE_22__* %6, %struct.TYPE_24__* %53)
  br label %55

55:                                               ; preds = %52, %48
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* @active_op_array, align 4
  %58 = call %struct.TYPE_20__* @CG(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ZEND_ACC_HAS_FINALLY_BLOCK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IS_CV, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IS_VAR, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %72, %64
  %78 = call i64 (...) @zend_has_finally()
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @ZEND_MAKE_REF, align 4
  %85 = call %struct.TYPE_23__* @zend_emit_op(%struct.TYPE_22__* %6, i32 %84, %struct.TYPE_22__* %6, i32* null)
  br label %89

86:                                               ; preds = %80
  %87 = load i32, i32* @ZEND_QM_ASSIGN, align 4
  %88 = call i32 @zend_emit_op_tmp(%struct.TYPE_22__* %6, i32 %87, %struct.TYPE_22__* %6, i32* null)
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %77, %72, %69, %56
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @active_op_array, align 4
  %95 = call %struct.TYPE_20__* @CG(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ZEND_ACC_HAS_RETURN_TYPE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %93
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %103 = icmp ne %struct.TYPE_24__* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %106

105:                                              ; preds = %101
  br label %106

106:                                              ; preds = %105, %104
  %107 = phi %struct.TYPE_22__* [ %6, %104 ], [ null, %105 ]
  %108 = load i32, i32* @active_op_array, align 4
  %109 = call %struct.TYPE_20__* @CG(i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, 1
  %113 = call i32 @zend_emit_return_type_check(%struct.TYPE_22__* %107, i64 %112, i32 0)
  br label %114

114:                                              ; preds = %106, %93, %90
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %6, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @IS_TMP_VAR, align 4
  %118 = load i32, i32* @IS_VAR, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %124

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %122
  %125 = phi %struct.TYPE_22__* [ %6, %122 ], [ null, %123 ]
  %126 = call i32 @zend_handle_loops_and_finally(%struct.TYPE_22__* %125)
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @ZEND_RETURN_BY_REF, align 4
  br label %133

131:                                              ; preds = %124
  %132 = load i32, i32* @ZEND_RETURN, align 4
  br label %133

133:                                              ; preds = %131, %129
  %134 = phi i32 [ %130, %129 ], [ %132, %131 ]
  %135 = call %struct.TYPE_23__* @zend_emit_op(%struct.TYPE_22__* null, i32 %134, %struct.TYPE_22__* %6, i32* null)
  store %struct.TYPE_23__* %135, %struct.TYPE_23__** %7, align 8
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %133
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %140 = icmp ne %struct.TYPE_24__* %139, null
  br i1 %140, label %141, label %159

141:                                              ; preds = %138
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %143 = call i64 @zend_is_call(%struct.TYPE_24__* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i32, i32* @ZEND_RETURNS_FUNCTION, align 4
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  br label %158

149:                                              ; preds = %141
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %151 = call i64 @zend_is_variable(%struct.TYPE_24__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* @ZEND_RETURNS_VALUE, align 4
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %153, %149
  br label %158

158:                                              ; preds = %157, %145
  br label %159

159:                                              ; preds = %158, %138, %133
  ret void
}

declare dso_local %struct.TYPE_20__* @CG(i32) #1

declare dso_local i32 @ZVAL_NULL(i32*) #1

declare dso_local i64 @zend_is_variable(%struct.TYPE_24__*) #1

declare dso_local i32 @zend_compile_var(%struct.TYPE_22__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @zend_compile_expr(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i64 @zend_has_finally(...) #1

declare dso_local %struct.TYPE_23__* @zend_emit_op(%struct.TYPE_22__*, i32, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @zend_emit_op_tmp(%struct.TYPE_22__*, i32, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @zend_emit_return_type_check(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @zend_handle_loops_and_finally(%struct.TYPE_22__*) #1

declare dso_local i64 @zend_is_call(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
