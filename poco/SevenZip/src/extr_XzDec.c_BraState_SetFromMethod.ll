; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_XzDec.c_BraState_SetFromMethod.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_XzDec.c_BraState_SetFromMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* (%struct.TYPE_8__*, i32)* }

@XZ_ID_Delta = common dso_local global i64 0, align 8
@XZ_ID_X86 = common dso_local global i64 0, align 8
@XZ_ID_PPC = common dso_local global i64 0, align 8
@XZ_ID_IA64 = common dso_local global i64 0, align 8
@XZ_ID_ARM = common dso_local global i64 0, align 8
@XZ_ID_ARMT = common dso_local global i64 0, align 8
@XZ_ID_SPARC = common dso_local global i64 0, align 8
@SZ_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i32 0, align 4
@BraState_Free = common dso_local global i32 0, align 4
@BraState_SetProps = common dso_local global i32 0, align 4
@BraState_Init = common dso_local global i32 0, align 4
@BraState_Code = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BraState_SetFromMethod(%struct.TYPE_9__* %0, i64 %1, i32 %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @XZ_ID_Delta, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @XZ_ID_X86, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @XZ_ID_PPC, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @XZ_ID_IA64, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @XZ_ID_ARM, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @XZ_ID_ARMT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @XZ_ID_SPARC, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @SZ_ERROR_UNSUPPORTED, align 4
  store i32 %39, i32* %5, align 4
  br label %75

40:                                               ; preds = %34, %30, %26, %22, %18, %14, %4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %42, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__* (%struct.TYPE_8__*, i32)*, %struct.TYPE_10__* (%struct.TYPE_8__*, i32)** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = call %struct.TYPE_10__* %45(%struct.TYPE_8__* %46, i32 16)
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %10, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = icmp eq %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @SZ_ERROR_MEM, align 4
  store i32 %51, i32* %5, align 4
  br label %75

52:                                               ; preds = %40
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  store %struct.TYPE_10__* %59, %struct.TYPE_10__** %61, align 8
  %62 = load i32, i32* @BraState_Free, align 4
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @BraState_SetProps, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @BraState_Init, align 4
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @BraState_Code, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @SZ_OK, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %52, %50, %38
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
