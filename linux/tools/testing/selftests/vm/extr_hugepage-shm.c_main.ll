; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_hugepage-shm.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/vm/extr_hugepage-shm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LENGTH = common dso_local global i64 0, align 8
@SHM_HUGETLB = common dso_local global i32 0, align 4
@IPC_CREAT = common dso_local global i32 0, align 4
@SHM_R = common dso_local global i32 0, align 4
@SHM_W = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"shmget\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"shmid: 0x%x\0A\00", align 1
@ADDR = common dso_local global i32 0, align 4
@SHMAT_FLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Shared memory attach failure\00", align 1
@IPC_RMID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"shmaddr: %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Starting the writes:\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Starting the Check...\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\0AIndex %lu mismatched\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Done.\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Detach failure\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %5 = load i64, i64* @LENGTH, align 8
  %6 = load i32, i32* @SHM_HUGETLB, align 4
  %7 = load i32, i32* @IPC_CREAT, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SHM_R, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SHM_W, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @shmget(i32 2, i64 %5, i32 %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @exit(i32 1) #3
  unreachable

19:                                               ; preds = %0
  %20 = load i32, i32* %2, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @ADDR, align 4
  %24 = load i32, i32* @SHMAT_FLAGS, align 4
  %25 = call i8* @shmat(i32 %22, i32 %23, i32 %24)
  store i8* %25, i8** %4, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = icmp eq i8* %26, inttoptr (i64 -1 to i8*)
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = call i32 @perror(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @IPC_RMID, align 4
  %32 = call i32 @shmctl(i32 %30, i32 %31, i32* null)
  %33 = call i32 @exit(i32 2) #3
  unreachable

34:                                               ; preds = %19
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  %37 = call i32 @dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %38

38:                                               ; preds = %54, %34
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @LENGTH, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i64, i64* %3, align 8
  %44 = trunc i64 %43 to i8
  %45 = load i8*, i8** %4, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 %44, i8* %47, align 1
  %48 = load i64, i64* %3, align 8
  %49 = urem i64 %48, 1048576
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %42
  %52 = call i32 @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %42
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %3, align 8
  br label %38

57:                                               ; preds = %38
  %58 = call i32 @dprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %59 = call i32 @dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %60

60:                                               ; preds = %79, %57
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @LENGTH, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = load i8*, i8** %4, align 8
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = load i64, i64* %3, align 8
  %71 = trunc i64 %70 to i8
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load i64, i64* %3, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %75)
  %77 = call i32 @exit(i32 3) #3
  unreachable

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %3, align 8
  br label %60

82:                                               ; preds = %60
  %83 = call i32 @dprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %84 = load i8*, i8** %4, align 8
  %85 = call i64 @shmdt(i8* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* @IPC_RMID, align 4
  %91 = call i32 @shmctl(i32 %89, i32 %90, i32* null)
  %92 = call i32 @exit(i32 4) #3
  unreachable

93:                                               ; preds = %82
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @IPC_RMID, align 4
  %96 = call i32 @shmctl(i32 %94, i32 %95, i32* null)
  ret i32 0
}

declare dso_local i32 @shmget(i32, i64, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @shmat(i32, i32, i32) #1

declare dso_local i32 @shmctl(i32, i32, i32*) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i64 @shmdt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
