; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_misc.c_PerformChannelConversion.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/dsound_new/extr_misc.c_PerformChannelConversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNIMPLEMENTED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PerformChannelConversion(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %9
  %28 = load i32, i32* @UNIMPLEMENTED, align 4
  %29 = call i32 @ASSERT(i32 0)
  br label %30

30:                                               ; preds = %27, %9
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = sdiv i32 %32, 8
  %34 = mul nsw i32 %31, %33
  store i32 %34, i32* %22, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %16, align 4
  %37 = sdiv i32 %36, 8
  %38 = mul nsw i32 %35, %37
  store i32 %38, i32* %23, align 4
  br label %39

39:                                               ; preds = %72, %30
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %22, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %18, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %18, align 4
  store i32 %46, i32* %20, align 4
  br label %75

47:                                               ; preds = %39
  %48 = load i32, i32* %21, align 4
  %49 = load i32, i32* %23, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* %12, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %21, align 4
  br label %75

55:                                               ; preds = %47
  %56 = load i32*, i32** %17, align 8
  %57 = load i32, i32* %20, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32*, i32** %11, align 8
  %61 = load i32, i32* %21, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %22, align 4
  %65 = call i32 @RtlMoveMemory(i32* %59, i32* %63, i32 %64)
  %66 = load i32, i32* %23, align 4
  %67 = load i32, i32* %21, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %21, align 4
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %20, align 4
  br label %72

72:                                               ; preds = %55
  %73 = load i64, i64* @TRUE, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %39, label %75

75:                                               ; preds = %72, %53, %45
  %76 = load i32, i32* %21, align 4
  %77 = load i32*, i32** %13, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32*, i32** %19, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RtlMoveMemory(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
