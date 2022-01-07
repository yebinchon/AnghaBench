; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_brinbuild.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/brin/extr_brin.c_brinbuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { double, double }
%struct.TYPE_10__ = type { double, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"index \22%s\22 already contains data\00", align 1
@P_NEW = common dso_local global i32 0, align 4
@BRIN_METAPAGE_BLKNO = common dso_local global i64 0, align 8
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BRIN_CURRENT_VERSION = common dso_local global i32 0, align 4
@SizeOfBrinCreateIdx = common dso_local global i32 0, align 4
@REGBUF_WILL_INIT = common dso_local global i32 0, align 4
@REGBUF_STANDARD = common dso_local global i32 0, align 4
@RM_BRIN_ID = common dso_local global i32 0, align 4
@XLOG_BRIN_CREATE_INDEX = common dso_local global i32 0, align 4
@brinbuildCallback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @brinbuild(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @RelationGetNumberOfBlocks(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @ERROR, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @RelationGetRelationName(i32 %22)
  %24 = call i32 @elog(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %3
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @P_NEW, align 4
  %28 = call i32 @ReadBuffer(i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @BufferGetBlockNumber(i32 %29)
  %31 = load i64, i64* @BRIN_METAPAGE_BLKNO, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %37 = call i32 @LockBuffer(i32 %35, i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @BufferGetPage(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @BrinGetPagesPerRange(i32 %40)
  %42 = load i32, i32* @BRIN_CURRENT_VERSION, align 4
  %43 = call i32 @brin_metapage_init(i32 %39, i32 %41, i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @MarkBufferDirty(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @RelationNeedsWAL(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %72

49:                                               ; preds = %25
  %50 = load i32, i32* @BRIN_CURRENT_VERSION, align 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @BrinGetPagesPerRange(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = call i32 (...) @XLogBeginInsert()
  %56 = bitcast %struct.TYPE_8__* %14 to i8*
  %57 = load i32, i32* @SizeOfBrinCreateIdx, align 4
  %58 = call i32 @XLogRegisterData(i8* %56, i32 %57)
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @REGBUF_WILL_INIT, align 4
  %61 = load i32, i32* @REGBUF_STANDARD, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @XLogRegisterBuffer(i32 0, i32 %59, i32 %62)
  %64 = load i32, i32* @RM_BRIN_ID, align 4
  %65 = load i32, i32* @XLOG_BRIN_CREATE_INDEX, align 4
  %66 = call i32 @XLogInsert(i32 %64, i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @BufferGetPage(i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 @PageSetLSN(i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %49, %25
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @UnlockReleaseBuffer(i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = call i32* @brinRevmapInitialize(i32 %75, i32* %13, i32* null)
  store i32* %76, i32** %10, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call %struct.TYPE_10__* @initialize_brin_buildstate(i32 %77, i32* %78, i32 %79)
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %11, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @brinbuildCallback, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %86 = bitcast %struct.TYPE_10__* %85 to i8*
  %87 = call double @table_index_build_scan(i32 %81, i32 %82, i32* %83, i32 0, i32 1, i32 %84, i8* %86, i32* null)
  store double %87, double* %8, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %89 = call i32 @form_and_insert_tuple(%struct.TYPE_10__* %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load double, double* %91, align 8
  store double %92, double* %9, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @brinRevmapTerminate(i32 %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %98 = call i32 @terminate_brin_buildstate(%struct.TYPE_10__* %97)
  %99 = call i64 @palloc(i32 16)
  %100 = inttoptr i64 %99 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %100, %struct.TYPE_9__** %7, align 8
  %101 = load double, double* %8, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  store double %101, double* %103, align 8
  %104 = load double, double* %9, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  store double %104, double* %106, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %107
}

declare dso_local i64 @RelationGetNumberOfBlocks(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

declare dso_local i32 @ReadBuffer(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @BufferGetBlockNumber(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @brin_metapage_init(i32, i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @BrinGetPagesPerRange(i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @RelationNeedsWAL(i32) #1

declare dso_local i32 @XLogBeginInsert(...) #1

declare dso_local i32 @XLogRegisterData(i8*, i32) #1

declare dso_local i32 @XLogRegisterBuffer(i32, i32, i32) #1

declare dso_local i32 @XLogInsert(i32, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32* @brinRevmapInitialize(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_10__* @initialize_brin_buildstate(i32, i32*, i32) #1

declare dso_local double @table_index_build_scan(i32, i32, i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @form_and_insert_tuple(%struct.TYPE_10__*) #1

declare dso_local i32 @brinRevmapTerminate(i32) #1

declare dso_local i32 @terminate_brin_buildstate(%struct.TYPE_10__*) #1

declare dso_local i64 @palloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
