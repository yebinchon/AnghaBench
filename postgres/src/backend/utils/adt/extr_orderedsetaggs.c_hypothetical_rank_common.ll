; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_orderedsetaggs.c_hypothetical_rank_common.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_orderedsetaggs.c_hypothetical_rank_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32*, i32* }

@AGG_CONTEXT_AGGREGATE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"wrong number of arguments in hypothetical-set function\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @hypothetical_rank_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hypothetical_rank_common(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = call i32 (...) @PG_NARGS()
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @AggCheckCallContext(i32 %17, i32* null)
  %19 = load i64, i64* @AGG_CONTEXT_AGGREGATE, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @Assert(i32 %21)
  %23 = call i32 @PG_ARGISNULL(i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32*, i32** %7, align 8
  store i32 0, i32* %26, align 4
  store i32 1, i32* %4, align 4
  br label %146

27:                                               ; preds = %3
  %28 = call i64 @PG_GETARG_POINTER(i32 0)
  %29 = inttoptr i64 %28 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %10, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = srem i32 %34, 2
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @ERROR, align 4
  %39 = call i32 @elog(i32 %38, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %27
  %41 = load i32, i32* %8, align 4
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @hypothetical_check_argtypes(i32 %43, i32 %44, i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @Assert(i32 %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %11, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = call i32 @ExecClearTuple(%struct.TYPE_10__* %63)
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %88, %40
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @PG_GETARG_DATUM(i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @PG_ARGISNULL(i32 %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  br label %88

88:                                               ; preds = %69
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %65

91:                                               ; preds = %65
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @Int32GetDatum(i32 %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 0, i32* %105, align 4
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %107 = call i32 @ExecStoreVirtualTuple(%struct.TYPE_10__* %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %112 = call i32 @tuplesort_puttupleslot(i32 %110, %struct.TYPE_10__* %111)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @tuplesort_performsort(i32 %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  br label %119

119:                                              ; preds = %138, %91
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %124 = call i64 @tuplesort_gettupleslot(i32 %122, i32 1, i32 1, %struct.TYPE_10__* %123, i32* null)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %119
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  %130 = call i32 @slot_getattr(%struct.TYPE_10__* %127, i32 %129, i32* %13)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %14, align 4
  %135 = call i64 @DatumGetInt32(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  br label %142

138:                                              ; preds = %133, %126
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  %141 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  br label %119

142:                                              ; preds = %137, %119
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %144 = call i32 @ExecClearTuple(%struct.TYPE_10__* %143)
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %142, %25
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @PG_NARGS(...) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @AggCheckCallContext(i32, i32*) #1

declare dso_local i32 @PG_ARGISNULL(i32) #1

declare dso_local i64 @PG_GETARG_POINTER(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @hypothetical_check_argtypes(i32, i32, i32) #1

declare dso_local i32 @ExecClearTuple(%struct.TYPE_10__*) #1

declare dso_local i32 @PG_GETARG_DATUM(i32) #1

declare dso_local i32 @Int32GetDatum(i32) #1

declare dso_local i32 @ExecStoreVirtualTuple(%struct.TYPE_10__*) #1

declare dso_local i32 @tuplesort_puttupleslot(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @tuplesort_performsort(i32) #1

declare dso_local i64 @tuplesort_gettupleslot(i32, i32, i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @slot_getattr(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i64 @DatumGetInt32(i32) #1

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
