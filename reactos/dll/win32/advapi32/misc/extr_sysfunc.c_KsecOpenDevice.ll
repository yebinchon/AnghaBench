; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/misc/extr_sysfunc.c_KsecOpenDevice.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/misc/extr_sysfunc.c_KsecOpenDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i32] [i32 92, i32 68, i32 101, i32 118, i32 105, i32 99, i32 101, i32 92, i32 75, i32 115, i32 101, i32 99, i32 68, i32 68, i32 0], align 4
@OBJ_CASE_INSENSITIVE = common dso_local global i32 0, align 4
@FILE_READ_DATA = common dso_local global i32 0, align 4
@SYNCHRONIZE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_DELETE = common dso_local global i32 0, align 4
@FILE_SYNCHRONOUS_IO_NONALERT = common dso_local global i32 0, align 4
@KsecDeviceHandle = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @KsecOpenDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KsecOpenDevice() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @RTL_CONSTANT_STRING(i8* bitcast ([15 x i32]* @.str to i8*))
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* @OBJ_CASE_INSENSITIVE, align 4
  %9 = call i32 @InitializeObjectAttributes(i32* %3, i32* %2, i32 %8, i32* null, i32* null)
  %10 = load i32, i32* @FILE_READ_DATA, align 4
  %11 = load i32, i32* @SYNCHRONIZE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @FILE_SHARE_READ, align 4
  %14 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @FILE_SHARE_DELETE, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FILE_SYNCHRONOUS_IO_NONALERT, align 4
  %19 = call i32 @NtOpenFile(i32* %5, i32 %12, i32* %3, i32* %4, i32 %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @NT_SUCCESS(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %0
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %1, align 4
  br label %34

25:                                               ; preds = %0
  %26 = load i32, i32* %5, align 4
  %27 = call i32* @InterlockedCompareExchangePointer(i32* @KsecDeviceHandle, i32 %26, i32* null)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @NtClose(i32 %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i32, i32* %1, align 4
  ret i32 %35
}

declare dso_local i32 @RTL_CONSTANT_STRING(i8*) #1

declare dso_local i32 @InitializeObjectAttributes(i32*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @NtOpenFile(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32* @InterlockedCompareExchangePointer(i32*, i32, i32*) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
