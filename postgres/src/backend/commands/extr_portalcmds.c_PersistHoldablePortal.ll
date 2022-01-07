; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_portalcmds.c_PersistHoldablePortal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_portalcmds.c_PersistHoldablePortal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32*, i32, i32*, i64, i32*, %struct.TYPE_15__*, i64, i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 (%struct.TYPE_17__*)* }

@InvalidSubTransactionId = common dso_local global i64 0, align 8
@ActivePortal = common dso_local global %struct.TYPE_16__* null, align 8
@CurrentResourceOwner = common dso_local global i64 0, align 8
@PortalContext = common dso_local global i32* null, align 8
@DestTuplestore = common dso_local global i32 0, align 4
@ForwardScanDirection = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unexpected end of tuple stream\00", align 1
@PORTAL_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PersistHoldablePortal(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 7
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_15__* %10, %struct.TYPE_15__** %3, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @InvalidSubTransactionId, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @Assert(i32 %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @Assert(i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @Assert(i32 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @Assert(i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 10
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @Assert(i32 %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = call i32* @MemoryContextSwitchTo(i32* %42)
  store i32* %43, i32** %7, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @CreateTupleDescCopy(i32 %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32* @MemoryContextSwitchTo(i32* %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = call i32 @MarkPortalActive(%struct.TYPE_16__* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** @ActivePortal, align 8
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %4, align 8
  %55 = load i64, i64* @CurrentResourceOwner, align 8
  store i64 %55, i64* %5, align 8
  %56 = load i32*, i32** @PortalContext, align 8
  store i32* %56, i32** %6, align 8
  %57 = call i32 (...) @PG_TRY()
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** @ActivePortal, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %1
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* @CurrentResourceOwner, align 8
  br label %67

67:                                               ; preds = %63, %1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  store i32* %70, i32** @PortalContext, align 8
  %71 = load i32*, i32** @PortalContext, align 8
  %72 = call i32* @MemoryContextSwitchTo(i32* %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @PushActiveSnapshot(i32 %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = call i32 @ExecutorRewind(%struct.TYPE_15__* %77)
  %79 = load i32, i32* @DestTuplestore, align 4
  %80 = call %struct.TYPE_17__* @CreateDestReceiver(i32 %79)
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %82, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 6
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @SetTuplestoreDestReceiverParams(%struct.TYPE_17__* %85, i32* %88, i32* %91, i32 1)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = load i32, i32* @ForwardScanDirection, align 4
  %95 = call i32 @ExecutorRun(%struct.TYPE_15__* %93, i32 %94, i64 0, i32 0)
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = call i32 %100(%struct.TYPE_17__* %103)
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %106, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 7
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %108, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %110 = call i32 @ExecutorFinish(%struct.TYPE_15__* %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %112 = call i32 @ExecutorEnd(%struct.TYPE_15__* %111)
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %114 = call i32 @FreeQueryDesc(%struct.TYPE_15__* %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = call i32* @MemoryContextSwitchTo(i32* %117)
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %67
  br label %124

124:                                              ; preds = %130, %123
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = call i64 @tuplestore_skiptuples(i32* %127, i32 1000000, i32 1)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %124

131:                                              ; preds = %124
  br label %149

132:                                              ; preds = %67
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @tuplestore_rescan(i32* %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @tuplestore_skiptuples(i32* %139, i32 %142, i32 1)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %132
  %146 = load i32, i32* @ERROR, align 4
  %147 = call i32 @elog(i32 %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %132
  br label %149

149:                                              ; preds = %148, %131
  %150 = call i32 (...) @PG_CATCH()
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %152 = call i32 @MarkPortalFailed(%struct.TYPE_16__* %151)
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %153, %struct.TYPE_16__** @ActivePortal, align 8
  %154 = load i64, i64* %5, align 8
  store i64 %154, i64* @CurrentResourceOwner, align 8
  %155 = load i32*, i32** %6, align 8
  store i32* %155, i32** @PortalContext, align 8
  %156 = call i32 (...) @PG_RE_THROW()
  %157 = call i32 (...) @PG_END_TRY()
  %158 = load i32*, i32** %7, align 8
  %159 = call i32* @MemoryContextSwitchTo(i32* %158)
  %160 = load i32, i32* @PORTAL_READY, align 4
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %163, %struct.TYPE_16__** @ActivePortal, align 8
  %164 = load i64, i64* %5, align 8
  store i64 %164, i64* @CurrentResourceOwner, align 8
  %165 = load i32*, i32** %6, align 8
  store i32* %165, i32** @PortalContext, align 8
  %166 = call i32 (...) @PopActiveSnapshot()
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @MemoryContextDeleteChildren(i32* %169)
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @MemoryContextSwitchTo(i32*) #1

declare dso_local i32 @CreateTupleDescCopy(i32) #1

declare dso_local i32 @MarkPortalActive(%struct.TYPE_16__*) #1

declare dso_local i32 @PG_TRY(...) #1

declare dso_local i32 @PushActiveSnapshot(i32) #1

declare dso_local i32 @ExecutorRewind(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_17__* @CreateDestReceiver(i32) #1

declare dso_local i32 @SetTuplestoreDestReceiverParams(%struct.TYPE_17__*, i32*, i32*, i32) #1

declare dso_local i32 @ExecutorRun(%struct.TYPE_15__*, i32, i64, i32) #1

declare dso_local i32 @ExecutorFinish(%struct.TYPE_15__*) #1

declare dso_local i32 @ExecutorEnd(%struct.TYPE_15__*) #1

declare dso_local i32 @FreeQueryDesc(%struct.TYPE_15__*) #1

declare dso_local i64 @tuplestore_skiptuples(i32*, i32, i32) #1

declare dso_local i32 @tuplestore_rescan(i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @PG_CATCH(...) #1

declare dso_local i32 @MarkPortalFailed(%struct.TYPE_16__*) #1

declare dso_local i32 @PG_RE_THROW(...) #1

declare dso_local i32 @PG_END_TRY(...) #1

declare dso_local i32 @PopActiveSnapshot(...) #1

declare dso_local i32 @MemoryContextDeleteChildren(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
