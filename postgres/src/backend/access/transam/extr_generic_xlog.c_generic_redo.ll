; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_generic_xlog.c_generic_redo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_generic_xlog.c_generic_redo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }

@MAX_GENERIC_XLOG_PAGES = common dso_local global i32 0, align 4
@InvalidBuffer = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_redo(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @MAX_GENERIC_XLOG_PAGES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MAX_GENERIC_XLOG_PAGES, align 4
  %23 = icmp slt i32 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @Assert(i32 %24)
  store i64 0, i64* %6, align 8
  br label %26

26:                                               ; preds = %86, %1
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ule i64 %27, %31
  br i1 %32, label %33, label %89

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @XLogRecHasBlockRef(%struct.TYPE_7__* %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @InvalidBuffer, align 4
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i32, i32* %18, i64 %40
  store i32 %39, i32* %41, align 4
  br label %86

42:                                               ; preds = %33
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i32, i32* %18, i64 %45
  %47 = call i64 @XLogReadBufferForRedo(%struct.TYPE_7__* %43, i64 %44, i32* %46)
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %85

51:                                               ; preds = %42
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i32, i32* %18, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @BufferGetPage(i32 %54)
  store i64 %55, i64* %8, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i8* @XLogRecGetBlockData(%struct.TYPE_7__* %56, i64 %57, i32* %11)
  store i8* %58, i8** %10, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @applyPageRedo(i64 %59, i8* %60, i32 %61)
  %63 = load i64, i64* %8, align 8
  %64 = inttoptr i64 %63 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %9, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %72, %75
  %77 = call i32 @memset(i64 %69, i32 0, i64 %76)
  %78 = load i64, i64* %8, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @PageSetLSN(i64 %78, i32 %79)
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds i32, i32* %18, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @MarkBufferDirty(i32 %83)
  br label %85

85:                                               ; preds = %51, %42
  br label %86

86:                                               ; preds = %85, %38
  %87 = load i64, i64* %6, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %6, align 8
  br label %26

89:                                               ; preds = %26
  store i64 0, i64* %6, align 8
  br label %90

90:                                               ; preds = %109, %89
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = icmp ule i64 %91, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %90
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds i32, i32* %18, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @BufferIsValid(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load i64, i64* %6, align 8
  %105 = getelementptr inbounds i32, i32* %18, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @UnlockReleaseBuffer(i32 %106)
  br label %108

108:                                              ; preds = %103, %97
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %6, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %6, align 8
  br label %90

112:                                              ; preds = %90
  %113 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %113)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Assert(i32) #2

declare dso_local i32 @XLogRecHasBlockRef(%struct.TYPE_7__*, i64) #2

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_7__*, i64, i32*) #2

declare dso_local i64 @BufferGetPage(i32) #2

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_7__*, i64, i32*) #2

declare dso_local i32 @applyPageRedo(i64, i8*, i32) #2

declare dso_local i32 @memset(i64, i32, i64) #2

declare dso_local i32 @PageSetLSN(i64, i32) #2

declare dso_local i32 @MarkBufferDirty(i32) #2

declare dso_local i64 @BufferIsValid(i32) #2

declare dso_local i32 @UnlockReleaseBuffer(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
