; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_puttuple_common.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/sort/extr_tuplesort.c_puttuple_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i8**, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid tuplesort state\00", align 1
@LOG = common dso_local global i32 0, align 4
@trace_sort = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8**)* @puttuple_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @puttuple_common(%struct.TYPE_12__* %0, i8** %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i8**, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i8** %1, i8*** %4, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %6 = call i32 @LEADER(%struct.TYPE_12__* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @Assert(i32 %9)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %132 [
    i32 128, label %14
    i32 130, label %93
    i32 129, label %118
  ]

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = icmp sge i32 %17, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %14
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = call i32 @grow_memtuples(%struct.TYPE_12__* %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  br label %35

35:                                               ; preds = %23, %14
  %36 = load i8**, i8*** %4, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i8**, i8*** %39, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8*, i8** %40, i64 %45
  store i8* %37, i8** %46, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %75

51:                                               ; preds = %35
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %57, 2
  %59 = icmp sgt i32 %54, %58
  br i1 %59, label %72, label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %63, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %70 = call i32 @LACKMEM(%struct.TYPE_12__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68, %51
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = call i32 @make_bounded_heap(%struct.TYPE_12__* %73)
  br label %135

75:                                               ; preds = %68, %60, %35
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = call i32 @LACKMEM(%struct.TYPE_12__* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %135

88:                                               ; preds = %83, %75
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = call i32 @inittapes(%struct.TYPE_12__* %89, i32 1)
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = call i32 @dumptuples(%struct.TYPE_12__* %91, i32 0)
  br label %135

93:                                               ; preds = %2
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = load i8**, i8*** %4, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  %98 = load i8**, i8*** %97, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 0
  %100 = call i32 @COMPARETUP(%struct.TYPE_12__* %94, i8** %95, i8** %99)
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = load i8**, i8*** %4, align 8
  %105 = call i32 @free_sort_tuple(%struct.TYPE_12__* %103, i8** %104)
  %106 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %117

107:                                              ; preds = %93
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = load i8**, i8*** %110, align 8
  %112 = getelementptr inbounds i8*, i8** %111, i64 0
  %113 = call i32 @free_sort_tuple(%struct.TYPE_12__* %108, i8** %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = load i8**, i8*** %4, align 8
  %116 = call i32 @tuplesort_heap_replace_top(%struct.TYPE_12__* %114, i8** %115)
  br label %117

117:                                              ; preds = %107, %102
  br label %135

118:                                              ; preds = %2
  %119 = load i8**, i8*** %4, align 8
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 3
  %123 = load i8**, i8*** %122, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8*, i8** %123, i64 %128
  store i8* %120, i8** %129, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %131 = call i32 @dumptuples(%struct.TYPE_12__* %130, i32 0)
  br label %135

132:                                              ; preds = %2
  %133 = load i32, i32* @ERROR, align 4
  %134 = call i32 (i32, i8*, ...) @elog(i32 %133, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %135

135:                                              ; preds = %72, %87, %132, %118, %117, %88
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LEADER(%struct.TYPE_12__*) #1

declare dso_local i32 @grow_memtuples(%struct.TYPE_12__*) #1

declare dso_local i32 @LACKMEM(%struct.TYPE_12__*) #1

declare dso_local i32 @make_bounded_heap(%struct.TYPE_12__*) #1

declare dso_local i32 @inittapes(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dumptuples(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @COMPARETUP(%struct.TYPE_12__*, i8**, i8**) #1

declare dso_local i32 @free_sort_tuple(%struct.TYPE_12__*, i8**) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i32 @tuplesort_heap_replace_top(%struct.TYPE_12__*, i8**) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
