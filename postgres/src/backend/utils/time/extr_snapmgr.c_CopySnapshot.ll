; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_CopySnapshot.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/time/extr_snapmgr.c_CopySnapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_8__*, i64, i32, %struct.TYPE_8__*, i64, i64 }

@InvalidSnapshot = common dso_local global %struct.TYPE_8__* null, align 8
@TopTransactionContext = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*)* @CopySnapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @CopySnapshot(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @InvalidSnapshot, align 8
  %8 = icmp ne %struct.TYPE_8__* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @Assert(i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 64
  %16 = add i64 4, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 64
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %22, %1
  %33 = load i32, i32* @TopTransactionContext, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @MemoryContextAlloc(i32 %33, i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %3, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %39 = call i32 @memcpy(%struct.TYPE_8__* %37, %struct.TYPE_8__* %38, i32 4)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 8
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 7
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %32
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 6
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 6
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memcpy(%struct.TYPE_8__* %57, %struct.TYPE_8__* %60, i32 %66)
  br label %71

68:                                               ; preds = %32
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 6
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %70, align 8
  br label %71

71:                                               ; preds = %68, %50
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %108

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %108

86:                                               ; preds = %81, %76
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = bitcast %struct.TYPE_8__* %87 to i8*
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = bitcast i8* %91 to %struct.TYPE_8__*
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %94, align 8
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 64
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memcpy(%struct.TYPE_8__* %97, %struct.TYPE_8__* %100, i32 %106)
  br label %111

108:                                              ; preds = %81, %71
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %110, align 8
  br label %111

111:                                              ; preds = %108, %86
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %112
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @MemoryContextAlloc(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
