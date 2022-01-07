; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_DropRelFileNodeBuffers.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_DropRelFileNodeBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32 }

@MyBackendId = common dso_local global i64 0, align 8
@NBuffers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DropRelFileNodeBuffers(i64 %0, i32 %1, i64* %2, i32 %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = bitcast %struct.TYPE_11__* %6 to { i64, i32 }*
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  store i64 %0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  store i32 %1, i32* %16, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64* %4, i64** %9, align 8
  %17 = bitcast %struct.TYPE_11__* %6 to { i64, i32 }*
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @RelFileNodeBackendIsTemp(i64 %19, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MyBackendId, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %48, %29
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @DropRelFileNodeLocalBuffers(i32 %36, i64 %41, i64 %46)
  br label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %30

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51, %24
  br label %127

53:                                               ; preds = %5
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %124, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @NBuffers, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %127

58:                                               ; preds = %54
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.TYPE_12__* @GetBufferDescriptor(i32 %59)
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %12, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @RelFileNodeEquals(i32 %64, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %58
  br label %124

70:                                               ; preds = %58
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %72 = call i32 @LockBufHdr(%struct.TYPE_12__* %71)
  store i32 %72, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %112, %70
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %73
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @RelFileNodeEquals(i32 %81, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %77
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %7, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %90, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %86
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %101, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %110 = call i32 @InvalidateBuffer(%struct.TYPE_12__* %109)
  br label %115

111:                                              ; preds = %97, %86, %77
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %73

115:                                              ; preds = %108, %73
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @UnlockBufHdr(%struct.TYPE_12__* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %69
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %54

127:                                              ; preds = %52, %54
  ret void
}

declare dso_local i64 @RelFileNodeBackendIsTemp(i64, i32) #1

declare dso_local i32 @DropRelFileNodeLocalBuffers(i32, i64, i64) #1

declare dso_local %struct.TYPE_12__* @GetBufferDescriptor(i32) #1

declare dso_local i64 @RelFileNodeEquals(i32, i32) #1

declare dso_local i32 @LockBufHdr(%struct.TYPE_12__*) #1

declare dso_local i32 @InvalidateBuffer(%struct.TYPE_12__*) #1

declare dso_local i32 @UnlockBufHdr(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
