; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_agg.c_check_agg_arguments.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_agg.c_check_agg_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i32* }

@check_agg_arguments_walker = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_GROUPING_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"aggregate function calls cannot be nested\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"outer-level aggregate cannot contain a lower-level variable in its direct arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @check_agg_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_agg_arguments(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  store i32* %12, i32** %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 -1, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 -1, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* @check_agg_arguments_walker, align 4
  %19 = bitcast %struct.TYPE_2__* %10 to i8*
  %20 = call i32 @expression_tree_walker(i32* %17, i32 %18, i8* %19)
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @check_agg_arguments_walker, align 4
  %23 = bitcast %struct.TYPE_2__* %10 to i8*
  %24 = call i32 @expression_tree_walker(i32* %21, i32 %22, i8* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %36

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %33, %32
  br label %51

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  br label %50

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @Min(i32 %46, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %44, %41
  br label %51

51:                                               ; preds = %50, %36
  %52 = load i32, i32* %9, align 4
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %51
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @locate_agg_of_level(i32* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @locate_agg_of_level(i32* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %62, %56
  %67 = load i32, i32* @ERROR, align 4
  %68 = load i32, i32* @ERRCODE_GROUPING_ERROR, align 4
  %69 = call i32 @errcode(i32 %68)
  %70 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @parser_errposition(i32* %71, i32 %72)
  %74 = call i32 @ereport(i32 %67, i32 %73)
  br label %75

75:                                               ; preds = %66, %51
  %76 = load i32*, i32** %6, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %127

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 -1, i32* %79, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 -1, i32* %80, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* @check_agg_arguments_walker, align 4
  %83 = bitcast %struct.TYPE_2__* %10 to i8*
  %84 = call i32 @expression_tree_walker(i32* %81, i32 %82, i8* %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load i32, i32* @ERROR, align 4
  %95 = load i32, i32* @ERRCODE_GROUPING_ERROR, align 4
  %96 = call i32 @errcode(i32 %95)
  %97 = call i32 @errmsg(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32*, i32** %5, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @locate_var_of_level(i32* %99, i32 %101)
  %103 = call i32 @parser_errposition(i32* %98, i32 %102)
  %104 = call i32 @ereport(i32 %94, i32 %103)
  br label %105

105:                                              ; preds = %93, %88, %78
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp sle i32 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load i32, i32* @ERROR, align 4
  %116 = load i32, i32* @ERRCODE_GROUPING_ERROR, align 4
  %117 = call i32 @errcode(i32 %116)
  %118 = call i32 @errmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %119 = load i32*, i32** %5, align 8
  %120 = load i32*, i32** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @locate_agg_of_level(i32* %120, i32 %122)
  %124 = call i32 @parser_errposition(i32* %119, i32 %123)
  %125 = call i32 @ereport(i32 %115, i32 %124)
  br label %126

126:                                              ; preds = %114, %109, %105
  br label %127

127:                                              ; preds = %126, %75
  %128 = load i32, i32* %9, align 4
  ret i32 %128
}

declare dso_local i32 @expression_tree_walker(i32*, i32, i8*) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @locate_agg_of_level(i32*, i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @parser_errposition(i32*, i32) #1

declare dso_local i32 @locate_var_of_level(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
