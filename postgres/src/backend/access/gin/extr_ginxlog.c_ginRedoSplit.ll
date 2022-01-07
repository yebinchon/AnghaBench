; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoSplit.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginxlog.c_ginRedoSplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@GIN_INSERT_ISLEAF = common dso_local global i32 0, align 4
@GIN_SPLIT_ROOT = common dso_local global i32 0, align 4
@BLK_RESTORED = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"GIN split record did not contain a full-page image of left page\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"GIN split record did not contain a full-page image of right page\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"GIN split record did not contain a full-page image of root page\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ginRedoSplit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ginRedoSplit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @XLogRecGetData(i32* %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %3, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GIN_INSERT_ISLEAF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GIN_SPLIT_ROOT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @ginRedoClearIncompleteSplit(i32* %29, i32 3)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load i32*, i32** %2, align 8
  %33 = call i64 @XLogReadBufferForRedo(i32* %32, i32 0, i32* %4)
  %34 = load i64, i64* @BLK_RESTORED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @ERROR, align 4
  %38 = call i32 @elog(i32 %37, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32*, i32** %2, align 8
  %41 = call i64 @XLogReadBufferForRedo(i32* %40, i32 1, i32* %5)
  %42 = load i64, i64* @BLK_RESTORED, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 @elog(i32 %45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32*, i32** %2, align 8
  %52 = call i64 @XLogReadBufferForRedo(i32* %51, i32 2, i32* %6)
  %53 = load i64, i64* @BLK_RESTORED, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @ERROR, align 4
  %57 = call i32 @elog(i32 %56, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @UnlockReleaseBuffer(i32 %59)
  br label %61

61:                                               ; preds = %58, %47
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @UnlockReleaseBuffer(i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @UnlockReleaseBuffer(i32 %64)
  ret void
}

declare dso_local i64 @XLogRecGetData(i32*) #1

declare dso_local i32 @ginRedoClearIncompleteSplit(i32*, i32) #1

declare dso_local i64 @XLogReadBufferForRedo(i32*, i32, i32*) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
