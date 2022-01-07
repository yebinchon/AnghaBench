; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getNumRoutes.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/iphlpapi/extr_ipstats_reactos.c_getNumRoutes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"called.\0A\00", align 1
@FILE_READ_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"openTcpFile returned 0x%08lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"tdiGetEntityIDSet returned 0x%08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"tdiGetMibForIpEntity returned 0x%08lx, for i = %d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"numRoutes = %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getNumRoutes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__, align 4
  store i32 0, i32* %3, align 4
  %9 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @FILE_READ_DATA, align 4
  %11 = call i32 @openTcpFile(i32* %5, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @NT_SUCCESS(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* %7, align 4
  %17 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i32 0, i32* %1, align 4
  br label %74

18:                                               ; preds = %0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @tdiGetEntityIDSet(i32 %19, i32** %4, i32* %2)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @NT_SUCCESS(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @closeTcpFile(i32 %27)
  store i32 0, i32* %1, align 4
  br label %74

29:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %63, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %66

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i64 @isIpEntity(i32 %35, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %34
  %43 = call i32 @memset(%struct.TYPE_4__* %8, i32 0, i32 4)
  %44 = load i32, i32* %5, align 4
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @tdiGetMibForIpEntity(i32 %44, i32* %48, %struct.TYPE_4__* %8)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @NT_SUCCESS(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i8*, i32, ...) @ERR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %66

57:                                               ; preds = %42
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %34
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %30

66:                                               ; preds = %53, %30
  %67 = load i32, i32* %3, align 4
  %68 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @tdiFreeThingSet(i32* %69)
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @closeTcpFile(i32 %71)
  %73 = load i32, i32* %3, align 4
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %66, %24, %15
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @openTcpFile(i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, i32, ...) #1

declare dso_local i32 @tdiGetEntityIDSet(i32, i32**, i32*) #1

declare dso_local i32 @closeTcpFile(i32) #1

declare dso_local i64 @isIpEntity(i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @tdiGetMibForIpEntity(i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @tdiFreeThingSet(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
