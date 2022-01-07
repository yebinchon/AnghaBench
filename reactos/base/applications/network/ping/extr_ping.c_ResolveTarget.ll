; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/network/ping/extr_ping.c_ResolveTarget.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/network/ping/extr_ping.c_ResolveTarget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@Family = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@Target = common dso_local global %struct.TYPE_7__* null, align 8
@AI_CANONNAME = common dso_local global i32 0, align 4
@StdOut = common dso_local global i32 0, align 4
@IDS_UNKNOWN_HOST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CanonName = common dso_local global i32 0, align 4
@ResolveAddress = common dso_local global i64 0, align 8
@NI_NAMEREQD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"GetNameInfoW failed: %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ResolveTarget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ResolveTarget(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 @ZeroMemory(%struct.TYPE_6__* %4, i32 8)
  %7 = load i32, i32* @Family, align 4
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @AI_NUMERICHOST, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @GetAddrInfoW(i32 %11, i32* null, %struct.TYPE_6__* %4, %struct.TYPE_7__** @Target)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load i32, i32* @AI_CANONNAME, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @GetAddrInfoW(i32 %18, i32* null, %struct.TYPE_6__* %4, %struct.TYPE_7__** @Target)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i32, i32* @StdOut, align 4
  %24 = load i32, i32* @IDS_UNKNOWN_HOST, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ConResPrintf(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %65

28:                                               ; preds = %15
  %29 = load i32, i32* @CanonName, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Target, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Target, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wcslen(i32 %35)
  %37 = call i32 @wcsncpy(i32 %29, i32 %32, i32 %36)
  br label %60

38:                                               ; preds = %1
  %39 = load i64, i64* @ResolveAddress, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Target, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Target, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CanonName, align 4
  %49 = load i32, i32* @CanonName, align 4
  %50 = call i32 @_countof(i32 %49)
  %51 = load i32, i32* @NI_NAMEREQD, align 4
  %52 = call i32 @GetNameInfoW(i32 %44, i32 %47, i32 %48, i32 %50, i32* null, i32 0, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = call i32 (...) @WSAGetLastError()
  %57 = call i32 @DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %55, %41
  br label %59

59:                                               ; preds = %58, %38
  br label %60

60:                                               ; preds = %59, %28
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Target, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* @Family, align 4
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %60, %22
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @ZeroMemory(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @GetAddrInfoW(i32, i32*, %struct.TYPE_6__*, %struct.TYPE_7__**) #1

declare dso_local i32 @ConResPrintf(i32, i32, i32) #1

declare dso_local i32 @wcsncpy(i32, i32, i32) #1

declare dso_local i32 @wcslen(i32) #1

declare dso_local i32 @GetNameInfoW(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @_countof(i32) #1

declare dso_local i32 @DPRINT(i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
