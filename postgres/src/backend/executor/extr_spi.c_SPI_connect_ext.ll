; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_connect_ext.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_spi.c_SPI_connect_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32, i32*, i64, i32*, i64, i32*, i32, i32, i32, i32*, i64 }

@_SPI_stack = common dso_local global %struct.TYPE_5__* null, align 8
@_SPI_connected = common dso_local global i32 0, align 4
@_SPI_stack_depth = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"SPI stack corrupted\00", align 1
@TopMemoryContext = common dso_local global i32 0, align 4
@_SPI_current = common dso_local global %struct.TYPE_5__* null, align 8
@InvalidSubTransactionId = common dso_local global i32 0, align 4
@SPI_OPT_NONATOMIC = common dso_local global i32 0, align 4
@SPI_processed = common dso_local global i64 0, align 8
@SPI_tuptable = common dso_local global i32* null, align 8
@SPI_result = common dso_local global i64 0, align 8
@TopTransactionContext = common dso_local global i32* null, align 8
@PortalContext = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"SPI Proc\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"SPI Exec\00", align 1
@SPI_OK_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SPI_connect_ext(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_stack, align 8
  %5 = icmp eq %struct.TYPE_5__* %4, null
  br i1 %5, label %6, label %24

6:                                                ; preds = %1
  %7 = load i32, i32* @_SPI_connected, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @_SPI_stack_depth, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %6
  %13 = load i32, i32* @ERROR, align 4
  %14 = call i32 @elog(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %9
  store i32 16, i32* %3, align 4
  %16 = load i32, i32* @TopMemoryContext, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 96
  %20 = trunc i64 %19 to i32
  %21 = call i64 @MemoryContextAlloc(i32 %16, i32 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** @_SPI_stack, align 8
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* @_SPI_stack_depth, align 4
  br label %51

24:                                               ; preds = %1
  %25 = load i32, i32* @_SPI_stack_depth, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @_SPI_stack_depth, align 4
  %29 = load i32, i32* @_SPI_connected, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @ERROR, align 4
  %33 = call i32 @elog(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* @_SPI_stack_depth, align 4
  %36 = load i32, i32* @_SPI_connected, align 4
  %37 = add nsw i32 %36, 1
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, i32* @_SPI_stack_depth, align 4
  %41 = mul nsw i32 %40, 2
  store i32 %41, i32* %3, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_stack, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 96
  %46 = trunc i64 %45 to i32
  %47 = call i64 @repalloc(%struct.TYPE_5__* %42, i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** @_SPI_stack, align 8
  %49 = load i32, i32* %3, align 4
  store i32 %49, i32* @_SPI_stack_depth, align 4
  br label %50

50:                                               ; preds = %39, %34
  br label %51

51:                                               ; preds = %50, %15
  %52 = load i32, i32* @_SPI_connected, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @_SPI_connected, align 4
  %54 = load i32, i32* @_SPI_connected, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @_SPI_connected, align 4
  %58 = load i32, i32* @_SPI_stack_depth, align 4
  %59 = icmp slt i32 %57, %58
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi i1 [ false, %51 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @Assert(i32 %62)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_stack, align 8
  %65 = load i32, i32* @_SPI_connected, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** @_SPI_current, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 13
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 12
  store i32* null, i32** %71, align 8
  %72 = load i32, i32* @InvalidSubTransactionId, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 11
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 10
  %77 = call i32 @slist_init(i32* %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  store i32* null, i32** %81, align 8
  %82 = call i32 (...) @GetCurrentSubTransactionId()
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 9
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 8
  store i32* null, i32** %86, align 8
  %87 = load i32, i32* %2, align 4
  %88 = load i32, i32* @SPI_OPT_NONATOMIC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  %97 = load i64, i64* @SPI_processed, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 7
  store i64 %97, i64* %99, align 8
  %100 = load i32*, i32** @SPI_tuptable, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 6
  store i32* %100, i32** %102, align 8
  %103 = load i64, i64* @SPI_result, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 5
  store i64 %103, i64* %105, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %60
  %111 = load i32*, i32** @TopTransactionContext, align 8
  br label %114

112:                                              ; preds = %60
  %113 = load i32*, i32** @PortalContext, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32* [ %111, %110 ], [ %113, %112 ]
  %116 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %117 = call i8* @AllocSetContextCreate(i32* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  store i32* %118, i32** %120, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %114
  %126 = load i32*, i32** @TopTransactionContext, align 8
  br label %131

127:                                              ; preds = %114
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  br label %131

131:                                              ; preds = %127, %125
  %132 = phi i32* [ %126, %125 ], [ %130, %127 ]
  %133 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %134 = call i8* @AllocSetContextCreate(i32* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %133)
  %135 = bitcast i8* %134 to i32*
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  store i32* %135, i32** %137, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @MemoryContextSwitchTo(i32* %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** @_SPI_current, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 8
  store i64 0, i64* @SPI_processed, align 8
  store i32* null, i32** @SPI_tuptable, align 8
  store i64 0, i64* @SPI_result, align 8
  %144 = load i32, i32* @SPI_OK_CONNECT, align 4
  ret i32 %144
}

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @slist_init(i32*) #1

declare dso_local i32 @GetCurrentSubTransactionId(...) #1

declare dso_local i8* @AllocSetContextCreate(i32*, i8*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
