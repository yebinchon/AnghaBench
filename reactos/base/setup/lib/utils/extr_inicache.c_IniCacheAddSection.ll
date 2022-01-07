; ModuleID = '/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_inicache.c_IniCacheAddSection.c'
source_filename = "/home/carl/AnghaBench/reactos/base/setup/lib/utils/extr_inicache.c_IniCacheAddSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, i64* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_6__* }

@.str = private unnamed_addr constant [19 x i8] c"Invalid parameter\0A\00", align 1
@ProcessHeap = common dso_local global i32 0, align 4
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"RtlAllocateHeap() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_7__*, i32*, i32)* @IniCacheAddSection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @IniCacheAddSection(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %12, %3
  %19 = call i32 @DPRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %104

20:                                               ; preds = %15
  %21 = load i32, i32* @ProcessHeap, align 4
  %22 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %23 = call i64 @RtlAllocateHeap(i32 %21, i32 %22, i32 4)
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %8, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %104

29:                                               ; preds = %20
  %30 = load i32, i32* @ProcessHeap, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = trunc i64 %34 to i32
  %36 = call i64 @RtlAllocateHeap(i32 %30, i32 0, i32 %35)
  %37 = inttoptr i64 %36 to i64*
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i64* %37, i64** %39, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = icmp eq i64* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = call i32 @DPRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ProcessHeap, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = call i32 @RtlFreeHeap(i32 %46, i32 0, %struct.TYPE_6__* %47)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %104

49:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %60, i64* %66, align 8
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %50

70:                                               ; preds = %50
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = icmp eq %struct.TYPE_6__* %79, null
  br i1 %80, label %81, label %88

81:                                               ; preds = %70
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %84, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %87, align 8
  br label %102

88:                                               ; preds = %70
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %93, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store %struct.TYPE_6__* %96, %struct.TYPE_6__** %98, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %101, align 8
  br label %102

102:                                              ; preds = %88, %81
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %103, %struct.TYPE_6__** %4, align 8
  br label %104

104:                                              ; preds = %102, %44, %27, %18
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %105
}

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i64 @RtlAllocateHeap(i32, i32, i32) #1

declare dso_local i32 @RtlFreeHeap(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
