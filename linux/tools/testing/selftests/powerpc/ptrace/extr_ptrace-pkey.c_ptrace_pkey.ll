; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-pkey.c_ptrace_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_ptrace-pkey.c_ptrace_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { i32 }

@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ptrace_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_pkey() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.shared_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = load i32, i32* @IPC_PRIVATE, align 4
  %7 = load i32, i32* @IPC_CREAT, align 4
  %8 = or i32 511, %7
  %9 = call i32 @shmget(i32 %6, i32 4, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.shared_info* @shmat(i32 %10, i32* null, i32 0)
  store %struct.shared_info* %11, %struct.shared_info** %2, align 8
  %12 = load %struct.shared_info*, %struct.shared_info** %2, align 8
  %13 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %12, i32 0, i32 0
  %14 = call i32 @init_child_sync(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %1, align 4
  br label %51

19:                                               ; preds = %0
  %20 = call i64 (...) @fork()
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @TEST_FAIL, align 4
  store i32 %25, i32* %4, align 4
  br label %37

26:                                               ; preds = %19
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.shared_info*, %struct.shared_info** %2, align 8
  %31 = call i32 @child(%struct.shared_info* %30)
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %26
  %33 = load %struct.shared_info*, %struct.shared_info** %2, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @parent(%struct.shared_info* %33, i64 %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %29
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.shared_info*, %struct.shared_info** %2, align 8
  %39 = call i32 @shmdt(%struct.shared_info* %38)
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.shared_info*, %struct.shared_info** %2, align 8
  %44 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %43, i32 0, i32 0
  %45 = call i32 @destroy_child_sync(i32* %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @IPC_RMID, align 4
  %48 = call i32 @shmctl(i32 %46, i32 %47, i32* null)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %49, %17
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @shmget(i32, i32, i32) #1

declare dso_local %struct.shared_info* @shmat(i32, i32*, i32) #1

declare dso_local i32 @init_child_sync(i32*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @child(%struct.shared_info*) #1

declare dso_local i32 @parent(%struct.shared_info*, i64) #1

declare dso_local i32 @shmdt(%struct.shared_info*) #1

declare dso_local i32 @destroy_child_sync(i32*) #1

declare dso_local i32 @shmctl(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
