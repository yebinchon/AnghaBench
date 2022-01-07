; ModuleID = '/home/carl/AnghaBench/reactos/base/system/diskpart/extr_partlist.c_GetDriverName.c'
source_filename = "/home/carl/AnghaBench/reactos/base/system/diskpart/extr_partlist.c_GetDriverName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32 }
%struct.TYPE_6__ = type { i8*, i32*, i32 }

@.str = private unnamed_addr constant [20 x i32] [i32 92, i32 83, i32 99, i32 115, i32 105, i32 92, i32 83, i32 99, i32 115, i32 105, i32 32, i32 80, i32 111, i32 114, i32 116, i32 32, i32 37, i32 108, i32 117, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i32] [i32 68, i32 114, i32 105, i32 118, i32 101, i32 114, i32 0], align 4
@RTL_QUERY_REGISTRY_DIRECT = common dso_local global i32 0, align 4
@RTL_REGISTRY_DEVICEMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"RtlQueryRegistryValues() failed (Status %lx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @GetDriverName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetDriverName(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca [2 x %struct.TYPE_6__], align 16
  %5 = alloca [32 x i32], align 16
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = call i32 @RtlInitUnicodeString(i32* %8, i32* null)
  %10 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @swprintf(i32* %10, i8* bitcast ([20 x i32]* @.str to i8*), i8* %13)
  %15 = bitcast [2 x %struct.TYPE_6__]* %4 to %struct.TYPE_6__**
  %16 = call i32 @RtlZeroMemory(%struct.TYPE_6__** %15, i32 48)
  %17 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i8* bitcast ([7 x i32]* @.str.1 to i8*), i8** %18, align 16
  %19 = load i32, i32* @RTL_QUERY_REGISTRY_DIRECT, align 4
  %20 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load i32, i32* @RTL_REGISTRY_DEVICEMAP, align 4
  %27 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %28 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %4, i64 0, i64 0
  %29 = call i32 @RtlQueryRegistryValues(i32 %26, i32* %27, %struct.TYPE_6__* %28, i32* null, i32* null)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @NT_SUCCESS(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @DPRINT1(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %1
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @RtlInitUnicodeString(i32*, i32*) #1

declare dso_local i32 @swprintf(i32*, i8*, i8*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_6__**, i32) #1

declare dso_local i32 @RtlQueryRegistryValues(i32, i32*, %struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @DPRINT1(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
