; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/2/bl4ckout31/src/extr_kernel.c_user_process1.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/2/bl4ckout31/src/extr_kernel.c_user_process1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_process1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2 x i8], align 1
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = bitcast [2 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %7, i8 0, i64 2, i1 false)
  store i64 1, i64* %4, align 8
  br label %8

8:                                                ; preds = %1, %43
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 49
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load i64, i64* %4, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %4, align 8
  %17 = call i32 @call_sys_priority(i64 %16)
  br label %18

18:                                               ; preds = %14, %8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %40, %18
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %36, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load i8*, i8** %2, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %31, i8* %32, align 1
  %33 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %34 = call i32 @call_sys_write(i8* %33)
  %35 = call i32 @delay(i32 100000)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %23

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %19

43:                                               ; preds = %19
  br label %8
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @call_sys_priority(i64) #2

declare dso_local i32 @call_sys_write(i8*) #2

declare dso_local i32 @delay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
