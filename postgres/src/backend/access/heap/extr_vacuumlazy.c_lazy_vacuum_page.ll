; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_lazy_vacuum_page.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_vacuumlazy.c_lazy_vacuum_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@MaxOffsetNumber = common dso_local global i32 0, align 4
@PROGRESS_VACUUM_HEAP_BLKS_VACUUMED = common dso_local global i32 0, align 4
@VISIBILITYMAP_ALL_VISIBLE = common dso_local global i32 0, align 4
@VISIBILITYMAP_ALL_FROZEN = common dso_local global i32 0, align 4
@InvalidXLogRecPtr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32, i32, %struct.TYPE_3__*, i32*)* @lazy_vacuum_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lazy_vacuum_page(i32 %0, i64 %1, i32 %2, i32 %3, %struct.TYPE_3__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %11, align 8
  store i32* %5, i32** %12, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @BufferGetPage(i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* @MaxOffsetNumber, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %14, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %31 = load i32, i32* @PROGRESS_VACUUM_HEAP_BLKS_VACUUMED, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @pgstat_progress_update_param(i32 %31, i64 %32)
  %34 = call i32 (...) @START_CRIT_SECTION()
  br label %35

35:                                               ; preds = %71, %6
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %35
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = call i64 @ItemPointerGetBlockNumber(i32* %47)
  store i64 %48, i64* %19, align 8
  %49 = load i64, i64* %19, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %74

53:                                               ; preds = %41
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i32 @ItemPointerGetOffsetNumber(i32* %59)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @PageGetItemId(i32 %61, i32 %62)
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %21, align 4
  %65 = call i32 @ItemIdSetUnused(i32 %64)
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %30, i64 %69
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %53
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %35

74:                                               ; preds = %52, %35
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @PageRepairFragmentation(i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @MarkBufferDirty(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @RelationNeedsWAL(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @log_heap_clean(i32 %83, i32 %84, i32* null, i32 0, i32* null, i32 0, i32* %30, i32 %85, i32 %88)
  store i32 %89, i32* %22, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %22, align 4
  %92 = call i32 @PageSetLSN(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %82, %74
  %94 = call i32 (...) @END_CRIT_SECTION()
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i64 @heap_page_is_all_visible(i32 %95, i32 %96, i32* %17, i32* %18)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @PageSetAllVisible(i32 %100)
  br label %102

102:                                              ; preds = %99, %93
  %103 = load i32, i32* %13, align 4
  %104 = call i64 @PageIsAllVisible(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %149

106:                                              ; preds = %102
  %107 = load i32, i32* %7, align 4
  %108 = load i64, i64* %8, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @visibilitymap_get_status(i32 %107, i64 %108, i32* %109)
  store i32 %110, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %111 = load i32, i32* %23, align 4
  %112 = load i32, i32* @VISIBILITYMAP_ALL_VISIBLE, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %106
  %116 = load i32, i32* @VISIBILITYMAP_ALL_VISIBLE, align 4
  %117 = load i32, i32* %24, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %24, align 4
  br label %119

119:                                              ; preds = %115, %106
  %120 = load i32, i32* %23, align 4
  %121 = load i32, i32* @VISIBILITYMAP_ALL_FROZEN, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32, i32* @VISIBILITYMAP_ALL_FROZEN, align 4
  %129 = load i32, i32* %24, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %24, align 4
  br label %131

131:                                              ; preds = %127, %124, %119
  %132 = load i32*, i32** %12, align 8
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @BufferIsValid(i32 %133)
  %135 = call i32 @Assert(i32 %134)
  %136 = load i32, i32* %24, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %131
  %139 = load i32, i32* %7, align 4
  %140 = load i64, i64* %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @InvalidXLogRecPtr, align 4
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %24, align 4
  %147 = call i32 @visibilitymap_set(i32 %139, i64 %140, i32 %141, i32 %142, i32 %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %138, %131
  br label %149

149:                                              ; preds = %148, %102
  %150 = load i32, i32* %10, align 4
  %151 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %151)
  ret i32 %150
}

declare dso_local i32 @BufferGetPage(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @pgstat_progress_update_param(i32, i64) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @ItemPointerGetOffsetNumber(i32*) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @ItemIdSetUnused(i32) #1

declare dso_local i32 @PageRepairFragmentation(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @log_heap_clean(i32, i32, i32*, i32, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

declare dso_local i64 @heap_page_is_all_visible(i32, i32, i32*, i32*) #1

declare dso_local i32 @PageSetAllVisible(i32) #1

declare dso_local i64 @PageIsAllVisible(i32) #1

declare dso_local i32 @visibilitymap_get_status(i32, i64, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i32 @visibilitymap_set(i32, i64, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
