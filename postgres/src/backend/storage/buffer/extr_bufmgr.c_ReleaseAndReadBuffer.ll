; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ReleaseAndReadBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/buffer/extr_bufmgr.c_ReleaseAndReadBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32 }

@MAIN_FORKNUM = common dso_local global i64 0, align 8
@CurrentResourceOwner = common dso_local global i32 0, align 4
@LocalRefCount = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReleaseAndReadBuffer(i32 %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* @MAIN_FORKNUM, align 8
  store i64 %10, i64* %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @BufferIsValid(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %96

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @BufferIsPinned(i32 %15)
  %17 = call i32 @Assert(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @BufferIsLocal(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 0, %22
  %24 = sub nsw i32 %23, 1
  %25 = call %struct.TYPE_11__* @GetLocalBufferDescriptor(i32 %24)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %9, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %21
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @RelFileNodeEquals(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %4, align 4
  br label %100

51:                                               ; preds = %42, %32, %21
  %52 = load i32, i32* @CurrentResourceOwner, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @ResourceOwnerForgetBuffer(i32 %52, i32 %53)
  %55 = load i32*, i32** @LocalRefCount, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 0, %56
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %60, align 4
  br label %95

63:                                               ; preds = %14
  %64 = load i32, i32* %5, align 4
  %65 = sub nsw i32 %64, 1
  %66 = call %struct.TYPE_11__* @GetBufferDescriptor(i32 %65)
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %9, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %63
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @RelFileNodeEquals(i32 %77, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %73
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %8, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %4, align 4
  br label %100

92:                                               ; preds = %83, %73, %63
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = call i32 @UnpinBuffer(%struct.TYPE_11__* %93, i32 1)
  br label %95

95:                                               ; preds = %92, %51
  br label %96

96:                                               ; preds = %95, %3
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @ReadBuffer(%struct.TYPE_10__* %97, i64 %98)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %90, %49
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BufferIsPinned(i32) #1

declare dso_local i64 @BufferIsLocal(i32) #1

declare dso_local %struct.TYPE_11__* @GetLocalBufferDescriptor(i32) #1

declare dso_local i64 @RelFileNodeEquals(i32, i32) #1

declare dso_local i32 @ResourceOwnerForgetBuffer(i32, i32) #1

declare dso_local %struct.TYPE_11__* @GetBufferDescriptor(i32) #1

declare dso_local i32 @UnpinBuffer(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ReadBuffer(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
