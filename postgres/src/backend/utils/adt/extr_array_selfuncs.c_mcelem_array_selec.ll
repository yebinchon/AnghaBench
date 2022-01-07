; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_selfuncs.c_mcelem_array_selec.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_array_selfuncs.c_mcelem_array_selec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@OID_ARRAY_CONTAINS_OP = common dso_local global i32 0, align 4
@element_compare = common dso_local global i32 0, align 4
@OID_ARRAY_OVERLAP_OP = common dso_local global i32 0, align 4
@OID_ARRAY_CONTAINED_OP = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"arraycontsel called for unrecognized operator %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (double (i32*, %struct.TYPE_6__*, i32*, i32, i32*, i32, i32*, i32, i32)* @mcelem_array_selec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @mcelem_array_selec(i32* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3, i32* %4, i32 %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca double, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32* %4, i32** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @deconstruct_array(i32* %27, i32 %30, i32 %33, i32 %36, i32 %39, i32** %22, i32** %23, i32* %21)
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  br label %41

41:                                               ; preds = %65, %9
  %42 = load i32, i32* %26, align 4
  %43 = load i32, i32* %21, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load i32*, i32** %23, align 8
  %47 = load i32, i32* %26, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 1, i32* %24, align 4
  br label %64

53:                                               ; preds = %45
  %54 = load i32*, i32** %22, align 8
  %55 = load i32, i32* %26, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %22, align 8
  %60 = load i32, i32* %25, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %25, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  store i32 %58, i32* %63, align 4
  br label %64

64:                                               ; preds = %53, %52
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %26, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %26, align 4
  br label %41

68:                                               ; preds = %41
  %69 = load i32, i32* %24, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* @OID_ARRAY_CONTAINS_OP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32*, i32** %22, align 8
  %77 = call i32 @pfree(i32* %76)
  %78 = load i32*, i32** %23, align 8
  %79 = call i32 @pfree(i32* %78)
  store double 0.000000e+00, double* %10, align 8
  br label %130

80:                                               ; preds = %71, %68
  %81 = load i32*, i32** %22, align 8
  %82 = load i32, i32* %25, align 4
  %83 = load i32, i32* @element_compare, align 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %85 = call i32 @qsort_arg(i32* %81, i32 %82, i32 4, i32 %83, %struct.TYPE_6__* %84)
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* @OID_ARRAY_CONTAINS_OP, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %19, align 4
  %91 = load i32, i32* @OID_ARRAY_OVERLAP_OP, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89, %80
  %94 = load i32*, i32** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* %16, align 4
  %98 = load i32*, i32** %22, align 8
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %102 = call double @mcelem_array_contain_overlap_selec(i32* %94, i32 %95, i32* %96, i32 %97, i32* %98, i32 %99, i32 %100, %struct.TYPE_6__* %101)
  store double %102, double* %20, align 8
  br label %124

103:                                              ; preds = %89
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* @OID_ARRAY_CONTAINED_OP, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32*, i32** %15, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32*, i32** %22, align 8
  %113 = load i32, i32* %25, align 4
  %114 = load i32*, i32** %17, align 8
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %118 = call double @mcelem_array_contained_selec(i32* %108, i32 %109, i32* %110, i32 %111, i32* %112, i32 %113, i32* %114, i32 %115, i32 %116, %struct.TYPE_6__* %117)
  store double %118, double* %20, align 8
  br label %123

119:                                              ; preds = %103
  %120 = load i32, i32* @ERROR, align 4
  %121 = load i32, i32* %19, align 4
  %122 = call i32 @elog(i32 %120, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %121)
  store double 0.000000e+00, double* %20, align 8
  br label %123

123:                                              ; preds = %119, %107
  br label %124

124:                                              ; preds = %123, %93
  %125 = load i32*, i32** %22, align 8
  %126 = call i32 @pfree(i32* %125)
  %127 = load i32*, i32** %23, align 8
  %128 = call i32 @pfree(i32* %127)
  %129 = load double, double* %20, align 8
  store double %129, double* %10, align 8
  br label %130

130:                                              ; preds = %124, %75
  %131 = load double, double* %10, align 8
  ret double %131
}

declare dso_local i32 @deconstruct_array(i32*, i32, i32, i32, i32, i32**, i32**, i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @qsort_arg(i32*, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local double @mcelem_array_contain_overlap_selec(i32*, i32, i32*, i32, i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local double @mcelem_array_contained_selec(i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
