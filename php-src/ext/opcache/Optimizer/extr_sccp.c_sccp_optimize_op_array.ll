; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_sccp_optimize_op_array.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/Optimizer/extr_sccp.c_sccp_optimize_op_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_30__, i32* }
%struct.TYPE_30__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32 }

@sccp_visit_instr = common dso_local global i32 0, align 4
@sccp_visit_phi = common dso_local global i32 0, align 4
@sccp_mark_feasible_successors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"SCCP\00", align 1
@ZEND_DUMP_SCCP = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"\0ASCCP Values for \22\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\22:\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"    #%d.\00", align 1
@IS_CV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c" =\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sccp_optimize_op_array(%struct.TYPE_27__* %0, %struct.TYPE_28__* %1, %struct.TYPE_26__* %2, i32** %3) #0 {
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_29__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %5, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  store i32** %3, i32*** %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @zend_arena_checkpoint(i32 %17)
  store i8* %18, i8** %11, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %22 = load i32**, i32*** %8, align 8
  %23 = call i32 @sccp_context_init(%struct.TYPE_27__* %19, %struct.TYPE_29__* %9, %struct.TYPE_26__* %20, %struct.TYPE_28__* %21, i32** %22)
  %24 = load i32, i32* @sccp_visit_instr, align 4
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @sccp_visit_phi, align 4
  %29 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @sccp_mark_feasible_successors, align 4
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %40 = call i32 @scdf_init(%struct.TYPE_27__* %36, %struct.TYPE_30__* %37, %struct.TYPE_28__* %38, %struct.TYPE_26__* %39)
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %42 = call i32 @scdf_solve(%struct.TYPE_30__* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ZEND_DUMP_SCCP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %108

49:                                               ; preds = %4
  store i32 1, i32* %13, align 4
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %104, %49
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %107

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %14, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = call i64 @IS_TOP(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %59
  %69 = load i32*, i32** %14, align 8
  %70 = call i64 @IS_BOT(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %59
  br label %104

73:                                               ; preds = %68
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  store i32 0, i32* %13, align 4
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %80 = call i32 @zend_dump_op_array_name(%struct.TYPE_28__* %79)
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %76, %73
  %84 = load i32, i32* @stderr, align 4
  %85 = load i32, i32* %12, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %84, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %88 = load i32, i32* @IS_CV, align 4
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @zend_dump_var(%struct.TYPE_28__* %87, i32 %88, i32 %96)
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @scp_dump_value(i32* %100)
  %102 = load i32, i32* @stderr, align 4
  %103 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %83, %72
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %53

107:                                              ; preds = %53
  br label %108

108:                                              ; preds = %107, %4
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %9, i32 0, i32 0
  %110 = call i64 @scdf_remove_unreachable_blocks(%struct.TYPE_30__* %109)
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %10, align 4
  %115 = call i64 @replace_constant_operands(%struct.TYPE_29__* %9)
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %117, %115
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %10, align 4
  %120 = call i32 @sccp_context_free(%struct.TYPE_29__* %9)
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 1
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @zend_arena_release(i32* %122, i8* %123)
  %125 = load i32, i32* %10, align 4
  ret i32 %125
}

declare dso_local i8* @zend_arena_checkpoint(i32) #1

declare dso_local i32 @sccp_context_init(%struct.TYPE_27__*, %struct.TYPE_29__*, %struct.TYPE_26__*, %struct.TYPE_28__*, i32**) #1

declare dso_local i32 @scdf_init(%struct.TYPE_27__*, %struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local i32 @scdf_solve(%struct.TYPE_30__*, i8*) #1

declare dso_local i64 @IS_TOP(i32*) #1

declare dso_local i64 @IS_BOT(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @zend_dump_op_array_name(%struct.TYPE_28__*) #1

declare dso_local i32 @zend_dump_var(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @scp_dump_value(i32*) #1

declare dso_local i64 @scdf_remove_unreachable_blocks(%struct.TYPE_30__*) #1

declare dso_local i64 @replace_constant_operands(%struct.TYPE_29__*) #1

declare dso_local i32 @sccp_context_free(%struct.TYPE_29__*) #1

declare dso_local i32 @zend_arena_release(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
