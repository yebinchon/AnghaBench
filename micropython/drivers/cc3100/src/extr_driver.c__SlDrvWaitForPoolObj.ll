; ModuleID = '/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvWaitForPoolObj.c'
source_filename = "/home/carl/AnghaBench/micropython/drivers/cc3100/src/extr_driver.c__SlDrvWaitForPoolObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@MAX_CONCURRENT_ACTIONS = common dso_local global i64 0, align 8
@g_pCB = common dso_local global %struct.TYPE_4__* null, align 8
@SL_MAX_SOCKETS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_SlDrvWaitForPoolObj(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* @MAX_CONCURRENT_ACTIONS, align 8
  store i64 %7, i64* %6, align 8
  %8 = call i32 (...) @_SlDrvProtectionObjLockWaitForever()
  %9 = load i64, i64* @MAX_CONCURRENT_ACTIONS, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* @MAX_CONCURRENT_ACTIONS, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %18, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %14
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %41

37:                                               ; preds = %14
  %38 = load i64, i64* @MAX_CONCURRENT_ACTIONS, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %27
  br label %45

42:                                               ; preds = %2
  %43 = call i32 (...) @_SlDrvProtectionObjUnLock()
  %44 = load i64, i64* %6, align 8
  store i64 %44, i64* %3, align 8
  br label %152

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i64 %46, i64* %52, align 8
  %53 = load i64, i64* @SL_MAX_SOCKETS, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %45
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i64 %57, i64* %63, align 8
  br label %64

64:                                               ; preds = %56, %45
  br label %65

65:                                               ; preds = %95, %64
  %66 = load i64, i64* @SL_MAX_SOCKETS, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = trunc i64 %73 to i32
  %75 = shl i32 1, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %69, %65
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %4, align 8
  %83 = trunc i64 %82 to i32
  %84 = shl i32 1, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load i64, i64* @SL_MAX_SOCKETS, align 8
  %89 = load i64, i64* %5, align 8
  %90 = icmp eq i64 %88, %89
  br label %91

91:                                               ; preds = %87, %78
  %92 = phi i1 [ false, %78 ], [ %90, %87 ]
  br label %93

93:                                               ; preds = %91, %69
  %94 = phi i1 [ true, %69 ], [ %92, %91 ]
  br i1 %94, label %95, label %117

95:                                               ; preds = %93
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i64 %98, i64* %104, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = call i32 (...) @_SlDrvProtectionObjUnLock()
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = call i32 @_SlDrvSyncObjWaitForever(i32* %114)
  %116 = call i32 (...) @_SlDrvProtectionObjLockWaitForever()
  br label %65

117:                                              ; preds = %93
  %118 = load i64, i64* @SL_MAX_SOCKETS, align 8
  %119 = load i64, i64* %5, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load i64, i64* %5, align 8
  %123 = trunc i64 %122 to i32
  %124 = shl i32 1, %123
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %137

129:                                              ; preds = %117
  %130 = load i64, i64* %4, align 8
  %131 = trunc i64 %130 to i32
  %132 = shl i32 1, %131
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %129, %121
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 4
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = load i64, i64* %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  store i64 %140, i64* %146, align 8
  %147 = load i64, i64* %6, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @g_pCB, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  store i64 %147, i64* %149, align 8
  %150 = call i32 (...) @_SlDrvProtectionObjUnLock()
  %151 = load i64, i64* %6, align 8
  store i64 %151, i64* %3, align 8
  br label %152

152:                                              ; preds = %137, %42
  %153 = load i64, i64* %3, align 8
  ret i64 %153
}

declare dso_local i32 @_SlDrvProtectionObjLockWaitForever(...) #1

declare dso_local i32 @_SlDrvProtectionObjUnLock(...) #1

declare dso_local i32 @_SlDrvSyncObjWaitForever(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
