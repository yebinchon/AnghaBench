; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistbuild.c_gistProcessItup.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistbuild.c_gistProcessItup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32*, i32* }
%struct.TYPE_13__ = type { i32 }

@InvalidOffsetNumber = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i32 0, align 4
@GIST_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_13__*, i32, i32)* @gistProcessItup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gistProcessItup(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %9, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %10, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %34 = load i32, i32* @InvalidOffsetNumber, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* @InvalidBlockNumber, align 4
  store i32 %35, i32* %18, align 4
  %36 = call i32 (...) @CHECK_FOR_INTERRUPTS()
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %16, align 4
  br label %39

39:                                               ; preds = %103, %4
  %40 = load i32, i32* %16, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = call i64 @LEVEL_HAS_BUFFERS(i32 %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %113

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %16, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %113

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @ReadBuffer(i32 %54, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %59 = call i32 @LockBuffer(i32 %57, i32 %58)
  %60 = load i32, i32* %13, align 4
  %61 = call i64 @BufferGetPage(i32 %60)
  store i64 %61, i64* %22, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i64, i64* %22, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @gistchoose(i32 %62, i64 %63, %struct.TYPE_13__* %64, i32* %65)
  store i32 %66, i32* %23, align 4
  %67 = load i64, i64* %22, align 8
  %68 = load i32, i32* %23, align 4
  %69 = call i32 @PageGetItemId(i64 %67, i32 %68)
  store i32 %69, i32* %19, align 4
  %70 = load i64, i64* %22, align 8
  %71 = load i32, i32* %19, align 4
  %72 = call i64 @PageGetItem(i64 %70, i32 %71)
  %73 = inttoptr i64 %72 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %20, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = call i32 @ItemPointerGetBlockNumber(i32* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %79, label %84

79:                                               ; preds = %53
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @gistMemorizeParent(%struct.TYPE_14__* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %79, %53
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = call %struct.TYPE_13__* @gistgetadjusted(i32 %85, %struct.TYPE_13__* %86, %struct.TYPE_13__* %87, i32* %88)
  store %struct.TYPE_13__* %89, %struct.TYPE_13__** %21, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %91 = icmp ne %struct.TYPE_13__* %90, null
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* @InvalidBlockNumber, align 4
  %98 = load i32, i32* @InvalidOffsetNumber, align 4
  %99 = call i32 @gistbufferinginserttuples(%struct.TYPE_14__* %93, i32 %94, i32 %95, %struct.TYPE_13__** %21, i32 1, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %15, align 4
  br label %103

100:                                              ; preds = %84
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @UnlockReleaseBuffer(i32 %101)
  br label %103

103:                                              ; preds = %100, %92
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %12, align 4
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %23, align 4
  store i32 %106, i32* %17, align 4
  %107 = load i32, i32* %16, align 4
  %108 = icmp sgt i32 %107, 0
  %109 = zext i1 %108 to i32
  %110 = call i32 @Assert(i32 %109)
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %16, align 4
  br label %39

113:                                              ; preds = %52, %48
  %114 = load i32, i32* %16, align 4
  %115 = load i32*, i32** %10, align 8
  %116 = call i64 @LEVEL_HAS_BUFFERS(i32 %114, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %113
  %119 = load i32*, i32** %10, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %16, align 4
  %123 = call i32* @gistGetNodeBuffer(i32* %119, i32* %120, i32 %121, i32 %122)
  store i32* %123, i32** %24, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = load i32*, i32** %24, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %127 = call i32 @gistPushItupToNodeBuffer(i32* %124, i32* %125, %struct.TYPE_13__* %126)
  %128 = load i32*, i32** %24, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = call i64 @BUFFER_OVERFLOWED(i32* %128, i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %118
  store i32 1, i32* %14, align 4
  br label %133

133:                                              ; preds = %132, %118
  br label %152

134:                                              ; preds = %113
  %135 = load i32, i32* %16, align 4
  %136 = icmp eq i32 %135, 0
  %137 = zext i1 %136 to i32
  %138 = call i32 @Assert(i32 %137)
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @ReadBuffer(i32 %139, i32 %140)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %144 = call i32 @LockBuffer(i32 %142, i32 %143)
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* @InvalidOffsetNumber, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %17, align 4
  %151 = call i32 @gistbufferinginserttuples(%struct.TYPE_14__* %145, i32 %146, i32 %147, %struct.TYPE_13__** %6, i32 1, i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %134, %133
  %153 = load i32, i32* %14, align 4
  ret i32 %153
}

declare dso_local i32 @CHECK_FOR_INTERRUPTS(...) #1

declare dso_local i64 @LEVEL_HAS_BUFFERS(i32, i32*) #1

declare dso_local i32 @ReadBuffer(i32, i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @gistchoose(i32, i64, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @PageGetItemId(i64, i32) #1

declare dso_local i64 @PageGetItem(i64, i32) #1

declare dso_local i32 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i32 @gistMemorizeParent(%struct.TYPE_14__*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @gistgetadjusted(i32, %struct.TYPE_13__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @gistbufferinginserttuples(%struct.TYPE_14__*, i32, i32, %struct.TYPE_13__**, i32, i32, i32, i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @gistGetNodeBuffer(i32*, i32*, i32, i32) #1

declare dso_local i32 @gistPushItupToNodeBuffer(i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @BUFFER_OVERFLOWED(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
