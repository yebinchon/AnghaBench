; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-self-wchan.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_proc-self-wchan.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"/proc/self/wchan\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [64 x i8], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @O_RDONLY, align 4
  %5 = call i32 @open(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i64, i64* @errno, align 8
  %10 = load i64, i64* @ENOENT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 4, i32* %1, align 4
  br label %28

13:                                               ; preds = %8
  store i32 1, i32* %1, align 4
  br label %28

14:                                               ; preds = %0
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %15, align 16
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %18 = call i32 @read(i32 %16, i8* %17, i32 64)
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 1, i32* %1, align 4
  br label %28

21:                                               ; preds = %14
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %2, i64 0, i64 0
  %23 = load i8, i8* %22, align 16
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 48
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %1, align 4
  br label %28

27:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %28

28:                                               ; preds = %27, %26, %20, %13, %12
  %29 = load i32, i32* %1, align 4
  ret i32 %29
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
