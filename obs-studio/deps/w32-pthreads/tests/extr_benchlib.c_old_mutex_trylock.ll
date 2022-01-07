; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_benchlib.c_old_mutex_trylock.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_benchlib.c_old_mutex_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTW32_OBJECT_AUTO_INIT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@WAIT_OBJECT_0 = common dso_local global i64 0, align 8
@WAIT_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @old_mutex_trylock(%struct.TYPE_3__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %8 = icmp eq %struct.TYPE_3__** %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %9
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i64, i64* @PTW32_OBJECT_AUTO_INIT, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_3__*
  %20 = icmp eq %struct.TYPE_3__* %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %15
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %3, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %23
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i64 @ptw32_try_enter_critical_section(i32* %35)
  %37 = load i64, i64* @TRUE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EBUSY, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %39, %33
  br label %61

42:                                               ; preds = %28
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @WaitForSingleObject(i64 %45, i32 0)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @WAIT_OBJECT_0, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %42
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @WAIT_TIMEOUT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @EBUSY, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @EINVAL, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %42
  br label %61

61:                                               ; preds = %60, %41
  br label %62

62:                                               ; preds = %61, %23
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %62, %13
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @ptw32_try_enter_critical_section(i32*) #1

declare dso_local i64 @WaitForSingleObject(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
