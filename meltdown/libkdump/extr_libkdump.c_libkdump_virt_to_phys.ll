; ModuleID = '/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_libkdump_virt_to_phys.c'
source_filename = "/home/carl/AnghaBench/meltdown/libkdump/extr_libkdump.c_libkdump_virt_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@libkdump_virt_to_phys.pagemap = internal global i32 -1, align 4
@.str = private unnamed_addr constant [19 x i8] c"/proc/self/pagemap\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @libkdump_virt_to_phys(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @libkdump_virt_to_phys.pagemap, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = call i32 @open(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32 %11, i32* @libkdump_virt_to_phys.pagemap, align 4
  %12 = load i32, i32* @libkdump_virt_to_phys.pagemap, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @EPERM, align 4
  store i32 %15, i32* @errno, align 4
  store i64 0, i64* %2, align 8
  br label %40

16:                                               ; preds = %9
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32, i32* @libkdump_virt_to_phys.pagemap, align 4
  %19 = load i64, i64* %3, align 8
  %20 = udiv i64 %19, 4096
  %21 = mul i64 %20, 8
  %22 = call i32 @pread(i32 %18, i64* %4, i32 8, i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 8
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @EPERM, align 4
  store i32 %26, i32* @errno, align 4
  store i64 0, i64* %2, align 8
  br label %40

27:                                               ; preds = %17
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %28, 18014398509481983
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @EPERM, align 4
  store i32 %33, i32* @errno, align 4
  store i64 0, i64* %2, align 8
  br label %40

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = mul i64 %35, 4096
  %37 = load i64, i64* %3, align 8
  %38 = urem i64 %37, 4096
  %39 = add i64 %36, %38
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %34, %32, %25, %14
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @pread(i32, i64*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
