; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mach.c_PpcVideoCopyOffScreenBufferToVRAM.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mach.c_PpcVideoCopyOffScreenBufferToVRAM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@video_mem = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PpcVideoCopyOffScreenBufferToVRAM(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %11 = load i64*, i64** %3, align 8
  store i64* %11, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = call i32 @MachVideoGetDisplaySize(i32* %6, i32* %7, i32* %8)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %66, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %62, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %65

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = mul nsw i32 %23, 2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %25, %26
  %28 = mul nsw i32 %27, 2
  %29 = add nsw i32 %24, %28
  store i32 %29, i32* %10, align 4
  %30 = load i64*, i64** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** @video_mem, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %34, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %22
  %42 = load i64*, i64** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** @video_mem, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %46, i64* %50, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @MachVideoPutChar(i64 %55, i32 0, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %41, %22
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %18

65:                                               ; preds = %18
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %4, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %13

69:                                               ; preds = %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @MachVideoGetDisplaySize(i32*, i32*, i32*) #1

declare dso_local i32 @MachVideoPutChar(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
