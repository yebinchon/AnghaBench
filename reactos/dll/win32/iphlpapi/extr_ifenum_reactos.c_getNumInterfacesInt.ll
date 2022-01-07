; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_getNumInterfacesInt.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ifenum_reactos.c_getNumInterfacesInt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FILE_READ_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"getNumInterfaces: failed %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"getNumInterfaces: success: %d %d %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @getNumInterfacesInt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getNumInterfacesInt(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @FILE_READ_DATA, align 4
  %11 = call i32 @openTcpFile(i32* %7, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 @NT_SUCCESS(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16)
  store i32 0, i32* %2, align 4
  br label %72

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @tdiGetEntityIDSet(i32 %19, i32** %6, i32* %4)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @NT_SUCCESS(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @closeTcpFile(i32 %27)
  store i32 0, i32* %2, align 4
  br label %72

29:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %59, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i64 @isInterface(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %34
  %42 = load i64, i64* %3, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load i64, i64* %3, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @isLoopback(i32 %48, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %47, %41
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %47, %44, %34
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %30

62:                                               ; preds = %30
  %63 = load i64, i64* %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @TRACE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @closeTcpFile(i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @tdiFreeThingSet(i32* %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %62, %24, %15
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @openTcpFile(i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @tdiGetEntityIDSet(i32, i32**, i32*) #1

declare dso_local i32 @closeTcpFile(i32) #1

declare dso_local i64 @isInterface(i32*) #1

declare dso_local i32 @isLoopback(i32, i32*) #1

declare dso_local i32 @TRACE(i8*, i64, i32, i32) #1

declare dso_local i32 @tdiFreeThingSet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
