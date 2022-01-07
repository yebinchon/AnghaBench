; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginvacuum.c_ginDeletePage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginvacuum.c_ginDeletePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@MAIN_FORKNUM = common dso_local global i32 0, align 4
@RBM_NORMAL = common dso_local global i32 0, align 4
@GIN_EXCLUSIVE = common dso_local global i32 0, align 4
@GIN_DELETED = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_GIN_ID = common dso_local global i32 0, align 4
@XLOG_GIN_DELETE_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i64, i64, i32, i32)* @ginDeletePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ginDeletePage(%struct.TYPE_8__* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MAIN_FORKNUM, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* @RBM_NORMAL, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ReadBufferExtended(i32 %23, i32 %24, i64 %25, i32 %26, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MAIN_FORKNUM, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load i32, i32* @RBM_NORMAL, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ReadBufferExtended(i32 %33, i32 %34, i64 %35, i32 %36, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MAIN_FORKNUM, align 4
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* @RBM_NORMAL, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ReadBufferExtended(i32 %43, i32 %44, i64 %45, i32 %46, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @GIN_EXCLUSIVE, align 4
  %53 = call i32 @LockBuffer(i32 %51, i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @BufferGetPage(i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call %struct.TYPE_9__* @GinPageGetOpaque(i32 %56)
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %18, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call i32 (...) @ReadNewTransactionId()
  %62 = call i32 @GinPageSetDeleteXid(i32 %60, i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %18, align 8
  %68 = call i32 @PredicateLockPageCombine(i32 %65, i64 %66, i64 %67)
  %69 = call i32 (...) @START_CRIT_SECTION()
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @BufferGetPage(i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i64, i64* %18, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call %struct.TYPE_9__* @GinPageGetOpaque(i32 %73)
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @BufferGetPage(i32 %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @GinPageDeletePostingItem(i32 %78, i32 %79)
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @BufferGetPage(i32 %81)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* @GIN_DELETED, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call %struct.TYPE_9__* @GinPageGetOpaque(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @MarkBufferDirty(i32 %87)
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @MarkBufferDirty(i32 %89)
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @MarkBufferDirty(i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @RelationNeedsWAL(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %132

98:                                               ; preds = %6
  %99 = call i32 (...) @XLogBeginInsert()
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @XLogRegisterBuffer(i32 0, i32 %100, i32 0)
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* @REGBUF_STANDARD, align 4
  %104 = call i32 @XLogRegisterBuffer(i32 1, i32 %102, i32 %103)
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @XLogRegisterBuffer(i32 2, i32 %105, i32 0)
  %107 = load i32, i32* %11, align 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %16, align 4
  %110 = call %struct.TYPE_9__* @GinPageGetOpaque(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i64 %112, i64* %113, align 8
  %114 = load i32, i32* %16, align 4
  %115 = call i32 @GinPageGetDeleteXid(i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 %115, i32* %116, align 8
  %117 = bitcast %struct.TYPE_7__* %20 to i8*
  %118 = call i32 @XLogRegisterData(i8* %117, i32 16)
  %119 = load i32, i32* @RM_GIN_ID, align 4
  %120 = load i32, i32* @XLOG_GIN_DELETE_PAGE, align 4
  %121 = call i32 @XLogInsert(i32 %119, i32 %120)
  store i32 %121, i32* %19, align 4
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %19, align 4
  %124 = call i32 @PageSetLSN(i32 %122, i32 %123)
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %19, align 4
  %127 = call i32 @PageSetLSN(i32 %125, i32 %126)
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @BufferGetPage(i32 %128)
  %130 = load i32, i32* %19, align 4
  %131 = call i32 @PageSetLSN(i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %98, %6
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @ReleaseBuffer(i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @UnlockReleaseBuffer(i32 %135)
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @ReleaseBuffer(i32 %137)
  %139 = call i32 (...) @END_CRIT_SECTION()
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  ret void
}

declare dso_local i32 @ReadBufferExtended(i32, i32, i64, i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_9__* @GinPageGetOpaque(i32) #1

declare dso_local i32 @GinPageSetDeleteXid(i32, i32) #1

declare dso_local i32 @ReadNewTransactionId(...) #1

declare dso_local i32 @PredicateLockPageCombine(i32, i64, i64) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @GinPageDeletePostingItem(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @GinPageGetDeleteXid(i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
