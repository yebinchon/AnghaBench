; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_r2k_windows.c_ReadKernelMemory.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_r2k_windows.c_ReadKernelMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@gHandleDriver = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"[r2k] ReadKernelMemory: Error can't allocate %i bytes of memory.\0A\00", align 1
@IOCTL_READ_KERNEL_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Driver not initialized.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadKernelMemory(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @memset(i32* %13, float -1.000000e+00, i32 %14)
  %16 = load i64, i64* @gHandleDriver, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 4, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = call i32* @malloc(i32 %23)
  store i32* %24, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %11, align 4
  %28 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %4, align 4
  br label %61

29:                                               ; preds = %18
  %30 = load i32*, i32** %10, align 8
  %31 = bitcast i32* %30 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %12, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* @gHandleDriver, align 8
  %40 = load i32, i32* @IOCTL_READ_KERNEL_MEM, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i64 @DeviceIoControl(i64 %39, i32 %40, i32* %41, i32 %42, i32* %43, i32 %44, i32* %9, i32* null)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %29
  %48 = load i32*, i32** %6, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @memcpy(i32* %48, i32* %49, i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %8, align 4
  br label %54

53:                                               ; preds = %29
  store i32 -1, i32* %8, align 4
  br label %54

54:                                               ; preds = %53, %47
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @free(i32* %55)
  br label %59

57:                                               ; preds = %3
  %58 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %26
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @memset(i32*, float, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i64 @DeviceIoControl(i64, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
