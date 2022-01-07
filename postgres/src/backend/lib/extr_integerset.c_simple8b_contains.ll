; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/lib/extr_integerset.c_simple8b_contains.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/lib/extr_integerset.c_simple8b_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@simple8b_modes = common dso_local global %struct.TYPE_2__* null, align 8
@EMPTY_CODEWORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @simple8b_contains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple8b_contains(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 60
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @simple8b_modes, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @simple8b_modes, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @EMPTY_CODEWORD, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %79

43:                                               ; preds = %33
  %44 = call i32 @UINT64CONST(i32 1)
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 %44, %45
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %74, %43
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 1, %57
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 1, i32* %4, align 4
  br label %79

69:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %79

70:                                               ; preds = %53
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %49

77:                                               ; preds = %49
  br label %78

78:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %69, %68, %36, %32
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @UINT64CONST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
