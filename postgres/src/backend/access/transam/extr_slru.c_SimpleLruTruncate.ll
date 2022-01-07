; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SimpleLruTruncate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_slru.c_SimpleLruTruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 (i32, i32)*, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64*, i32, i32*, i32*, i32 }

@SLRU_PAGES_PER_SEGMENT = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"could not truncate directory \22%s\22: apparent wraparound\00", align 1
@SLRU_PAGE_EMPTY = common dso_local global i64 0, align 8
@SLRU_PAGE_VALID = common dso_local global i64 0, align 8
@SlruScanDirCbDeleteCutoff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SimpleLruTruncate(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SLRU_PAGES_PER_SEGMENT, align 4
  %12 = srem i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, %12
  store i32 %14, i32* %4, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @LW_EXCLUSIVE, align 4
  %19 = call i32 @LWLockAcquire(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %119, %2
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64 (i32, i32)*, i64 (i32, i32)** %22, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 %23(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @LWLockRelease(i32 %33)
  %35 = load i32, i32* @LOG, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @errmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = call i32 @ereport(i32 %35, i32 %39)
  br label %131

41:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %120, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %123

48:                                               ; preds = %42
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SLRU_PAGE_EMPTY, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %120

59:                                               ; preds = %48
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64 (i32, i32)*, i64 (i32, i32)** %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i64 %62(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %59
  br label %120

74:                                               ; preds = %59
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SLRU_PAGE_VALID, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %74
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %84
  %94 = load i64, i64* @SLRU_PAGE_EMPTY, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 %94, i64* %100, align 8
  br label %120

101:                                              ; preds = %84, %74
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64*, i64** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SLRU_PAGE_VALID, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = load i32, i32* %6, align 4
  %114 = call i32 @SlruInternalWritePage(%struct.TYPE_8__* %112, i32 %113, i32* null)
  br label %119

115:                                              ; preds = %101
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @SimpleLruWaitIO(%struct.TYPE_8__* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %111
  br label %20

120:                                              ; preds = %93, %73, %58
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %42

123:                                              ; preds = %42
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @LWLockRelease(i32 %126)
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %129 = load i32, i32* @SlruScanDirCbDeleteCutoff, align 4
  %130 = call i32 @SlruScanDirectory(%struct.TYPE_8__* %128, i32 %129, i32* %4)
  br label %131

131:                                              ; preds = %123, %30
  ret void
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32) #1

declare dso_local i32 @SlruInternalWritePage(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @SimpleLruWaitIO(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @SlruScanDirectory(%struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
