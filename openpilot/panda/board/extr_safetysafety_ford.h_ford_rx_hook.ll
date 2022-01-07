; ModuleID = '/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_ford.h_ford_rx_hook.c'
source_filename = "/home/carl/AnghaBench/openpilot/panda/board/extr_safetysafety_ford.h_ford_rx_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ford_moving = common dso_local global i32 0, align 4
@controls_allowed = common dso_local global i32 0, align 4
@ford_brake_prev = common dso_local global i32 0, align 4
@ford_gas_prev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ford_rx_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ford_rx_hook(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @GET_ADDR(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp eq i32 %11, 535
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  store i32 0, i32* @ford_moving, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %29, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %32

17:                                               ; preds = %14
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @GET_BYTE(i32* %18, i32 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @GET_BYTE(i32* %21, i32 %23)
  %25 = and i32 %24, 252
  %26 = or i32 %20, %25
  %27 = load i32, i32* @ford_moving, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* @ford_moving, align 4
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 2
  store i32 %31, i32* %4, align 4
  br label %14

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 131
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @GET_BYTE(i32* %37, i32 1)
  %39 = and i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @GET_BYTE(i32* %40, i32 3)
  %42 = and i32 %41, 48
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 0, i32* @controls_allowed, align 4
  br label %46

46:                                               ; preds = %45, %36
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 1, i32* @controls_allowed, align 4
  br label %50

50:                                               ; preds = %49, %46
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 357
  br i1 %53, label %54, label %69

54:                                               ; preds = %51
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @GET_BYTE(i32* %55, i32 0)
  %57 = and i32 %56, 32
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load i32, i32* @ford_brake_prev, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @ford_moving, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %60
  store i32 0, i32* @controls_allowed, align 4
  br label %67

67:                                               ; preds = %66, %63, %54
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* @ford_brake_prev, align 4
  br label %69

69:                                               ; preds = %67, %51
  %70 = load i32, i32* %3, align 4
  %71 = icmp eq i32 %70, 516
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 @GET_BYTE(i32* %73, i32 0)
  %75 = and i32 %74, 3
  %76 = load i32*, i32** %2, align 8
  %77 = call i32 @GET_BYTE(i32* %76, i32 1)
  %78 = or i32 %75, %77
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load i32, i32* @ford_gas_prev, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %81
  store i32 0, i32* @controls_allowed, align 4
  br label %85

85:                                               ; preds = %84, %81, %72
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* @ford_gas_prev, align 4
  br label %87

87:                                               ; preds = %85, %69
  ret void
}

declare dso_local i32 @GET_ADDR(i32*) #1

declare dso_local i32 @GET_BYTE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
