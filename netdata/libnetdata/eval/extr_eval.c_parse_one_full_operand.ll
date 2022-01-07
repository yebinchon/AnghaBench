; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/eval/extr_eval.c_parse_one_full_operand.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/eval/extr_eval.c_parse_one_full_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i8* }

@EVAL_MAX_VARIABLE_NAME_LENGTH = common dso_local global i32 0, align 4
@EVAL_ERROR_OK = common dso_local global i32 0, align 4
@EVAL_ERROR_MISSING_OPERAND = common dso_local global i32 0, align 4
@EVAL_OPERATOR_NOT = common dso_local global i8* null, align 8
@EVAL_OPERATOR_SIGN_PLUS = common dso_local global i8* null, align 8
@EVAL_OPERATOR_SIGN_MINUS = common dso_local global i8* null, align 8
@EVAL_OPERATOR_ABS = common dso_local global i8* null, align 8
@EVAL_OPERATOR_EXPRESSION_OPEN = common dso_local global i8* null, align 8
@EVAL_ERROR_MISSING_CLOSE_SUBEXPRESSION = common dso_local global i32 0, align 4
@EVAL_OPERATOR_NOP = common dso_local global i8* null, align 8
@EVAL_ERROR_UNKNOWN_OPERAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i8**, i32*)* @parse_one_full_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @parse_one_full_operand(i8** %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32, i32* @EVAL_MAX_VARIABLE_NAME_LENGTH, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  %17 = load i32, i32* @EVAL_ERROR_OK, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i8**, i8*** %4, align 8
  %20 = call i32 @skip_spaces(i8** %19)
  %21 = load i8**, i8*** %4, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EVAL_ERROR_MISSING_OPERAND, align 4
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %156

28:                                               ; preds = %2
  %29 = load i8**, i8*** %4, align 8
  %30 = call i64 @parse_not(i8** %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i8**, i8*** %4, align 8
  %34 = load i8*, i8** @EVAL_OPERATOR_NOT, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call %struct.TYPE_11__* @parse_next_operand_given_its_operator(i8** %33, i8* %34, i32* %35)
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %8, align 8
  %37 = load i8*, i8** @EVAL_OPERATOR_NOT, align 8
  %38 = call i8* @eval_precedence(i8* %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %154

41:                                               ; preds = %28
  %42 = load i8**, i8*** %4, align 8
  %43 = call i64 @parse_plus(i8** %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i8**, i8*** %4, align 8
  %47 = load i8*, i8** @EVAL_OPERATOR_SIGN_PLUS, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call %struct.TYPE_11__* @parse_next_operand_given_its_operator(i8** %46, i8* %47, i32* %48)
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %8, align 8
  %50 = load i8*, i8** @EVAL_OPERATOR_SIGN_PLUS, align 8
  %51 = call i8* @eval_precedence(i8* %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %153

54:                                               ; preds = %41
  %55 = load i8**, i8*** %4, align 8
  %56 = call i64 @parse_minus(i8** %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i8**, i8*** %4, align 8
  %60 = load i8*, i8** @EVAL_OPERATOR_SIGN_MINUS, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call %struct.TYPE_11__* @parse_next_operand_given_its_operator(i8** %59, i8* %60, i32* %61)
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %8, align 8
  %63 = load i8*, i8** @EVAL_OPERATOR_SIGN_MINUS, align 8
  %64 = call i8* @eval_precedence(i8* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %152

67:                                               ; preds = %54
  %68 = load i8**, i8*** %4, align 8
  %69 = call i64 @parse_abs(i8** %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i8**, i8*** %4, align 8
  %73 = load i8*, i8** @EVAL_OPERATOR_ABS, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call %struct.TYPE_11__* @parse_next_operand_given_its_operator(i8** %72, i8* %73, i32* %74)
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %8, align 8
  %76 = load i8*, i8** @EVAL_OPERATOR_ABS, align 8
  %77 = call i8* @eval_precedence(i8* %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  br label %151

80:                                               ; preds = %67
  %81 = load i8**, i8*** %4, align 8
  %82 = call i64 @parse_open_subexpression(i8** %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %112

84:                                               ; preds = %80
  %85 = load i8**, i8*** %4, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call %struct.TYPE_11__* @parse_full_expression(i8** %85, i32* %86)
  store %struct.TYPE_11__* %87, %struct.TYPE_11__** %11, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %89 = icmp ne %struct.TYPE_11__* %88, null
  br i1 %89, label %90, label %111

90:                                               ; preds = %84
  %91 = call %struct.TYPE_11__* @eval_node_alloc(i32 1)
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %8, align 8
  %92 = load i8*, i8** @EVAL_OPERATOR_EXPRESSION_OPEN, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** @EVAL_OPERATOR_EXPRESSION_OPEN, align 8
  %96 = call i8* @eval_precedence(i8* %95)
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %101 = call i32 @eval_node_set_value_to_node(%struct.TYPE_11__* %99, i32 0, %struct.TYPE_11__* %100)
  %102 = load i8**, i8*** %4, align 8
  %103 = call i32 @parse_close_subexpression(i8** %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %90
  %106 = load i32, i32* @EVAL_ERROR_MISSING_CLOSE_SUBEXPRESSION, align 4
  %107 = load i32*, i32** %5, align 8
  store i32 %106, i32* %107, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = call i32 @eval_node_free(%struct.TYPE_11__* %108)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %156

110:                                              ; preds = %90
  br label %111

111:                                              ; preds = %110, %84
  br label %150

112:                                              ; preds = %80
  %113 = load i8**, i8*** %4, align 8
  %114 = load i32, i32* @EVAL_MAX_VARIABLE_NAME_LENGTH, align 4
  %115 = call i64 @parse_variable(i8** %113, i8* %16, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = call %struct.TYPE_11__* @eval_node_alloc(i32 1)
  store %struct.TYPE_11__* %118, %struct.TYPE_11__** %8, align 8
  %119 = load i8*, i8** @EVAL_OPERATOR_NOP, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %123 = call i32 @eval_node_set_value_to_variable(%struct.TYPE_11__* %122, i32 0, i8* %16)
  br label %149

124:                                              ; preds = %112
  %125 = load i8**, i8*** %4, align 8
  %126 = call i64 @parse_constant(i8** %125, i32* %9)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = call %struct.TYPE_11__* @eval_node_alloc(i32 1)
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %8, align 8
  %130 = load i8*, i8** @EVAL_OPERATOR_NOP, align 8
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @eval_node_set_value_to_constant(%struct.TYPE_11__* %133, i32 0, i32 %134)
  br label %148

136:                                              ; preds = %124
  %137 = load i8**, i8*** %4, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = load i8, i8* %138, align 1
  %140 = icmp ne i8 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load i32, i32* @EVAL_ERROR_UNKNOWN_OPERAND, align 4
  %143 = load i32*, i32** %5, align 8
  store i32 %142, i32* %143, align 4
  br label %147

144:                                              ; preds = %136
  %145 = load i32, i32* @EVAL_ERROR_MISSING_OPERAND, align 4
  %146 = load i32*, i32** %5, align 8
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %141
  br label %148

148:                                              ; preds = %147, %128
  br label %149

149:                                              ; preds = %148, %117
  br label %150

150:                                              ; preds = %149, %111
  br label %151

151:                                              ; preds = %150, %71
  br label %152

152:                                              ; preds = %151, %58
  br label %153

153:                                              ; preds = %152, %45
  br label %154

154:                                              ; preds = %153, %32
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %155, %struct.TYPE_11__** %3, align 8
  store i32 1, i32* %10, align 4
  br label %156

156:                                              ; preds = %154, %105, %25
  %157 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %157)
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %158
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @skip_spaces(i8**) #2

declare dso_local i64 @parse_not(i8**) #2

declare dso_local %struct.TYPE_11__* @parse_next_operand_given_its_operator(i8**, i8*, i32*) #2

declare dso_local i8* @eval_precedence(i8*) #2

declare dso_local i64 @parse_plus(i8**) #2

declare dso_local i64 @parse_minus(i8**) #2

declare dso_local i64 @parse_abs(i8**) #2

declare dso_local i64 @parse_open_subexpression(i8**) #2

declare dso_local %struct.TYPE_11__* @parse_full_expression(i8**, i32*) #2

declare dso_local %struct.TYPE_11__* @eval_node_alloc(i32) #2

declare dso_local i32 @eval_node_set_value_to_node(%struct.TYPE_11__*, i32, %struct.TYPE_11__*) #2

declare dso_local i32 @parse_close_subexpression(i8**) #2

declare dso_local i32 @eval_node_free(%struct.TYPE_11__*) #2

declare dso_local i64 @parse_variable(i8**, i8*, i32) #2

declare dso_local i32 @eval_node_set_value_to_variable(%struct.TYPE_11__*, i32, i8*) #2

declare dso_local i64 @parse_constant(i8**, i32*) #2

declare dso_local i32 @eval_node_set_value_to_constant(%struct.TYPE_11__*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
