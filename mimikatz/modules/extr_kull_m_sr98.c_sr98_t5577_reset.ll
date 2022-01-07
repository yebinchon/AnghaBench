; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_sr98.c_sr98_t5577_reset.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_sr98.c_sr98_t5577_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SR98_SUB_IOCTL_T5577_RESET = common dso_local global i32 0, align 4
@SR98_IOCTL_T5577 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i32] [i32 68, i32 97, i32 116, i32 97, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 48, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 41, i32 10, i32 0], align 4
@.str.1 = private unnamed_addr constant [33 x i32] [i32 82, i32 101, i32 99, i32 101, i32 105, i32 118, i32 101, i32 100, i32 32, i32 115, i32 105, i32 122, i32 101, i32 32, i32 105, i32 115, i32 32, i32 110, i32 111, i32 116, i32 32, i32 49, i32 32, i32 40, i32 48, i32 120, i32 37, i32 48, i32 50, i32 120, i32 41, i32 10, i32 0], align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr98_t5577_reset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [5 x i32], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %9 = load i32, i32* @SR98_SUB_IOCTL_T5577_RESET, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds i32, i32* %8, i64 1
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 11
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds i32, i32* %10, i64 1
  %14 = getelementptr inbounds i32, i32* %8, i64 5
  br label %15

15:                                               ; preds = %15, %2
  %16 = phi i32* [ %13, %2 ], [ %17, %15 ]
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = icmp eq i32* %17, %14
  br i1 %18, label %19, label %15

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SR98_IOCTL_T5577, align 4
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %23 = call i64 @sr98_send_receive(i32 %20, i32 %21, i32* %22, i32 20, i32** %6, i32* %7)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PRINT_ERROR(i8* bitcast ([29 x i32]* @.str to i8*), i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %40

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @PRINT_ERROR(i8* bitcast ([33 x i32]* @.str.1 to i8*), i32 %38)
  br label %40

40:                                               ; preds = %37, %36
  br label %41

41:                                               ; preds = %40, %19
  %42 = load i32, i32* @FALSE, align 4
  ret i32 %42
}

declare dso_local i64 @sr98_send_receive(i32, i32, i32*, i32, i32**, i32*) #1

declare dso_local i32 @PRINT_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
