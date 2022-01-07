; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/seccomp/extr_seccomp_bpf.c_tsync_sibling.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/seccomp/extr_seccomp_bpf.c_tsync_sibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsync_sibling = type { i32, i64, i32, i32, i32, i64, i32 }

@__NR_gettid = common dso_local global i32 0, align 4
@PR_SET_SECCOMP = common dso_local global i32 0, align 4
@SECCOMP_MODE_FILTER = common dso_local global i32 0, align 4
@SIBLING_EXIT_FAILURE = common dso_local global i64 0, align 8
@PR_GET_NO_NEW_PRIVS = common dso_local global i32 0, align 4
@SIBLING_EXIT_NEWPRIVS = common dso_local global i64 0, align 8
@SIBLING_EXIT_UNKILLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tsync_sibling(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tsync_sibling*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.tsync_sibling*
  store %struct.tsync_sibling* %7, %struct.tsync_sibling** %5, align 8
  %8 = load i32, i32* @__NR_gettid, align 4
  %9 = call i32 @syscall(i32 %8)
  %10 = load %struct.tsync_sibling*, %struct.tsync_sibling** %5, align 8
  %11 = getelementptr inbounds %struct.tsync_sibling, %struct.tsync_sibling* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 8
  %12 = load %struct.tsync_sibling*, %struct.tsync_sibling** %5, align 8
  %13 = getelementptr inbounds %struct.tsync_sibling, %struct.tsync_sibling* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pthread_mutex_lock(i32 %14)
  %16 = load %struct.tsync_sibling*, %struct.tsync_sibling** %5, align 8
  %17 = getelementptr inbounds %struct.tsync_sibling, %struct.tsync_sibling* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @PR_SET_SECCOMP, align 4
  %22 = load i32, i32* @SECCOMP_MODE_FILTER, align 4
  %23 = load %struct.tsync_sibling*, %struct.tsync_sibling** %5, align 8
  %24 = getelementptr inbounds %struct.tsync_sibling, %struct.tsync_sibling* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @prctl(i32 %21, i32 %22, i32 %25, i32 0, i32 0)
  store i64 %26, i64* %4, align 8
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.tsync_sibling*, %struct.tsync_sibling** %5, align 8
  %29 = getelementptr inbounds %struct.tsync_sibling, %struct.tsync_sibling* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sem_post(i32 %30)
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.tsync_sibling*, %struct.tsync_sibling** %5, align 8
  %36 = getelementptr inbounds %struct.tsync_sibling, %struct.tsync_sibling* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @pthread_mutex_unlock(i32 %37)
  %39 = load i64, i64* @SIBLING_EXIT_FAILURE, align 8
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %2, align 8
  br label %77

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %56, %41
  %43 = load %struct.tsync_sibling*, %struct.tsync_sibling** %5, align 8
  %44 = getelementptr inbounds %struct.tsync_sibling, %struct.tsync_sibling* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.tsync_sibling*, %struct.tsync_sibling** %5, align 8
  %47 = getelementptr inbounds %struct.tsync_sibling, %struct.tsync_sibling* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pthread_cond_wait(i32 %45, i32 %48)
  %50 = load %struct.tsync_sibling*, %struct.tsync_sibling** %5, align 8
  %51 = getelementptr inbounds %struct.tsync_sibling, %struct.tsync_sibling* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 1
  %54 = load %struct.tsync_sibling*, %struct.tsync_sibling** %5, align 8
  %55 = getelementptr inbounds %struct.tsync_sibling, %struct.tsync_sibling* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %42
  %57 = load %struct.tsync_sibling*, %struct.tsync_sibling** %5, align 8
  %58 = getelementptr inbounds %struct.tsync_sibling, %struct.tsync_sibling* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %42, label %61

61:                                               ; preds = %56
  %62 = load %struct.tsync_sibling*, %struct.tsync_sibling** %5, align 8
  %63 = getelementptr inbounds %struct.tsync_sibling, %struct.tsync_sibling* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pthread_mutex_unlock(i32 %64)
  %66 = load i32, i32* @PR_GET_NO_NEW_PRIVS, align 4
  %67 = call i64 @prctl(i32 %66, i32 0, i32 0, i32 0, i32 0)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %4, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %61
  %71 = load i64, i64* @SIBLING_EXIT_NEWPRIVS, align 8
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %2, align 8
  br label %77

73:                                               ; preds = %61
  %74 = call i32 @read(i32 0, i32* null, i32 0)
  %75 = load i64, i64* @SIBLING_EXIT_UNKILLED, align 8
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %2, align 8
  br label %77

77:                                               ; preds = %73, %70, %34
  %78 = load i8*, i8** %2, align 8
  ret i8* %78
}

declare dso_local i32 @syscall(i32) #1

declare dso_local i32 @pthread_mutex_lock(i32) #1

declare dso_local i64 @prctl(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sem_post(i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32) #1

declare dso_local i32 @pthread_cond_wait(i32, i32) #1

declare dso_local i32 @read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
