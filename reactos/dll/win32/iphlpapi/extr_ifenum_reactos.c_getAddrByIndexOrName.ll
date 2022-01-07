; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_getAddrByIndexOrName.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_getAddrByIndexOrName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@FILE_READ_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getAddrByIndexOrName(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @INADDR_ANY, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @FILE_READ_DATA, align 4
  %14 = call i32 @openTcpFile(i32* %8, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @NT_SUCCESS(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @getIPAddrEntryForIf(i32 %19, i8* %20, i32 %21, %struct.TYPE_9__* %7)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @NT_SUCCESS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %50 [
    i32 130, label %28
    i32 129, label %32
    i32 128, label %36
    i32 132, label %40
    i32 131, label %45
  ]

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  br label %50

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %10, align 4
  br label %50

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  br label %50

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  br label %50

45:                                               ; preds = %26
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %26, %45, %40, %36, %32, %28
  br label %51

51:                                               ; preds = %50, %18
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @closeTcpFile(i32 %52)
  br label %54

54:                                               ; preds = %51, %3
  %55 = load i32, i32* %10, align 4
  ret i32 %55
}

declare dso_local i32 @openTcpFile(i32*, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @getIPAddrEntryForIf(i32, i8*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @closeTcpFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
