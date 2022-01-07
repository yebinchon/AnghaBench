; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/1/avenito/src/extr_kernel.c_user_process1.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/exercises/lesson05/1/avenito/src/extr_kernel.c_user_process1.c"
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
  br label %6

6:                                                ; preds = %1, %23
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %20, %6
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 5
  br i1 %9, label %10, label %23

10:                                               ; preds = %7
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %3, i64 0, i64 0
  %18 = call i32 @call_sys_write(i8* %17)
  %19 = call i32 @delay(i32 100000)
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %7

23:                                               ; preds = %7
  br label %6
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @call_sys_write(i8*) #2

declare dso_local i32 @delay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
