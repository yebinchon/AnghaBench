; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogutils.c_XLogReadBufferForRedoExtended.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_xlogutils.c_XLogReadBufferForRedoExtended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to locate backup block with ID %d\00", align 1
@RBM_ZERO_AND_LOCK = common dso_local global i32 0, align 4
@RBM_ZERO_AND_CLEANUP_LOCK = common dso_local global i32 0, align 4
@BKPBLOCK_WILL_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"block with WILL_INIT flag in WAL record must be zeroed by redo routine\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"block to be initialized in redo routine must be marked with WILL_INIT flag in the WAL record\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to restore block image\00", align 1
@INIT_FORKNUM = common dso_local global i64 0, align 8
@BLK_RESTORED = common dso_local global i32 0, align 4
@BUFFER_LOCK_EXCLUSIVE = common dso_local global i32 0, align 4
@BLK_DONE = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i32 0, align 4
@BLK_NOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @XLogReadBufferForRedoExtended(%struct.TYPE_9__* %0, i64 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %12, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @XLogRecGetBlockTag(%struct.TYPE_9__* %22, i64 %23, i32* %13, i64* %14, i32* %15)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @PANIC, align 4
  %28 = load i64, i64* %8, align 8
  %29 = call i32 (i32, i8*, ...) @elog(i32 %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %26, %5
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @RBM_ZERO_AND_LOCK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @RBM_ZERO_AND_CLEANUP_LOCK, align 4
  %37 = icmp eq i32 %35, %36
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ true, %30 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %17, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BKPBLOCK_WILL_INIT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %18, align 4
  %52 = load i32, i32* %18, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %38
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @PANIC, align 4
  %59 = call i32 (i32, i8*, ...) @elog(i32 %58, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %54, %38
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @PANIC, align 4
  %68 = call i32 (i32, i8*, ...) @elog(i32 %67, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63, %60
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @XLogRecBlockImageApply(%struct.TYPE_9__* %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %124

74:                                               ; preds = %69
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @XLogRecHasBlockImage(%struct.TYPE_9__* %75, i64 %76)
  %78 = call i32 @Assert(i32 %77)
  %79 = load i32, i32* %13, align 4
  %80 = load i64, i64* %14, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* @RBM_ZERO_AND_CLEANUP_LOCK, align 4
  br label %88

86:                                               ; preds = %74
  %87 = load i32, i32* @RBM_ZERO_AND_LOCK, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = call i32 @XLogReadBufferExtended(i32 %79, i64 %80, i32 %81, i32 %89)
  %91 = load i32*, i32** %11, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @BufferGetPage(i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @RestoreBlockImage(%struct.TYPE_9__* %95, i64 %96, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %88
  %101 = load i32, i32* @ERROR, align 4
  %102 = call i32 (i32, i8*, ...) @elog(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %88
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @PageIsNew(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %16, align 4
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @PageSetLSN(i32 %108, i64 %109)
  br label %111

111:                                              ; preds = %107, %103
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @MarkBufferDirty(i32 %113)
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* @INIT_FORKNUM, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %111
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @FlushOneBuffer(i32 %120)
  br label %122

122:                                              ; preds = %118, %111
  %123 = load i32, i32* @BLK_RESTORED, align 4
  store i32 %123, i32* %6, align 4
  br label %169

124:                                              ; preds = %69
  %125 = load i32, i32* %13, align 4
  %126 = load i64, i64* %14, align 8
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @XLogReadBufferExtended(i32 %125, i64 %126, i32 %127, i32 %128)
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @BufferIsValid(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %124
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @RBM_ZERO_AND_LOCK, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* @RBM_ZERO_AND_CLEANUP_LOCK, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %139
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32*, i32** %11, align 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @LockBufferForCleanup(i32 %148)
  br label %155

150:                                              ; preds = %143
  %151 = load i32*, i32** %11, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @BUFFER_LOCK_EXCLUSIVE, align 4
  %154 = call i32 @LockBuffer(i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %146
  br label %156

156:                                              ; preds = %155, %139, %135
  %157 = load i64, i64* %12, align 8
  %158 = load i32*, i32** %11, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @BufferGetPage(i32 %159)
  %161 = call i64 @PageGetLSN(i32 %160)
  %162 = icmp sle i64 %157, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = load i32, i32* @BLK_DONE, align 4
  store i32 %164, i32* %6, align 4
  br label %169

165:                                              ; preds = %156
  %166 = load i32, i32* @BLK_NEEDS_REDO, align 4
  store i32 %166, i32* %6, align 4
  br label %169

167:                                              ; preds = %124
  %168 = load i32, i32* @BLK_NOTFOUND, align 4
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %167, %165, %163, %122
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_9__*, i64, i32*, i64*, i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i64 @XLogRecBlockImageApply(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogRecHasBlockImage(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @XLogReadBufferExtended(i32, i64, i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @RestoreBlockImage(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @PageIsNew(i32) #1

declare dso_local i32 @PageSetLSN(i32, i64) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i32 @FlushOneBuffer(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @LockBufferForCleanup(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i64 @PageGetLSN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
