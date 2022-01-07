; ModuleID = '/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_regsize64.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/anal/p/extr_anal_arm_cs.c_regsize64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@ARM64_REG_S0 = common dso_local global i32 0, align 4
@ARM64_REG_S31 = common dso_local global i32 0, align 4
@ARM64_REG_W0 = common dso_local global i32 0, align 4
@ARM64_REG_W30 = common dso_local global i32 0, align 4
@ARM64_REG_WZR = common dso_local global i32 0, align 4
@ARM64_REG_B0 = common dso_local global i32 0, align 4
@ARM64_REG_B31 = common dso_local global i32 0, align 4
@ARM64_REG_H0 = common dso_local global i32 0, align 4
@ARM64_REG_H31 = common dso_local global i32 0, align 4
@ARM64_REG_Q0 = common dso_local global i32 0, align 4
@ARM64_REG_Q31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @regsize64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regsize64(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ARM64_REG_S0, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @ARM64_REG_S31, align 4
  %24 = icmp ule i32 %22, %23
  br i1 %24, label %37, label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ARM64_REG_W0, align 4
  %28 = icmp uge i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ARM64_REG_W30, align 4
  %32 = icmp ule i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ARM64_REG_WZR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33, %29, %21
  store i32 4, i32* %3, align 4
  br label %66

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ARM64_REG_B0, align 4
  %41 = icmp uge i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ARM64_REG_B31, align 4
  %45 = icmp ule i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %66

47:                                               ; preds = %42, %38
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ARM64_REG_H0, align 4
  %50 = icmp uge i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @ARM64_REG_H31, align 4
  %54 = icmp ule i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 2, i32* %3, align 4
  br label %66

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ARM64_REG_Q0, align 4
  %59 = icmp uge i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ARM64_REG_Q31, align 4
  %63 = icmp ule i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 16, i32* %3, align 4
  br label %66

65:                                               ; preds = %60, %56
  store i32 8, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %55, %46, %37
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
