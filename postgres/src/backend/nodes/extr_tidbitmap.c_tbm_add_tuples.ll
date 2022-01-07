; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_tidbitmap.c_tbm_add_tuples.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_tidbitmap.c_tbm_add_tuples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32*, i32, i64 }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@TBM_NOT_ITERATING = common dso_local global i64 0, align 8
@MAX_TUPLES_PER_PAGE = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"tuple offset out of range: %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tbm_add_tuples(%struct.TYPE_8__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %16, i64* %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TBM_NOT_ITERATING, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @Assert(i32 %22)
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %110, %4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %113

28:                                               ; preds = %24
  %29 = load i64, i64* %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i64 @ItemPointerGetBlockNumber(i64 %32)
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i32 @ItemPointerGetOffsetNumber(i64 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %45, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @MAX_TUPLES_PER_PAGE, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %28
  %46 = load i32, i32* @ERROR, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @elog(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %49
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = load i64, i64* %12, align 8
  %56 = call i64 @tbm_page_is_lossy(%struct.TYPE_8__* %54, i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  br label %63

59:                                               ; preds = %53
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call %struct.TYPE_9__* @tbm_get_pageentry(%struct.TYPE_8__* %60, i64 %61)
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %10, align 8
  br label %63

63:                                               ; preds = %59, %58
  %64 = load i64, i64* %12, align 8
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %63, %49
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %67 = icmp eq %struct.TYPE_9__* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %110

69:                                               ; preds = %65
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %82

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 %76, 1
  %78 = call i32 @WORDNUM(i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %13, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @BITNUM(i32 %80)
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %75, %74
  %83 = load i32, i32* %15, align 4
  %84 = shl i32 1, %83
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %84
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %82
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = call i32 @tbm_lossify(%struct.TYPE_8__* %106)
  %108 = load i64, i64* @InvalidBlockNumber, align 8
  store i64 %108, i64* %9, align 8
  br label %109

109:                                              ; preds = %105, %82
  br label %110

110:                                              ; preds = %109, %68
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %24

113:                                              ; preds = %24
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i64) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i64) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @tbm_page_is_lossy(%struct.TYPE_8__*, i64) #1

declare dso_local %struct.TYPE_9__* @tbm_get_pageentry(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @WORDNUM(i32) #1

declare dso_local i32 @BITNUM(i32) #1

declare dso_local i32 @tbm_lossify(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
