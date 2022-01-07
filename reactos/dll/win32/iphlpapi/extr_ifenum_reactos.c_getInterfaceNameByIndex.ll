; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_getInterfaceNameByIndex.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_getInterfaceNameByIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@FILE_READ_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @getInterfaceNameByIndex(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8* null, i8** %5, align 8
  %7 = load i32, i32* @FILE_READ_DATA, align 4
  %8 = call i32 @openTcpFile(i32* %4, i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @NT_SUCCESS(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @getInterfaceInfoByIndex(i32 %13, i32 %14, %struct.TYPE_7__* %3)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @NT_SUCCESS(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %12
  %20 = call i32 (...) @GetProcessHeap()
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i8* @HeapAlloc(i32 %20, i32 0, i32 %25)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %19
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i8* %30, i32 %34, i32 %38)
  %40 = load i8*, i8** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %29, %19
  br label %48

48:                                               ; preds = %47, %12
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @closeTcpFile(i32 %49)
  br label %51

51:                                               ; preds = %48, %1
  %52 = load i8*, i8** %5, align 8
  ret i8* %52
}

declare dso_local i32 @openTcpFile(i32*, i32) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @getInterfaceInfoByIndex(i32, i32, %struct.TYPE_7__*) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @closeTcpFile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
