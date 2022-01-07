; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistbuild.c_gistInitBuffering.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistbuild.c_gistInitBuffering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@BLCKSZ = common dso_local global double 0.000000e+00, align 8
@SizeOfPageHeaderData = common dso_local global i32 0, align 4
@VARHDRSZ = common dso_local global i64 0, align 8
@effective_cache_size = common dso_local global i32 0, align 4
@maintenance_work_mem = common dso_local global i64 0, align 8
@DEBUG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to switch to buffered GiST build\00", align 1
@GIST_BUFFERING_DISABLED = common dso_local global i32 0, align 4
@GIST_BUFFERING_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"switched to buffered GiST build; level step = %d, pagesPerBuffer = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @gistInitBuffering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistInitBuffering(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %3, align 8
  %17 = load double, double* @BLCKSZ, align 8
  %18 = load i32, i32* @SizeOfPageHeaderData, align 4
  %19 = sitofp i32 %18 to double
  %20 = fsub double %17, %19
  %21 = fsub double %20, 4.000000e+00
  %22 = fsub double %21, 4.000000e+00
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sitofp i32 %25 to double
  %27 = fsub double %22, %26
  store double %27, double* %5, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = sitofp i64 %30 to double
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = sitofp i64 %34 to double
  %36 = fdiv double %31, %35
  store double %36, double* %6, align 8
  %37 = call i64 @MAXALIGN(i32 4)
  %38 = sitofp i64 %37 to double
  store double %38, double* %7, align 8
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %73, %1
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %40, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %39
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call %struct.TYPE_11__* @TupleDescAttr(%struct.TYPE_12__* %50, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = load i64, i64* @VARHDRSZ, align 8
  %58 = sitofp i64 %57 to double
  %59 = load double, double* %7, align 8
  %60 = fadd double %59, %58
  store double %60, double* %7, align 8
  br label %72

61:                                               ; preds = %47
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call %struct.TYPE_11__* @TupleDescAttr(%struct.TYPE_12__* %64, i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sitofp i64 %68 to double
  %70 = load double, double* %7, align 8
  %71 = fadd double %70, %69
  store double %71, double* %7, align 8
  br label %72

72:                                               ; preds = %61, %56
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %39

76:                                               ; preds = %39
  %77 = load double, double* %5, align 8
  %78 = load double, double* %6, align 8
  %79 = fdiv double %77, %78
  store double %79, double* %8, align 8
  %80 = load double, double* %5, align 8
  %81 = load double, double* %7, align 8
  %82 = fdiv double %80, %81
  store double %82, double* %9, align 8
  store i32 1, i32* %11, align 4
  br label %83

83:                                               ; preds = %114, %76
  %84 = load double, double* %8, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  %87 = sitofp i32 %86 to double
  %88 = call i32 @pow(double %84, double %87)
  %89 = sub nsw i32 1, %88
  %90 = sitofp i32 %89 to double
  %91 = load double, double* %8, align 8
  %92 = fsub double 1.000000e+00, %91
  %93 = fdiv double %90, %92
  store double %93, double* %12, align 8
  %94 = load double, double* %9, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sitofp i32 %95 to double
  %97 = call i32 @pow(double %94, double %96)
  %98 = sitofp i32 %97 to double
  store double %98, double* %13, align 8
  %99 = load double, double* %12, align 8
  %100 = load i32, i32* @effective_cache_size, align 4
  %101 = sdiv i32 %100, 4
  %102 = sitofp i32 %101 to double
  %103 = fcmp ogt double %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %83
  br label %117

105:                                              ; preds = %83
  %106 = load double, double* %13, align 8
  %107 = load i64, i64* @maintenance_work_mem, align 8
  %108 = sitofp i64 %107 to double
  %109 = fmul double %108, 1.024000e+03
  %110 = load double, double* @BLCKSZ, align 8
  %111 = fdiv double %109, %110
  %112 = fcmp ogt double %106, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %117

114:                                              ; preds = %105
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %83

117:                                              ; preds = %113, %104
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp sle i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i32, i32* @DEBUG1, align 4
  %124 = call i32 (i32, i8*, ...) @elog(i32 %123, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %125 = load i32, i32* @GIST_BUFFERING_DISABLED, align 4
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %148

128:                                              ; preds = %117
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @calculatePagesPerBuffer(%struct.TYPE_10__* %129, i32 %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %135 = call i32 @gistGetMaxLevel(%struct.TYPE_9__* %134)
  %136 = call i32 @gistInitBuildBuffers(i32 %132, i32 %133, i32 %135)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %140 = call i32 @gistInitParentMap(%struct.TYPE_10__* %139)
  %141 = load i32, i32* @GIST_BUFFERING_ACTIVE, align 4
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @DEBUG1, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 (i32, i8*, ...) @elog(i32 %144, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %128, %122
  ret void
}

declare dso_local i64 @MAXALIGN(i32) #1

declare dso_local %struct.TYPE_11__* @TupleDescAttr(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @pow(double, double) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @calculatePagesPerBuffer(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gistInitBuildBuffers(i32, i32, i32) #1

declare dso_local i32 @gistGetMaxLevel(%struct.TYPE_9__*) #1

declare dso_local i32 @gistInitParentMap(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
