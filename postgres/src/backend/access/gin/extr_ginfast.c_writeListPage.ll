; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginfast.c_writeListPage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginfast.c_writeListPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i64 }

@GIN_LIST = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to add item to index page in \22%s\22\00", align 1
@BLCKSZ = common dso_local global i64 0, align 8
@InvalidBlockNumber = common dso_local global i64 0, align 8
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@RM_GIN_ID = common dso_local global i32 0, align 4
@XLOG_GIN_INSERT_LISTPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64*, i64, i64)* @writeListPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @writeListPage(i32 %0, i32 %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @BufferGetPage(i32 %22)
  store i32 %23, i32* %11, align 4
  store i64 0, i64* %14, align 8
  %24 = call i32 (...) @START_CRIT_SECTION()
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @GIN_LIST, align 4
  %27 = call i32 @GinInitBuffer(i32 %25, i32 %26)
  %28 = load i32, i32* @FirstOffsetNumber, align 4
  store i32 %28, i32* %16, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %18, align 8
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %76, %5
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %31
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @IndexTupleSize(i64 %39)
  store i32 %40, i32* %19, align 4
  %41 = load i8*, i8** %18, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = load i64, i64* %12, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %19, align 4
  %47 = call i32 @memcpy(i8* %41, i64 %45, i32 %46)
  %48 = load i32, i32* %19, align 4
  %49 = load i8*, i8** %18, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %18, align 8
  %52 = load i32, i32* %19, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %14, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %14, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i64*, i64** %8, align 8
  %58 = load i64, i64* %12, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @PageAddItem(i32 %56, i32 %61, i32 %62, i32 %63, i32 0, i32 0)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @InvalidOffsetNumber, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %35
  %69 = load i32, i32* @ERROR, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @RelationGetRelationName(i32 %70)
  %72 = call i32 @elog(i32 %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %68, %35
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  br label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %12, align 8
  br label %31

79:                                               ; preds = %31
  %80 = load i64, i64* %14, align 8
  %81 = load i64, i64* @BLCKSZ, align 8
  %82 = icmp ule i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = call i32 @Assert(i32 %83)
  %85 = load i64, i64* %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call %struct.TYPE_6__* @GinPageGetOpaque(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i64 %85, i64* %88, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* @InvalidBlockNumber, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %79
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @GinPageSetFullRow(i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = call %struct.TYPE_6__* @GinPageGetOpaque(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %102

98:                                               ; preds = %79
  %99 = load i32, i32* %11, align 4
  %100 = call %struct.TYPE_6__* @GinPageGetOpaque(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %92
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @MarkBufferDirty(i32 %103)
  %105 = load i32, i32* %6, align 4
  %106 = call i64 @RelationNeedsWAL(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %102
  %109 = load i64, i64* %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i64 %109, i64* %110, align 8
  %111 = load i64, i64* %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i64 %111, i64* %112, align 8
  %113 = call i32 (...) @XLogBeginInsert()
  %114 = bitcast %struct.TYPE_4__* %20 to i8*
  %115 = call i32 @XLogRegisterData(i8* %114, i32 16)
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %118 = call i32 @XLogRegisterBuffer(i32 0, i32 %116, i32 %117)
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = load i64, i64* %14, align 8
  %122 = call i32 @XLogRegisterBufData(i32 0, i8* %120, i64 %121)
  %123 = load i32, i32* @RM_GIN_ID, align 4
  %124 = load i32, i32* @XLOG_GIN_INSERT_LISTPAGE, align 4
  %125 = call i32 @XLogInsert(i32 %123, i32 %124)
  store i32 %125, i32* %21, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %21, align 4
  %128 = call i32 @PageSetLSN(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %108, %102
  %130 = load i32, i32* %11, align 4
  %131 = call i64 @PageGetExactFreeSpace(i32 %130)
  store i64 %131, i64* %13, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @UnlockReleaseBuffer(i32 %132)
  %134 = call i32 (...) @END_CRIT_SECTION()
  %135 = load i64, i64* %13, align 8
  ret i64 %135
}

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @GinInitBuffer(i32, i32) #1

declare dso_local i32 @IndexTupleSize(i64) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @PageAddItem(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local %struct.TYPE_6__* @GinPageGetOpaque(i32) #1

declare dso_local i32 @GinPageSetFullRow(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogRegisterBufData(i32, i8*, i64) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i64 @PageGetExactFreeSpace(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
