; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgdoinsert.c_checkSplitConditions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgdoinsert.c_checkSplitConditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i64 }

@BLCKSZ = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i32 0, align 4
@SPGIST_LIVE = common dso_local global i64 0, align 8
@SPGIST_DEAD = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unexpected SPGiST tuple state: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_5__*, i32*)* @checkSplitConditions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkSplitConditions(i32 %0, i32* %1, %struct.TYPE_5__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @SpGistBlockIsRoot(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @BLCKSZ, align 4
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @BLCKSZ, align 4
  store i32 %22, i32* %5, align 4
  br label %108

23:                                               ; preds = %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %100, %23
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @InvalidOffsetNumber, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %104

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @FirstOffsetNumber, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @PageGetMaxOffsetNumber(i32 %39)
  %41 = icmp sle i32 %36, %40
  br label %42

42:                                               ; preds = %35, %31
  %43 = phi i1 [ false, %31 ], [ %41, %35 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @PageGetItemId(i32 %51, i32 %52)
  %54 = call i64 @PageGetItem(i32 %48, i32 %53)
  %55 = inttoptr i64 %54 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %13, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SPGIST_LIVE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %42
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 4
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %12, align 4
  br label %100

72:                                               ; preds = %42
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SPGIST_DEAD, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %79, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @Assert(i32 %84)
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @InvalidOffsetNumber, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @Assert(i32 %91)
  br label %99

93:                                               ; preds = %72
  %94 = load i32, i32* @ERROR, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @elog(i32 %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %97)
  br label %99

99:                                               ; preds = %93, %78
  br label %100

100:                                              ; preds = %99, %61
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %10, align 4
  br label %27

104:                                              ; preds = %27
  %105 = load i32, i32* %11, align 4
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %104, %19
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i64 @SpGistBlockIsRoot(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
