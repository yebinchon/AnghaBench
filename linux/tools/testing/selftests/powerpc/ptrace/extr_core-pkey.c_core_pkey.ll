; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_core-pkey.c_core_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/ptrace/extr_core-pkey.c_core_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_info = type { i32 }

@IPC_PRIVATE = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"fork() failed\00", align 1
@TEST_FAIL = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @core_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_pkey() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.shared_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = call i32 @setup_core_pattern(i8** %2, i32* %3)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %1, align 4
  br label %67

13:                                               ; preds = %0
  %14 = load i32, i32* @IPC_PRIVATE, align 4
  %15 = load i32, i32* @IPC_CREAT, align 4
  %16 = or i32 511, %15
  %17 = call i32 @shmget(i32 %14, i32 4, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.shared_info* @shmat(i32 %18, i32* null, i32 0)
  store %struct.shared_info* %19, %struct.shared_info** %4, align 8
  %20 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %21 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %20, i32 0, i32 0
  %22 = call i32 @init_child_sync(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %1, align 4
  br label %67

27:                                               ; preds = %13
  %28 = call i64 (...) @fork()
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @TEST_FAIL, align 4
  store i32 %33, i32* %6, align 4
  br label %45

34:                                               ; preds = %27
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %39 = call i32 @child(%struct.shared_info* %38)
  store i32 %39, i32* %6, align 4
  br label %44

40:                                               ; preds = %34
  %41 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @parent(%struct.shared_info* %41, i64 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %37
  br label %45

45:                                               ; preds = %44, %31
  %46 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %47 = call i32 @shmdt(%struct.shared_info* %46)
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = load %struct.shared_info*, %struct.shared_info** %4, align 8
  %52 = getelementptr inbounds %struct.shared_info, %struct.shared_info* %51, i32 0, i32 0
  %53 = call i32 @destroy_child_sync(i32* %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @IPC_RMID, align 4
  %56 = call i32 @shmctl(i32 %54, i32 %55, i32* null)
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i8*, i8** %2, align 8
  %61 = call i32 @write_core_pattern(i8* %60)
  br label %62

62:                                               ; preds = %59, %50
  br label %63

63:                                               ; preds = %62, %45
  %64 = load i8*, i8** %2, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %1, align 4
  br label %67

67:                                               ; preds = %63, %25, %11
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i32 @setup_core_pattern(i8**, i32*) #1

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

declare dso_local i32 @write_core_pattern(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
