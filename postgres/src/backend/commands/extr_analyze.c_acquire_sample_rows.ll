; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_acquire_sample_rows.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_analyze.c_acquire_sample_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double }
%struct.TYPE_8__ = type { i32 }

@PROCARRAY_FLAGS_VACUUM = common dso_local global i32 0, align 4
@vac_strategy = common dso_local global i32 0, align 4
@compare_rows = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [121 x i8] c"\22%s\22: scanned %d of %u pages, containing %.0f live rows and %.0f dead rows; %d rows in sample, %.0f estimated total rows\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, double*, double*)* @acquire_sample_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acquire_sample_rows(i32 %0, i32 %1, i32* %2, i32 %3, double* %4, double* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_9__, align 8
  %21 = alloca %struct.TYPE_8__, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store double* %4, double** %11, align 8
  store double* %5, double** %12, align 8
  store i32 0, i32* %13, align 4
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  store double -1.000000e+00, double* %17, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @Assert(i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call double @RelationGetNumberOfBlocks(i32 %30)
  store double %31, double* %18, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PROCARRAY_FLAGS_VACUUM, align 4
  %34 = call i32 @GetOldestXmin(i32 %32, i32 %33)
  store i32 %34, i32* %19, align 4
  %35 = load double, double* %18, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (...) @random()
  %38 = call i32 @BlockSampler_Init(%struct.TYPE_9__* %20, double %35, i32 %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @reservoir_init_selection_state(%struct.TYPE_8__* %21, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @table_beginscan_analyze(i32 %41)
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32* @table_slot_create(i32 %43, i32* null)
  store i32* %44, i32** %22, align 8
  br label %45

45:                                               ; preds = %120, %56, %6
  %46 = call i64 @BlockSampler_HasMore(%struct.TYPE_9__* %20)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %121

48:                                               ; preds = %45
  %49 = call double @BlockSampler_Next(%struct.TYPE_9__* %20)
  store double %49, double* %24, align 8
  %50 = call i32 (...) @vacuum_delay_point()
  %51 = load i32, i32* %23, align 4
  %52 = load double, double* %24, align 8
  %53 = load i32, i32* @vac_strategy, align 4
  %54 = call i32 @table_scan_analyze_next_block(i32 %51, double %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %45

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %117, %57
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %19, align 4
  %61 = load i32*, i32** %22, align 8
  %62 = call i64 @table_scan_analyze_next_tuple(i32 %59, i32 %60, double* %15, double* %16, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %120

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i32*, i32** %22, align 8
  %70 = call i32 @ExecCopySlotHeapTuple(i32* %69)
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  br label %117

76:                                               ; preds = %64
  %77 = load double, double* %17, align 8
  %78 = fcmp olt double %77, 0.000000e+00
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load double, double* %14, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call double @reservoir_get_next_S(%struct.TYPE_8__* %21, double %80, i32 %81)
  store double %82, double* %17, align 8
  br label %83

83:                                               ; preds = %79, %76
  %84 = load double, double* %17, align 8
  %85 = fcmp ole double %84, 0.000000e+00
  br i1 %85, label %86, label %114

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sampler_random_fract(i32 %89)
  %91 = mul nsw i32 %87, %90
  store i32 %91, i32* %25, align 4
  %92 = load i32, i32* %25, align 4
  %93 = icmp sge i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load i32, i32* %25, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %95, %96
  br label %98

98:                                               ; preds = %94, %86
  %99 = phi i1 [ false, %86 ], [ %97, %94 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 @Assert(i32 %100)
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %25, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @heap_freetuple(i32 %106)
  %108 = load i32*, i32** %22, align 8
  %109 = call i32 @ExecCopySlotHeapTuple(i32* %108)
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %25, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %98, %83
  %115 = load double, double* %17, align 8
  %116 = fsub double %115, 1.000000e+00
  store double %116, double* %17, align 8
  br label %117

117:                                              ; preds = %114, %68
  %118 = load double, double* %14, align 8
  %119 = fadd double %118, 1.000000e+00
  store double %119, double* %14, align 8
  br label %58

120:                                              ; preds = %58
  br label %45

121:                                              ; preds = %45
  %122 = load i32*, i32** %22, align 8
  %123 = call i32 @ExecDropSingleTupleTableSlot(i32* %122)
  %124 = load i32, i32* %23, align 4
  %125 = call i32 @table_endscan(i32 %124)
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %121
  %130 = load i32*, i32** %9, align 8
  %131 = bitcast i32* %130 to i8*
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @compare_rows, align 4
  %134 = call i32 @qsort(i8* %131, i32 %132, i32 4, i32 %133)
  br label %135

135:                                              ; preds = %129, %121
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %137 = load double, double* %136, align 8
  %138 = fcmp ogt double %137, 0.000000e+00
  br i1 %138, label %139, label %158

139:                                              ; preds = %135
  %140 = load double, double* %15, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %142 = load double, double* %141, align 8
  %143 = fdiv double %140, %142
  %144 = load double, double* %18, align 8
  %145 = fmul double %143, %144
  %146 = fadd double %145, 5.000000e-01
  %147 = call double @llvm.floor.f64(double %146)
  %148 = load double*, double** %11, align 8
  store double %147, double* %148, align 8
  %149 = load double, double* %16, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %151 = load double, double* %150, align 8
  %152 = fdiv double %149, %151
  %153 = load double, double* %18, align 8
  %154 = fmul double %152, %153
  %155 = fadd double %154, 5.000000e-01
  %156 = call double @llvm.floor.f64(double %155)
  %157 = load double*, double** %12, align 8
  store double %156, double* %157, align 8
  br label %161

158:                                              ; preds = %135
  %159 = load double*, double** %11, align 8
  store double 0.000000e+00, double* %159, align 8
  %160 = load double*, double** %12, align 8
  store double 0.000000e+00, double* %160, align 8
  br label %161

161:                                              ; preds = %158, %139
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @RelationGetRelationName(i32 %163)
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %166 = load double, double* %165, align 8
  %167 = load double, double* %18, align 8
  %168 = load double, double* %15, align 8
  %169 = load double, double* %16, align 8
  %170 = load i32, i32* %13, align 4
  %171 = load double*, double** %11, align 8
  %172 = load double, double* %171, align 8
  %173 = call i32 @errmsg(i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i32 %164, double %166, double %167, double %168, double %169, i32 %170, double %172)
  %174 = call i32 @ereport(i32 %162, i32 %173)
  %175 = load i32, i32* %13, align 4
  ret i32 %175
}

declare dso_local i32 @Assert(i32) #1

declare dso_local double @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @GetOldestXmin(i32, i32) #1

declare dso_local i32 @BlockSampler_Init(%struct.TYPE_9__*, double, i32, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @reservoir_init_selection_state(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @table_beginscan_analyze(i32) #1

declare dso_local i32* @table_slot_create(i32, i32*) #1

declare dso_local i64 @BlockSampler_HasMore(%struct.TYPE_9__*) #1

declare dso_local double @BlockSampler_Next(%struct.TYPE_9__*) #1

declare dso_local i32 @vacuum_delay_point(...) #1

declare dso_local i32 @table_scan_analyze_next_block(i32, double, i32) #1

declare dso_local i64 @table_scan_analyze_next_tuple(i32, i32, double*, double*, i32*) #1

declare dso_local i32 @ExecCopySlotHeapTuple(i32*) #1

declare dso_local double @reservoir_get_next_S(%struct.TYPE_8__*, double, i32) #1

declare dso_local i32 @sampler_random_fract(i32) #1

declare dso_local i32 @heap_freetuple(i32) #1

declare dso_local i32 @ExecDropSingleTupleTableSlot(i32*) #1

declare dso_local i32 @table_endscan(i32) #1

declare dso_local i32 @qsort(i8*, i32, i32, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #2

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, double, double, double, double, i32, double) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
