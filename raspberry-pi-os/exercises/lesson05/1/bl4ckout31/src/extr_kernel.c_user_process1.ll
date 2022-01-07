; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/1/bl4ckout31/src/extr_kernel.c_user_process1.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/1/bl4ckout31/src/extr_kernel.c_user_process1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_process1(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [2 x i8], align 1
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = bitcast [2 x i8]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %5, i8 0, i64 2, i1 false)
  %6 = load i8*, i8** %2, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 49
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @get_daif()
  br label %13

13:                                               ; preds = %11, %1
  br label %14

14:                                               ; preds = %13, %31
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i8*, i8** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %23, i8* %24, align 1
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %26 = call i32 @call_sys_write(i8* %25)
  %27 = call i32 @delay(i32 100000)
  br label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %15

31:                                               ; preds = %15
  br label %14
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_daif(...) #2

declare dso_local i32 @call_sys_write(i8*) #2

declare dso_local i32 @delay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
