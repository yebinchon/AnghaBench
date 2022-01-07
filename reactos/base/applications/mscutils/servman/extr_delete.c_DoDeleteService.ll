; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_delete.c_DoDeleteService.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mscutils/servman/extr_delete.c_DoDeleteService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SC_MANAGER_ALL_ACCESS = common dso_local global i32 0, align 4
@DELETE = common dso_local global i32 0, align 4
@hInstance = common dso_local global i32 0, align 4
@IDS_DELETE_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @DoDeleteService to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DoDeleteService(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @SC_MANAGER_ALL_ACCESS, align 4
  %11 = call i64 @OpenSCManagerW(i32* null, i32* null, i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @DELETE, align 4
  %22 = call i64 @OpenServiceW(i64 %15, i32 %20, i32 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %14
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @DeleteService(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32, i32* @hInstance, align 4
  %31 = load i32, i32* @IDS_DELETE_SUCCESS, align 4
  %32 = call i64 @AllocAndLoadString(i32* %8, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @DisplayString(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @LocalFree(i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %39, %25
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @CloseServiceHandle(i64 %42)
  br label %44

44:                                               ; preds = %41, %14
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @CloseServiceHandle(i64 %45)
  br label %47

47:                                               ; preds = %44, %2
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local i64 @OpenSCManagerW(i32*, i32*, i32) #1

declare dso_local i64 @OpenServiceW(i64, i32, i32) #1

declare dso_local i64 @DeleteService(i64) #1

declare dso_local i64 @AllocAndLoadString(i32*, i32, i32) #1

declare dso_local i32 @DisplayString(i32) #1

declare dso_local i32 @LocalFree(i32) #1

declare dso_local i32 @CloseServiceHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
