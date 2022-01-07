; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_CpuArch.c_CPU_Is_InOrder.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_CpuArch.c_CPU_Is_InOrder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CPU_Is_InOrder() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 @x86cpuid_CheckAndRead(i32* %2)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @True, align 4
  store i32 %9, i32* %1, align 4
  br label %64

10:                                               ; preds = %0
  %11 = call i32 @x86cpuid_GetFamily(i32* %2)
  store i32 %11, i32* %4, align 4
  %12 = call i32 @x86cpuid_GetModel(i32* %2)
  store i32 %12, i32* %5, align 4
  %13 = call i32 @x86cpuid_GetFirm(i32* %2)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %62 [
    i32 129, label %15
    i32 130, label %29
    i32 128, label %48
  ]

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 6
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 4108
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br label %26

26:                                               ; preds = %24, %15
  %27 = phi i1 [ true, %15 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %1, align 4
  br label %64

29:                                               ; preds = %10
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 5
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 6
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 10
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i1 [ true, %35 ], [ %40, %38 ]
  br label %43

43:                                               ; preds = %41, %32
  %44 = phi i1 [ false, %32 ], [ %42, %41 ]
  br label %45

45:                                               ; preds = %43, %29
  %46 = phi i1 [ true, %29 ], [ %44, %43 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %1, align 4
  br label %64

48:                                               ; preds = %10
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 6
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 6
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 15
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  br label %59

59:                                               ; preds = %57, %48
  %60 = phi i1 [ true, %48 ], [ %58, %57 ]
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %1, align 4
  br label %64

62:                                               ; preds = %10
  %63 = load i32, i32* @True, align 4
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %62, %59, %45, %26, %8
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i32 @x86cpuid_CheckAndRead(i32*) #1

declare dso_local i32 @x86cpuid_GetFamily(i32*) #1

declare dso_local i32 @x86cpuid_GetModel(i32*) #1

declare dso_local i32 @x86cpuid_GetFirm(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
