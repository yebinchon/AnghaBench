; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_latch.c_WaitEventSetWait.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/ipc/extr_latch.c_WaitEventSetWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, i32, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@waiting = common dso_local global i32 0, align 4
@PGINVALID_SOCKET = common dso_local global i32 0, align 4
@WL_LATCH_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WaitEventSetWait(%struct.TYPE_11__* %0, i64 %1, %struct.TYPE_12__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 -1, i64* %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @Assert(i32 %18)
  %20 = load i64, i64* %7, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @INSTR_TIME_SET_CURRENT(i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = icmp sge i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @INT_MAX, align 8
  %30 = icmp sle i64 %28, %29
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i1 [ false, %22 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @Assert(i32 %33)
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %14, align 8
  br label %36

36:                                               ; preds = %31, %5
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @pgstat_report_wait_start(i32 %37)
  store i32 1, i32* @waiting, align 4
  br label %39

39:                                               ; preds = %112, %36
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %113

42:                                               ; preds = %39
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = icmp ne %struct.TYPE_9__* %45, null
  br i1 %46, label %47, label %81

47:                                               ; preds = %42
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %47
  %55 = load i32, i32* @PGINVALID_SOCKET, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @WL_LATCH_SET, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 1
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %113

81:                                               ; preds = %47, %42
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @WaitEventSetWaitBlock(%struct.TYPE_11__* %82, i64 %83, %struct.TYPE_12__* %84, i32 %85)
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %113

90:                                               ; preds = %81
  %91 = load i32, i32* %15, align 4
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %11, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %112

95:                                               ; preds = %92
  %96 = load i64, i64* %7, align 8
  %97 = icmp sge i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @INSTR_TIME_SET_CURRENT(i32 %99)
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %12, align 4
  %103 = call i32 @INSTR_TIME_SUBTRACT(i32 %101, i32 %102)
  %104 = load i64, i64* %7, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i64 @INSTR_TIME_GET_MILLISEC(i32 %105)
  %107 = sub nsw i64 %104, %106
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %14, align 8
  %109 = icmp sle i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %113

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111, %95, %92
  br label %39

113:                                              ; preds = %110, %89, %54, %39
  store i32 0, i32* @waiting, align 4
  %114 = call i32 (...) @pgstat_report_wait_end()
  %115 = load i32, i32* %11, align 4
  ret i32 %115
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @INSTR_TIME_SET_CURRENT(i32) #1

declare dso_local i32 @pgstat_report_wait_start(i32) #1

declare dso_local i32 @WaitEventSetWaitBlock(%struct.TYPE_11__*, i64, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @INSTR_TIME_SUBTRACT(i32, i32) #1

declare dso_local i64 @INSTR_TIME_GET_MILLISEC(i32) #1

declare dso_local i32 @pgstat_report_wait_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
