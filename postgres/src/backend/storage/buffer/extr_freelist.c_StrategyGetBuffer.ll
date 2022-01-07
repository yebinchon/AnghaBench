; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_freelist.c_StrategyGetBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_freelist.c_StrategyGetBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64 }

@StrategyControl = common dso_local global %struct.TYPE_13__* null, align 8
@ProcGlobal = common dso_local global %struct.TYPE_14__* null, align 8
@FREENEXT_NOT_IN_LIST = common dso_local global i64 0, align 8
@NBuffers = common dso_local global i32 0, align 4
@BUF_USAGECOUNT_ONE = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"no unpinned buffers available\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @StrategyGetBuffer(i32* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call %struct.TYPE_12__* @GetBufferFromRing(i32* %13, i32* %14)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %6, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %3, align 8
  br label %156

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** @StrategyControl, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @INT_ACCESS_ONCE(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** @StrategyControl, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** @ProcGlobal, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = call i32 @SetLatch(i32* %37)
  br label %39

39:                                               ; preds = %28, %21
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** @StrategyControl, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 3
  %42 = call i32 @pg_atomic_fetch_add_u32(i32* %41, i32 1)
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @StrategyControl, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sge i64 %45, 0
  br i1 %46, label %47, label %108

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %103
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** @StrategyControl, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = call i32 @SpinLockAcquire(i32* %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** @StrategyControl, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** @StrategyControl, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = call i32 @SpinLockRelease(i32* %58)
  br label %107

60:                                               ; preds = %48
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** @StrategyControl, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.TYPE_12__* @GetBufferDescriptor(i64 %63)
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %6, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @FREENEXT_NOT_IN_LIST, align 8
  %69 = icmp ne i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @Assert(i32 %70)
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** @StrategyControl, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* @FREENEXT_NOT_IN_LIST, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** @StrategyControl, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 2
  %82 = call i32 @SpinLockRelease(i32* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = call i32 @LockBufHdr(%struct.TYPE_12__* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i64 @BUF_STATE_GET_REFCOUNT(i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %60
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @BUF_STATE_GET_USAGECOUNT(i32 %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %88
  %93 = load i32*, i32** %4, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = call i32 @AddBufferToRing(i32* %96, %struct.TYPE_12__* %97)
  br label %99

99:                                               ; preds = %95, %92
  %100 = load i32, i32* %9, align 4
  %101 = load i32*, i32** %5, align 8
  store i32 %100, i32* %101, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %102, %struct.TYPE_12__** %3, align 8
  br label %156

103:                                              ; preds = %88, %60
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @UnlockBufHdr(%struct.TYPE_12__* %104, i32 %105)
  br label %48

107:                                              ; preds = %56
  br label %108

108:                                              ; preds = %107, %39
  %109 = load i32, i32* @NBuffers, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %152, %108
  %111 = call i64 (...) @ClockSweepTick()
  %112 = call %struct.TYPE_12__* @GetBufferDescriptor(i64 %111)
  store %struct.TYPE_12__* %112, %struct.TYPE_12__** %6, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = call i32 @LockBufHdr(%struct.TYPE_12__* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i64 @BUF_STATE_GET_REFCOUNT(i32 %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %141

118:                                              ; preds = %110
  %119 = load i32, i32* %9, align 4
  %120 = call i64 @BUF_STATE_GET_USAGECOUNT(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load i64, i64* @BUF_USAGECOUNT_ONE, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = sub nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* @NBuffers, align 4
  store i32 %128, i32* %8, align 4
  br label %140

129:                                              ; preds = %118
  %130 = load i32*, i32** %4, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32*, i32** %4, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %135 = call i32 @AddBufferToRing(i32* %133, %struct.TYPE_12__* %134)
  br label %136

136:                                              ; preds = %132, %129
  %137 = load i32, i32* %9, align 4
  %138 = load i32*, i32** %5, align 8
  store i32 %137, i32* %138, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %139, %struct.TYPE_12__** %3, align 8
  br label %156

140:                                              ; preds = %122
  br label %152

141:                                              ; preds = %110
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %8, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 @UnlockBufHdr(%struct.TYPE_12__* %146, i32 %147)
  %149 = load i32, i32* @ERROR, align 4
  %150 = call i32 @elog(i32 %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %151

151:                                              ; preds = %145, %141
  br label %152

152:                                              ; preds = %151, %140
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @UnlockBufHdr(%struct.TYPE_12__* %153, i32 %154)
  br label %110

156:                                              ; preds = %136, %99, %18
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %157
}

declare dso_local %struct.TYPE_12__* @GetBufferFromRing(i32*, i32*) #1

declare dso_local i32 @INT_ACCESS_ONCE(i32) #1

declare dso_local i32 @SetLatch(i32*) #1

declare dso_local i32 @pg_atomic_fetch_add_u32(i32*, i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local %struct.TYPE_12__* @GetBufferDescriptor(i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_12__*) #1

declare dso_local i64 @BUF_STATE_GET_REFCOUNT(i32) #1

declare dso_local i64 @BUF_STATE_GET_USAGECOUNT(i32) #1

declare dso_local i32 @AddBufferToRing(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ClockSweepTick(...) #1

declare dso_local i32 @elog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
