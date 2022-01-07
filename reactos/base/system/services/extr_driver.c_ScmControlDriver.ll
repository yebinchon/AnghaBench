; ModuleID = '/home/carl/AnghaBench/reactos/base/system/services/extr_driver.c_ScmControlDriver.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/services/extr_driver.c_ScmControlDriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"ScmControlDriver() called\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@SERVICE_RUNNING = common dso_local global i32 0, align 4
@ERROR_INVALID_SERVICE_CONTROL = common dso_local global i32 0, align 4
@SERVICE_STOP_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ScmControlDriver() done (Erorr: %lu)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScmControlDriver(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %49 [
    i32 128, label %10
    i32 129, label %45
  ]

10:                                               ; preds = %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @ScmGetDriverStatus(%struct.TYPE_7__* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ERROR_SUCCESS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %52

18:                                               ; preds = %10
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SERVICE_RUNNING, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @ERROR_INVALID_SERVICE_CONTROL, align 4
  store i32 %26, i32* %7, align 4
  br label %52

27:                                               ; preds = %18
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = call i32 @ScmUnloadDriver(%struct.TYPE_7__* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ERROR_INVALID_SERVICE_CONTROL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %52

37:                                               ; preds = %27
  %38 = load i32, i32* @SERVICE_STOP_PENDING, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ScmGetDriverStatus(%struct.TYPE_7__* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %51

45:                                               ; preds = %3
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ScmGetDriverStatus(%struct.TYPE_7__* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %51

49:                                               ; preds = %3
  %50 = load i32, i32* @ERROR_INVALID_SERVICE_CONTROL, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %45, %37
  br label %52

52:                                               ; preds = %51, %33, %25, %17
  %53 = load i32, i32* %7, align 4
  %54 = call i32 (i8*, ...) @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @DPRINT(i8*, ...) #1

declare dso_local i32 @ScmGetDriverStatus(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ScmUnloadDriver(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
