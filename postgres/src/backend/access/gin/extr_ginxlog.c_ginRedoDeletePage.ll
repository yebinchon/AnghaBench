; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoDeletePage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoDeletePage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@GIN_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @ginRedoDeletePage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ginRedoDeletePage(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = call i64 @XLogRecGetData(%struct.TYPE_8__* %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %4, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = call i64 @XLogReadBufferForRedo(%struct.TYPE_8__* %15, i32 2, i32* %7)
  %17 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @BufferGetPage(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @GinPageIsData(i32 %22)
  %24 = call i32 @Assert(i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.TYPE_9__* @GinPageGetOpaque(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @PageSetLSN(i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @MarkBufferDirty(i32 %34)
  br label %36

36:                                               ; preds = %19, %1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %38 = call i64 @XLogReadBufferForRedo(%struct.TYPE_8__* %37, i32 0, i32* %5)
  %39 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @BufferGetPage(i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @GinPageIsData(i32 %44)
  %46 = call i32 @Assert(i32 %45)
  %47 = load i32, i32* @GIN_DELETED, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call %struct.TYPE_9__* @GinPageGetOpaque(i32 %48)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @GinPageSetDeleteXid(i32 %51, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @PageSetLSN(i32 %56, i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @MarkBufferDirty(i32 %59)
  br label %61

61:                                               ; preds = %41, %36
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %63 = call i64 @XLogReadBufferForRedo(%struct.TYPE_8__* %62, i32 1, i32* %6)
  %64 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @BufferGetPage(i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @GinPageIsData(i32 %69)
  %71 = call i32 @Assert(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @GinPageIsLeaf(i32 %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @GinPageDeletePostingItem(i32 %78, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @PageSetLSN(i32 %83, i32 %84)
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @MarkBufferDirty(i32 %86)
  br label %88

88:                                               ; preds = %66, %61
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @BufferIsValid(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @UnlockReleaseBuffer(i32 %93)
  br label %95

95:                                               ; preds = %92, %88
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @BufferIsValid(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @UnlockReleaseBuffer(i32 %100)
  br label %102

102:                                              ; preds = %99, %95
  %103 = load i32, i32* %5, align 4
  %104 = call i64 @BufferIsValid(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @UnlockReleaseBuffer(i32 %107)
  br label %109

109:                                              ; preds = %106, %102
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_8__*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GinPageIsData(i32) #1

declare dso_local %struct.TYPE_9__* @GinPageGetOpaque(i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @GinPageSetDeleteXid(i32, i32) #1

declare dso_local i32 @GinPageIsLeaf(i32) #1

declare dso_local i32 @GinPageDeletePostingItem(i32, i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
