; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_deleteIpAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_deleteIpAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_READ_DATA = common dso_local global i32 0, align 4
@FILE_WRITE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@IOCTL_DELETE_IP_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"deleteIpAddress(%lu) returning 0x%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deleteIpAddress(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* @FILE_READ_DATA, align 4
  %8 = load i32, i32* @FILE_WRITE_DATA, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @openTcpFile(i32* %4, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = call i32 @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @NT_SUCCESS(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IOCTL_DELETE_IP_ADDRESS, align 4
  %20 = call i32 @NtDeviceIoControlFile(i32 %18, i32* null, i32* null, i32* null, i32* %6, i32 %19, i32* %3, i32 4, i32* null, i32 0)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @closeTcpFile(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @NT_SUCCESS(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %17
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @openTcpFile(i32*, i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @NtDeviceIoControlFile(i32, i32*, i32*, i32*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @closeTcpFile(i32) #1

declare dso_local i32 @ERR(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
