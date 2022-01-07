; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/3/bl4ckout31/src/extr_kernel.c_user_process.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/3/bl4ckout31/src/extr_kernel.c_user_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"User process started\0A\0D\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Error while allocating stack for process 1\0A\0D\00", align 1
@user_process1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"12345\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Error while clonning process 1\0A\0D\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Error while clonning process 2\0A\0D\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_process() #0 {
  %1 = alloca [30 x i8], align 16
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = bitcast [30 x i8]* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 30, i1 false)
  %5 = getelementptr inbounds [30 x i8], [30 x i8]* %1, i64 0, i64 0
  %6 = call i32 @tfp_sprintf(i8* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = getelementptr inbounds [30 x i8], [30 x i8]* %1, i64 0, i64 0
  %8 = call i32 @call_sys_write(i8* %7)
  %9 = call i64 (...) @call_sys_malloc()
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp ult i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %36

14:                                               ; preds = %0
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @call_sys_clone(i64 ptrtoint (i32* @user_process1 to i64), i64 ptrtoint ([6 x i8]* @.str.2 to i64), i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %36

21:                                               ; preds = %14
  %22 = call i64 (...) @call_sys_malloc()
  store i64 %22, i64* %2, align 8
  %23 = load i64, i64* %2, align 8
  %24 = icmp ult i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %36

27:                                               ; preds = %21
  %28 = load i64, i64* %2, align 8
  %29 = call i32 @call_sys_clone(i64 ptrtoint (i32* @user_process1 to i64), i64 ptrtoint ([5 x i8]* @.str.4 to i64), i64 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %36

34:                                               ; preds = %27
  %35 = call i32 (...) @call_sys_exit()
  br label %36

36:                                               ; preds = %34, %32, %25, %19, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @tfp_sprintf(i8*, i8*) #2

declare dso_local i32 @call_sys_write(i8*) #2

declare dso_local i64 @call_sys_malloc(...) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @call_sys_clone(i64, i64, i64) #2

declare dso_local i32 @call_sys_exit(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
