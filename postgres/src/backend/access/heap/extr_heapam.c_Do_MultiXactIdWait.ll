; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_Do_MultiXactIdWait.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_Do_MultiXactIdWait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32*)* @Do_MultiXactIdWait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Do_MultiXactIdWait(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  store i32 1, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @HEAP_LOCKED_UPGRADED(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  br label %33

28:                                               ; preds = %8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32 %30)
  %32 = call i32 @GetMultiXactIdMembers(i32 %29, %struct.TYPE_4__** %18, i32 0, i32 %31)
  br label %33

33:                                               ; preds = %28, %27
  %34 = phi i32 [ -1, %27 ], [ %32, %28 ]
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %19, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %102

37:                                               ; preds = %33
  store i32 0, i32* %21, align 4
  br label %38

38:                                               ; preds = %96, %37
  %39 = load i32, i32* %21, align 4
  %40 = load i32, i32* %19, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %99

42:                                               ; preds = %38
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %44 = load i32, i32* %21, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %22, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %50 = load i32, i32* %21, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %23, align 4
  %55 = load i32, i32* %22, align 4
  %56 = call i64 @TransactionIdIsCurrentTransactionId(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %42
  %59 = load i32, i32* %20, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %20, align 4
  br label %96

61:                                               ; preds = %42
  %62 = load i32, i32* %23, align 4
  %63 = call i32 @LOCKMODE_from_mxstatus(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @LOCKMODE_from_mxstatus(i32 %64)
  %66 = call i32 @DoLockModesConflict(i32 %63, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %61
  %69 = load i32*, i32** %16, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %22, align 4
  %73 = call i64 @TransactionIdIsInProgress(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* %20, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %20, align 4
  br label %78

78:                                               ; preds = %75, %71, %68
  br label %96

79:                                               ; preds = %61
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* %22, align 4
  %84 = call i32 @ConditionalXactLockTableWait(i32 %83)
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  br label %99

88:                                               ; preds = %82
  br label %95

89:                                               ; preds = %79
  %90 = load i32, i32* %22, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @XactLockTableWait(i32 %90, i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %88
  br label %96

96:                                               ; preds = %95, %78, %58
  %97 = load i32, i32* %21, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %21, align 4
  br label %38

99:                                               ; preds = %87, %38
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %101 = call i32 @pfree(%struct.TYPE_4__* %100)
  br label %102

102:                                              ; preds = %99, %33
  %103 = load i32*, i32** %16, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %20, align 4
  %107 = load i32*, i32** %16, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %17, align 4
  ret i32 %109
}

declare dso_local i64 @HEAP_LOCKED_UPGRADED(i32) #1

declare dso_local i32 @GetMultiXactIdMembers(i32, %struct.TYPE_4__**, i32, i32) #1

declare dso_local i32 @HEAP_XMAX_IS_LOCKED_ONLY(i32) #1

declare dso_local i64 @TransactionIdIsCurrentTransactionId(i32) #1

declare dso_local i32 @DoLockModesConflict(i32, i32) #1

declare dso_local i32 @LOCKMODE_from_mxstatus(i32) #1

declare dso_local i64 @TransactionIdIsInProgress(i32) #1

declare dso_local i32 @ConditionalXactLockTableWait(i32) #1

declare dso_local i32 @XactLockTableWait(i32, i32, i32, i32) #1

declare dso_local i32 @pfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
