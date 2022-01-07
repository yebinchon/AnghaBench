; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_kernel.c_kull_m_kernel_ioctl.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_kull_m_kernel.c_kull_m_kernel_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@OPEN_EXISTING = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i32] [i32 67, i32 114, i32 101, i32 97, i32 116, i32 101, i32 70, i32 105, i32 108, i32 101, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kull_m_kernel_ioctl(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @GENERIC_READ, align 4
  %20 = load i32, i32* @GENERIC_WRITE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @OPEN_EXISTING, align 4
  %23 = call i64 @CreateFile(i32 %18, i32 %21, i32 0, i32* null, i32 %22, i32 0, i32* null)
  store i64 %23, i64* %16, align 8
  %24 = load i64, i64* %16, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %7
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i64, i64* %16, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @kull_m_kernel_ioctl_handle(i64 %31, i32 %32, i32 %33, i32 %34, i32* %35, i32 %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i64, i64* %16, align 8
  %40 = call i32 @CloseHandle(i64 %39)
  br label %43

41:                                               ; preds = %26, %7
  %42 = call i32 @PRINT_ERROR_AUTO(i8* bitcast ([11 x i32]* @.str to i8*))
  br label %43

43:                                               ; preds = %41, %30
  %44 = load i32, i32* %15, align 4
  ret i32 %44
}

declare dso_local i64 @CreateFile(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @kull_m_kernel_ioctl_handle(i64, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @PRINT_ERROR_AUTO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
