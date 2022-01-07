; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgvacuum.c_vacuumLeafRoot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgvacuum.c_vacuumLeafRoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i32, i64 (i32*, i32)* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@MaxIndexTuplesPerPage = common dso_local global i32 0, align 4
@FirstOffsetNumber = common dso_local global i64 0, align 8
@SPGIST_LIVE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unexpected SPGiST tuple state: %d\00", align 1
@SizeOfSpgxlogVacuumRoot = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_SPGIST_ID = common dso_local global i32 0, align 4
@XLOG_SPGIST_VACUUM_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32)* @vacuumLeafRoot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vacuumLeafRoot(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @BufferGetPage(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @PageGetMaxOffsetNumber(i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %25, i64* %11, align 8
  br label %26

26:                                               ; preds = %86, %3
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %89

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @PageGetItemId(i32 %32, i64 %33)
  %35 = call i64 @PageGetItem(i32 %31, i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %13, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPGIST_LIVE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %30
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = call i32 @ItemPointerIsValid(i32* %44)
  %46 = call i32 @Assert(i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i64 (i32*, i32)*, i64 (i32*, i32)** %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 %49(i32* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %42
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i64, i64* %21, i64 %66
  store i64 %64, i64* %67, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %78

71:                                               ; preds = %42
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %71, %57
  br label %85

79:                                               ; preds = %30
  %80 = load i32, i32* @ERROR, align 4
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @elog(i32 %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %83)
  br label %85

85:                                               ; preds = %79, %78
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %11, align 8
  br label %26

89:                                               ; preds = %26
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i32 1, i32* %14, align 4
  br label %132

94:                                               ; preds = %89
  %95 = call i32 (...) @START_CRIT_SECTION()
  %96 = load i32, i32* %7, align 4
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @PageIndexMultiDelete(i32 %96, i64* %21, i64 %98)
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @MarkBufferDirty(i32 %100)
  %102 = load i32, i32* %5, align 4
  %103 = call i64 @RelationNeedsWAL(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %94
  %106 = call i32 (...) @XLogBeginInsert()
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @STORE_STATE(i32* %108, i32 %110)
  %112 = bitcast %struct.TYPE_7__* %8 to i8*
  %113 = load i32, i32* @SizeOfSpgxlogVacuumRoot, align 4
  %114 = call i32 @XLogRegisterData(i8* %112, i32 %113)
  %115 = bitcast i64* %21 to i8*
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = mul i64 8, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @XLogRegisterData(i8* %115, i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @REGBUF_STANDARD, align 4
  %123 = call i32 @XLogRegisterBuffer(i32 0, i32 %121, i32 %122)
  %124 = load i32, i32* @RM_SPGIST_ID, align 4
  %125 = load i32, i32* @XLOG_SPGIST_VACUUM_ROOT, align 4
  %126 = call i32 @XLogInsert(i32 %124, i32 %125)
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @PageSetLSN(i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %105, %94
  %131 = call i32 (...) @END_CRIT_SECTION()
  store i32 0, i32* %14, align 4
  br label %132

132:                                              ; preds = %130, %93
  %133 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %14, align 4
  switch i32 %134, label %136 [
    i32 0, label %135
    i32 1, label %135
  ]

135:                                              ; preds = %132, %132
  ret void

136:                                              ; preds = %132
  unreachable
}

declare dso_local i32 @BufferGetPage(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @START_CRIT_SECTION(...) #1

declare dso_local i32 @PageIndexMultiDelete(i32, i64*, i64) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @STORE_STATE(i32*, i32) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @END_CRIT_SECTION(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
