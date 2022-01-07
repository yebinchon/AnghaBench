; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_xlog.c_brin_xlog_revmap_extend.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin_xlog.c_brin_xlog_revmap_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@BRIN_PAGETYPE_REVMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @brin_xlog_revmap_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brin_xlog_revmap_extend(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = call i64 @XLogRecGetData(%struct.TYPE_11__* %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %4, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = call i32 @XLogRecGetBlockTag(%struct.TYPE_11__* %18, i32 1, i32* null, i32* null, i32* %8)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @Assert(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = call i64 @XLogReadBufferForRedo(%struct.TYPE_11__* %27, i32 0, i32* %5)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @BufferGetPage(i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @PageGetContents(i64 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %11, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp eq i32 %40, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @Assert(i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i64, i64* %10, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @PageSetLSN(i64 %53, i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %57 = bitcast %struct.TYPE_13__* %56 to i8*
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  %59 = load i64, i64* %10, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = ptrtoint i8* %58 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = load i64, i64* %10, align 8
  %66 = inttoptr i64 %65 to %struct.TYPE_12__*
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @MarkBufferDirty(i32 %68)
  br label %70

70:                                               ; preds = %32, %1
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %72 = call i32 @XLogInitBufferForRedo(%struct.TYPE_11__* %71, i32 1)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @BufferGetPage(i32 %73)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* @BRIN_PAGETYPE_REVMAP, align 4
  %77 = call i32 @brin_page_init(i64 %75, i32 %76)
  %78 = load i64, i64* %7, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @PageSetLSN(i64 %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @MarkBufferDirty(i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @UnlockReleaseBuffer(i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i64 @BufferIsValid(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %70
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @UnlockReleaseBuffer(i32 %89)
  br label %91

91:                                               ; preds = %88, %70
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_11__*) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_11__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i64 @PageGetContents(i64) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @brin_page_init(i64, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
