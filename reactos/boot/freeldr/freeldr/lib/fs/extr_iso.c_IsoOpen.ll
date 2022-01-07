; ModuleID = '/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_iso.c_IsoOpen.c'
source_filename = "/home/carl/AnghaBench/reactos/boot/freeldr/freeldr/lib/fs/extr_iso.c_IsoOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OpenReadOnly = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"IsoOpen() FileName = %s\0A\00", align 1
@ESUCCESS = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@TAG_ISO_FILE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @IsoOpen(i32* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @OpenReadOnly, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i64, i64* @EACCES, align 8
  store i64 %16, i64* %4, align 8
  br label %47

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @FsGetDeviceId(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @TRACE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %21)
  %23 = call i32 @RtlZeroMemory(i32* %8, i32 4)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @IsoLookupFile(i32* %24, i32 %25, i32* %8)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @ESUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = load i64, i64* @ENOENT, align 8
  store i64 %31, i64* %4, align 8
  br label %47

32:                                               ; preds = %17
  %33 = load i32, i32* @TAG_ISO_FILE, align 4
  %34 = call i32 @FrLdrTempAlloc(i32 4, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* @ENOMEM, align 8
  store i64 %38, i64* %4, align 8
  br label %47

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @RtlCopyMemory(i32 %40, i32* %8, i32 4)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @FsSetDeviceSpecific(i32 %43, i32 %44)
  %46 = load i64, i64* @ESUCCESS, align 8
  store i64 %46, i64* %4, align 8
  br label %47

47:                                               ; preds = %39, %37, %30, %15
  %48 = load i64, i64* %4, align 8
  ret i64 %48
}

declare dso_local i32 @FsGetDeviceId(i32) #1

declare dso_local i32 @TRACE(i8*, i32*) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i64 @IsoLookupFile(i32*, i32, i32*) #1

declare dso_local i32 @FrLdrTempAlloc(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32, i32*, i32) #1

declare dso_local i32 @FsSetDeviceSpecific(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
