; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mach.c_PpcDiskReadLogicalSectors.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/arch/powerpc/extr_mach.c_PpcDiskReadLogicalSectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@part_handle = common dso_local global i32 0, align 4
@BootPart = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Could not open any disk devices we know about\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Got partition handle %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Seek to %x failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PpcDiskReadLogicalSectors(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @part_handle, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load i32, i32* @BootPart, align 4
  %15 = call i32 @ofw_open(i32 %14)
  store i32 %15, i32* @part_handle, align 4
  %16 = load i32, i32* @part_handle, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %5, align 4
  br label %51

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %4
  %23 = load i32, i32* @part_handle, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @part_handle, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %5, align 4
  br label %51

29:                                               ; preds = %22
  %30 = load i32, i32* @part_handle, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 25
  %33 = load i32, i32* %7, align 4
  %34 = mul nsw i32 %33, 512
  %35 = call i64 @ofw_seek(i32 %30, i32 %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, 512
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %5, align 4
  br label %51

42:                                               ; preds = %29
  %43 = load i32, i32* @part_handle, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = mul nsw i32 %45, 512
  %47 = call i32 @ofw_read(i32 %43, i32 %44, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %37, %25, %18
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @ofw_open(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @ofw_seek(i32, i32, i32) #1

declare dso_local i32 @ofw_read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
