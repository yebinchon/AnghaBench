; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_threadtest.c_checklist.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_threadtest.c_checklist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

@done = common dso_local global i32 0, align 4
@print_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"---------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%lu:%lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"[FAILED]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @checklist(%struct.timespec* %0, i32 %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca %struct.timespec*, align 8
  store %struct.timespec* %0, %struct.timespec** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %80, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 1
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %83

14:                                               ; preds = %9
  %15 = load %struct.timespec*, %struct.timespec** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i64 %17
  store %struct.timespec* %18, %struct.timespec** %7, align 8
  %19 = load %struct.timespec*, %struct.timespec** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %19, i64 %22
  store %struct.timespec* %23, %struct.timespec** %8, align 8
  %24 = load %struct.timespec*, %struct.timespec** %8, align 8
  %25 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.timespec*, %struct.timespec** %7, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %79

31:                                               ; preds = %14
  %32 = load %struct.timespec*, %struct.timespec** %8, align 8
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.timespec*, %struct.timespec** %7, align 8
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %31
  store i32 1, i32* @done, align 4
  %40 = call i32 @pthread_mutex_lock(i32* @print_lock)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %73, %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %76

46:                                               ; preds = %42
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %46
  %53 = load %struct.timespec*, %struct.timespec** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.timespec, %struct.timespec* %53, i64 %55
  %57 = getelementptr inbounds %struct.timespec, %struct.timespec* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.timespec*, %struct.timespec** %3, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %59, i64 %61
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %58, i64 %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %52
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %52
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %42

76:                                               ; preds = %42
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %78 = call i32 @pthread_mutex_unlock(i32* @print_lock)
  br label %79

79:                                               ; preds = %76, %31, %14
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %9

83:                                               ; preds = %9
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
