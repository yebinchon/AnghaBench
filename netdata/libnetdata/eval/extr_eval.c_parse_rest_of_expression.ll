; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/eval/extr_eval.c_parse_rest_of_expression.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/eval/extr_eval.c_parse_rest_of_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i8, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__* }

@EVAL_OPERATOR_NOP = common dso_local global i8 0, align 1
@operators = common dso_local global %struct.TYPE_13__* null, align 8
@EVAL_OPERATOR_IF_THEN_ELSE = common dso_local global i8 0, align 1
@EVAL_ERROR_IF_THEN_ELSE_MISSING_ELSE = common dso_local global i32 0, align 4
@EVAL_VALUE_EXPRESSION = common dso_local global i64 0, align 8
@EVAL_ERROR_MISSING_OPERATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i8**, i32*, %struct.TYPE_12__*)* @parse_rest_of_expression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @parse_rest_of_expression(i8** %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %8, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = call zeroext i8 @parse_operator(i8** %13, i32* %10)
  store i8 %14, i8* %9, align 1
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @skip_spaces(i8** %15)
  %17 = load i8, i8* %9, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @EVAL_OPERATOR_NOP, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %18, %20
  br i1 %21, label %22, label %150

22:                                               ; preds = %3
  %23 = load i8**, i8*** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call %struct.TYPE_12__* @parse_one_full_operand(i8** %23, i32* %24)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %8, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %30 = call i32 @eval_node_free(%struct.TYPE_12__* %29)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %171

31:                                               ; preds = %22
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @operators, align 8
  %33 = load i8, i8* %9, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_12__* @eval_node_alloc(i32 %37)
  store %struct.TYPE_12__* %38, %struct.TYPE_12__** %11, align 8
  %39 = load i8, i8* %9, align 1
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  store i8 %39, i8* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i8, i8* %9, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, i8* @EVAL_OPERATOR_IF_THEN_ELSE, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %31
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %94

55:                                               ; preds = %50
  %56 = load i8**, i8*** %5, align 8
  %57 = call i32 @skip_spaces(i8** %56)
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 58
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %65 = call i32 @eval_node_free(%struct.TYPE_12__* %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %67 = call i32 @eval_node_free(%struct.TYPE_12__* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %69 = call i32 @eval_node_free(%struct.TYPE_12__* %68)
  %70 = load i32, i32* @EVAL_ERROR_IF_THEN_ELSE_MISSING_ELSE, align 4
  %71 = load i32*, i32** %6, align 8
  store i32 %70, i32* %71, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %171

72:                                               ; preds = %55
  %73 = load i8**, i8*** %5, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %73, align 8
  %76 = load i8**, i8*** %5, align 8
  %77 = call i32 @skip_spaces(i8** %76)
  %78 = load i8**, i8*** %5, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = call %struct.TYPE_12__* @parse_one_full_operand(i8** %78, i32* %79)
  store %struct.TYPE_12__* %80, %struct.TYPE_12__** %12, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %82 = icmp ne %struct.TYPE_12__* %81, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %72
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %85 = call i32 @eval_node_free(%struct.TYPE_12__* %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = call i32 @eval_node_free(%struct.TYPE_12__* %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %89 = call i32 @eval_node_free(%struct.TYPE_12__* %88)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %171

90:                                               ; preds = %72
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %93 = call i32 @eval_node_set_value_to_node(%struct.TYPE_12__* %91, i32 2, %struct.TYPE_12__* %92)
  br label %94

94:                                               ; preds = %90, %50, %31
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %97 = call i32 @eval_node_set_value_to_node(%struct.TYPE_12__* %95, i32 1, %struct.TYPE_12__* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %100, %103
  br i1 %104, label %105, label %141

105:                                              ; preds = %94
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %141

110:                                              ; preds = %105
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = load i8, i8* %112, align 8
  %114 = zext i8 %113 to i32
  %115 = icmp ne i32 %114, 40
  br i1 %115, label %116, label %141

116:                                              ; preds = %110
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 3
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i64 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @EVAL_VALUE_EXPRESSION, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %116
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i64 1
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = call i32 @eval_node_set_value_to_node(%struct.TYPE_12__* %126, i32 0, %struct.TYPE_12__* %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  store %struct.TYPE_12__* %134, %struct.TYPE_12__** %139, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %140, %struct.TYPE_12__** %11, align 8
  br label %145

141:                                              ; preds = %116, %110, %105, %94
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %144 = call i32 @eval_node_set_value_to_node(%struct.TYPE_12__* %142, i32 0, %struct.TYPE_12__* %143)
  br label %145

145:                                              ; preds = %141, %125
  %146 = load i8**, i8*** %5, align 8
  %147 = load i32*, i32** %6, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %149 = call %struct.TYPE_12__* @parse_rest_of_expression(i8** %146, i32* %147, %struct.TYPE_12__* %148)
  store %struct.TYPE_12__* %149, %struct.TYPE_12__** %4, align 8
  br label %171

150:                                              ; preds = %3
  %151 = load i8**, i8*** %5, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 41
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %168

157:                                              ; preds = %150
  %158 = load i8**, i8*** %5, align 8
  %159 = load i8*, i8** %158, align 8
  %160 = load i8, i8* %159, align 1
  %161 = icmp ne i8 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %164 = call i32 @eval_node_free(%struct.TYPE_12__* %163)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  %165 = load i32, i32* @EVAL_ERROR_MISSING_OPERATOR, align 4
  %166 = load i32*, i32** %6, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %162, %157
  br label %168

168:                                              ; preds = %167, %156
  br label %169

169:                                              ; preds = %168
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_12__* %170, %struct.TYPE_12__** %4, align 8
  br label %171

171:                                              ; preds = %169, %145, %83, %63, %28
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %172
}

declare dso_local zeroext i8 @parse_operator(i8**, i32*) #1

declare dso_local i32 @skip_spaces(i8**) #1

declare dso_local %struct.TYPE_12__* @parse_one_full_operand(i8**, i32*) #1

declare dso_local i32 @eval_node_free(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @eval_node_alloc(i32) #1

declare dso_local i32 @eval_node_set_value_to_node(%struct.TYPE_12__*, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
