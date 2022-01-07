; ModuleID = '/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_benchlib.c_old_mutex_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/deps/w32-pthreads/tests/extr_benchlib.c_old_mutex_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PTW32_OBJECT_AUTO_INIT = common dso_local global i64 0, align 8
@ptw32_try_enter_critical_section = common dso_local global i32* null, align 8
@ptw32_h_kernel32 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @old_mutex_destroy(%struct.TYPE_6__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %7 = icmp eq %struct.TYPE_6__** %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp eq %struct.TYPE_6__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %70

14:                                               ; preds = %8
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i64, i64* @PTW32_OBJECT_AUTO_INIT, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_6__*
  %19 = icmp ne %struct.TYPE_6__* %16, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %5, align 8
  %23 = call i32 @old_mutex_trylock(%struct.TYPE_6__** %5)
  store i32 %23, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %20
  %26 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %26, align 8
  %27 = call i32 @old_mutex_unlock(%struct.TYPE_6__** %5)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @DeleteCriticalSection(i32* %34)
  br label %47

36:                                               ; preds = %25
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @CloseHandle(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @EINVAL, align 4
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i32 [ 0, %42 ], [ %44, %43 ]
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %32
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = call i32 @free(%struct.TYPE_6__* %53)
  br label %58

55:                                               ; preds = %47
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %57 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %3, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %20
  br label %62

60:                                               ; preds = %14
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %59
  %63 = load i32*, i32** @ptw32_try_enter_critical_section, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* @ptw32_h_kernel32, align 8
  %67 = call i32 @FreeLibrary(i64 %66)
  store i64 0, i64* @ptw32_h_kernel32, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %12
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @old_mutex_trylock(%struct.TYPE_6__**) #1

declare dso_local i32 @old_mutex_unlock(%struct.TYPE_6__**) #1

declare dso_local i32 @DeleteCriticalSection(i32*) #1

declare dso_local i64 @CloseHandle(i64) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @FreeLibrary(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
