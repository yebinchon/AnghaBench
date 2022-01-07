; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_ResetSequence.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_sequence.c_ResetSequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_16__ = type { i32 }

@SEQRELID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for sequence %u\00", align 1
@InvalidTransactionId = common dso_local global i64 0, align 8
@InvalidMultiXactId = common dso_local global i64 0, align 8
@NoLock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResetSequence(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @init_sequence(i32 %12, %struct.TYPE_13__** %4, %struct.TYPE_14__** %3)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = call i32 @read_seq_tuple(%struct.TYPE_14__* %14, i32* %6, i32* %7)
  %16 = load i32, i32* @SEQRELID, align 4
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @ObjectIdGetDatum(i32 %17)
  %19 = call i32 @SearchSysCache1(i32 %16, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @HeapTupleIsValid(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ERROR, align 4
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %1
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @GETSTRUCT(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %10, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @ReleaseSysCache(i32 %34)
  %36 = call i32 @heap_copytuple(i32* %7)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @UnlockReleaseBuffer(i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @GETSTRUCT(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %5, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @RelationSetNewRelfilenode(%struct.TYPE_14__* %49, i32 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @InvalidTransactionId, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @Assert(i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @InvalidMultiXactId, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @Assert(i32 %72)
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @fill_seq_with_data(%struct.TYPE_14__* %74, i32 %75)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = load i32, i32* @NoLock, align 4
  %84 = call i32 @relation_close(%struct.TYPE_14__* %82, i32 %83)
  ret void
}

declare dso_local i32 @init_sequence(i32, %struct.TYPE_13__**, %struct.TYPE_14__**) #1

declare dso_local i32 @read_seq_tuple(%struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

declare dso_local i32 @heap_copytuple(i32*) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @RelationSetNewRelfilenode(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @fill_seq_with_data(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @relation_close(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
