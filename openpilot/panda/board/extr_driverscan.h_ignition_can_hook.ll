; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_driverscan.h_ignition_can_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_driverscan.h_ignition_can_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ignition_can = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ignition_can_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @GET_BUS(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @GET_ADDR(i32* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @GET_LEN(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 497
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @GET_BYTE(i32* %21, i32 0)
  %23 = and i32 %22, 32
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* @ignition_can, align 4
  br label %26

26:                                               ; preds = %20, %17, %14
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 840
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @GET_BYTE(i32* %33, i32 0)
  %35 = and i32 %34, 1
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* @ignition_can, align 4
  br label %38

38:                                               ; preds = %32, %29, %26
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 352
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32*, i32** %2, align 8
  %46 = call i64 @GET_BYTES_04(i32* %45)
  %47 = icmp ne i64 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* @ignition_can, align 4
  br label %49

49:                                               ; preds = %44, %41, %38
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 960
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @GET_BYTE(i32* %56, i32 2)
  %58 = and i32 %57, 2
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* @ignition_can, align 4
  br label %61

61:                                               ; preds = %55, %52, %49
  br label %62

62:                                               ; preds = %61, %1
  ret void
}

declare dso_local i32 @GET_BUS(i32*) #1

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_LEN(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

declare dso_local i64 @GET_BYTES_04(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
