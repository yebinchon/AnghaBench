; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_WaitForOlderSnapshots.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/commands/extr_indexcmds.c_WaitForOlderSnapshots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@PROC_IS_AUTOVACUUM = common dso_local global i32 0, align 4
@PROC_IN_VACUUM = common dso_local global i32 0, align 4
@PROGRESS_WAITFOR_TOTAL = common dso_local global i32 0, align 4
@PROGRESS_WAITFOR_CURRENT_PID = common dso_local global i32 0, align 4
@PROGRESS_WAITFOR_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @WaitForOlderSnapshots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WaitForOlderSnapshots(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PROC_IS_AUTOVACUUM, align 4
  %15 = load i32, i32* @PROC_IN_VACUUM, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.TYPE_11__* @GetCurrentVirtualXIDs(i32 %13, i32 1, i32 0, i32 %16, i32* %5)
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %7, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @PROGRESS_WAITFOR_TOTAL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @pgstat_progress_update_param(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %2
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %153, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %156

29:                                               ; preds = %25
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @VirtualTransactionIdIsValid(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %153

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %107

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @PROC_IS_AUTOVACUUM, align 4
  %45 = load i32, i32* @PROC_IN_VACUUM, align 4
  %46 = or i32 %44, %45
  %47 = call %struct.TYPE_11__* @GetCurrentVirtualXIDs(i32 %43, i32 1, i32 0, i32 %46, i32* %9)
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %8, align 8
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %101, %42
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %104

53:                                               ; preds = %49
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @VirtualTransactionIdIsValid(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %101

63:                                               ; preds = %53
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %85, %63
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 %71
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @VirtualTransactionIdEquals(i32 %78, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %68
  br label %88

84:                                               ; preds = %68
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %64

88:                                               ; preds = %83, %64
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @SetInvalidVirtualTransactionId(i32 %98)
  br label %100

100:                                              ; preds = %92, %88
  br label %101

101:                                              ; preds = %100, %62
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %49

104:                                              ; preds = %49
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = call i32 @pfree(%struct.TYPE_11__* %105)
  br label %107

107:                                              ; preds = %104, %39
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @VirtualTransactionIdIsValid(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %107
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call %struct.TYPE_12__* @BackendIdGetProc(i32 %125)
  store %struct.TYPE_12__* %126, %struct.TYPE_12__** %12, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %128 = icmp ne %struct.TYPE_12__* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %119
  %130 = load i32, i32* @PROGRESS_WAITFOR_CURRENT_PID, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @pgstat_progress_update_param(i32 %130, i32 %133)
  br label %135

135:                                              ; preds = %129, %119
  br label %136

136:                                              ; preds = %135, %116
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @VirtualXactLock(i32 %142, i32 1)
  br label %144

144:                                              ; preds = %136, %107
  %145 = load i32, i32* %4, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32, i32* @PROGRESS_WAITFOR_DONE, align 4
  %149 = load i32, i32* %6, align 4
  %150 = add nsw i32 %149, 1
  %151 = call i32 @pgstat_progress_update_param(i32 %148, i32 %150)
  br label %152

152:                                              ; preds = %147, %144
  br label %153

153:                                              ; preds = %152, %38
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %25

156:                                              ; preds = %25
  ret void
}

declare dso_local %struct.TYPE_11__* @GetCurrentVirtualXIDs(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @pgstat_progress_update_param(i32, i32) #1

declare dso_local i64 @VirtualTransactionIdIsValid(i32) #1

declare dso_local i64 @VirtualTransactionIdEquals(i32, i32) #1

declare dso_local i32 @SetInvalidVirtualTransactionId(i32) #1

declare dso_local i32 @pfree(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @BackendIdGetProc(i32) #1

declare dso_local i32 @VirtualXactLock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
