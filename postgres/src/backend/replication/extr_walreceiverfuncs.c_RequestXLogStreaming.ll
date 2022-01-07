; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiverfuncs.c_RequestXLogStreaming.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/extr_walreceiverfuncs.c_RequestXLogStreaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i8*, i64, i64, i32, i32*, i64, i64, i64, i32 }

@WalRcv = common dso_local global %struct.TYPE_3__* null, align 8
@wal_segment_size = common dso_local global i32 0, align 4
@WALRCV_STOPPED = common dso_local global i64 0, align 8
@WALRCV_WAITING = common dso_local global i64 0, align 8
@MAXCONNINFO = common dso_local global i32 0, align 4
@NAMEDATALEN = common dso_local global i32 0, align 4
@WALRCV_STARTING = common dso_local global i64 0, align 8
@WALRCV_RESTARTING = common dso_local global i64 0, align 8
@PMSIGNAL_START_WALRECEIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RequestXLogStreaming(i64 %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @WalRcv, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = call i32 @time(i32* null)
  store i32 %14, i32* %11, align 4
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @wal_segment_size, align 4
  %17 = call i64 @XLogSegmentOffset(i64 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* @wal_segment_size, align 4
  %22 = call i64 @XLogSegmentOffset(i64 %20, i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = sub nsw i64 %23, %22
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %19, %4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = call i32 @SpinLockAcquire(i32* %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WALRCV_STOPPED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WALRCV_WAITING, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %34, %25
  %41 = phi i1 [ true, %25 ], [ %39, %34 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @Assert(i32 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* @MAXCONNINFO, align 4
  %52 = call i32 @strlcpy(i8* %49, i8* %50, i32 %51)
  br label %58

53:                                               ; preds = %40
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %53, %46
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* @NAMEDATALEN, align 4
  %67 = call i32 @strlcpy(i8* %64, i8* %65, i32 %66)
  br label %73

68:                                               ; preds = %58
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  store i8 0, i8* %72, align 1
  br label %73

73:                                               ; preds = %68, %61
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @WALRCV_STOPPED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  store i32 1, i32* %10, align 4
  %80 = load i64, i64* @WALRCV_STARTING, align 8
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %87

83:                                               ; preds = %73
  %84 = load i64, i64* @WALRCV_RESTARTING, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %87
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95, %87
  %102 = load i64, i64* %6, align 8
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 9
  store i64 %102, i64* %104, align 8
  %105 = load i64, i64* %5, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 4
  store i64 %105, i64* %107, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 8
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %101, %95
  %112 = load i64, i64* %6, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  store i64 %112, i64* %114, align 8
  %115 = load i64, i64* %5, align 8
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 7
  store i64 %115, i64* %117, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %12, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 5
  %123 = call i32 @SpinLockRelease(i32* %122)
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %111
  %127 = load i32, i32* @PMSIGNAL_START_WALRECEIVER, align 4
  %128 = call i32 @SendPostmasterSignal(i32 %127)
  br label %136

129:                                              ; preds = %111
  %130 = load i32*, i32** %12, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32*, i32** %12, align 8
  %134 = call i32 @SetLatch(i32* %133)
  br label %135

135:                                              ; preds = %132, %129
  br label %136

136:                                              ; preds = %135, %126
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local i64 @XLogSegmentOffset(i64, i32) #1

declare dso_local i32 @SpinLockAcquire(i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @SpinLockRelease(i32*) #1

declare dso_local i32 @SendPostmasterSignal(i32) #1

declare dso_local i32 @SetLatch(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
