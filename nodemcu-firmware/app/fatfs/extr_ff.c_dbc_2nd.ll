; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_dbc_2nd.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/fatfs/extr_ff.c_dbc_2nd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DbcTbl = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @dbc_2nd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbc_2nd(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64*, i64** @DbcTbl, align 8
  %5 = icmp ne i64* %4, null
  br i1 %5, label %6, label %46

6:                                                ; preds = %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64*, i64** @DbcTbl, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %6
  %13 = load i64, i64* %3, align 8
  %14 = load i64*, i64** @DbcTbl, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %47

19:                                               ; preds = %12
  %20 = load i64, i64* %3, align 8
  %21 = load i64*, i64** @DbcTbl, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i64, i64* %3, align 8
  %27 = load i64*, i64** @DbcTbl, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %47

32:                                               ; preds = %25, %19
  %33 = load i64, i64* %3, align 8
  %34 = load i64*, i64** @DbcTbl, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i64, i64* %3, align 8
  %40 = load i64*, i64** @DbcTbl, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 9
  %42 = load i64, i64* %41, align 8
  %43 = icmp sle i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %47

45:                                               ; preds = %38, %32
  br label %46

46:                                               ; preds = %45, %6, %1
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %44, %31, %18
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
