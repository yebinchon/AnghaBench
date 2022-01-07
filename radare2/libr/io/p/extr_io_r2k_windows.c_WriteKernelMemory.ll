; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_r2k_windows.c_WriteKernelMemory.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_r2k_windows.c_WriteKernelMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@gHandleDriver = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"[r2k] WriteKernelMemory: Error can't allocate %i bytes of memory.\0A\00", align 1
@IOCTL_WRITE_KERNEL_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"[r2k] WriteKernelMemory: Error IOCTL_WRITE_KERNEL_MEM.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Driver not initialized.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WriteKernelMemory(i32 %0, i32* %1, i32 %2) #0 {
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
  %13 = load i64, i64* @gHandleDriver, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = add i64 4, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32* @malloc(i32 %20)
  store i32* %21, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %11, align 4
  %25 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %4, align 4
  br label %60

26:                                               ; preds = %15
  %27 = load i32*, i32** %10, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %12, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memcpy(i32* %37, i32* %38, i32 %39)
  %41 = load i64, i64* @gHandleDriver, align 8
  %42 = load i32, i32* @IOCTL_WRITE_KERNEL_MEM, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i64 @DeviceIoControl(i64 %41, i32 %42, i32* %43, i32 %44, i32* %45, i32 %46, i32* %9, i32* null)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %26
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %8, align 4
  br label %53

51:                                               ; preds = %26
  %52 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @free(i32* %54)
  br label %58

56:                                               ; preds = %3
  %57 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %23
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @DeviceIoControl(i64, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
