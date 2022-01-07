; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_query.c_SetServiceConfig.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_query.c_SetServiceConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SC_MANAGER_LOCK = common dso_local global i32 0, align 4
@SERVICE_CHANGE_CONFIG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SetServiceConfig(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @SC_MANAGER_LOCK, align 4
  %13 = call i64 @OpenSCManagerW(i32* null, i32* null, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %78

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @LockServiceDatabase(i64 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %16
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SERVICE_CHANGE_CONFIG, align 4
  %25 = call i64 @OpenServiceW(i64 %22, i32 %23, i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %21
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %28
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  br label %53

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i64* [ %51, %49 ], [ null, %52 ]
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @ChangeServiceConfigW(i64 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i64* %54, i32 %57, i32 %60, i32 %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %67, %53
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @CloseServiceHandle(i64 %70)
  br label %72

72:                                               ; preds = %69, %21
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @UnlockServiceDatabase(i32 %73)
  br label %75

75:                                               ; preds = %72, %16
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @CloseServiceHandle(i64 %76)
  br label %78

78:                                               ; preds = %75, %3
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = call i32 (...) @GetError()
  br label %83

83:                                               ; preds = %81, %78
  %84 = load i32, i32* %10, align 4
  ret i32 %84
}

declare dso_local i64 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i32 @LockServiceDatabase(i64) #1

declare dso_local i64 @OpenServiceW(i64, i32, i32) #1

declare dso_local i64 @ChangeServiceConfigW(i64, i32, i32, i32, i32, i32, i64*, i32, i32, i32, i32) #1

declare dso_local i32 @CloseServiceHandle(i64) #1

declare dso_local i32 @UnlockServiceDatabase(i32) #1

declare dso_local i32 @GetError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
