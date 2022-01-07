; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistbuild.c_gistBufferingFindCorrectParent.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistbuild.c_gistBufferingFindCorrectParent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@InvalidBlockNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"no parent buffer provided of child %d\00", align 1
@GIST_EXCLUSIVE = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@FirstOffsetNumber = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to re-find parent for block %u\00", align 1
@InvalidBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i32, i64*, i64*)* @gistBufferingFindCorrectParent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gistBufferingFindCorrectParent(%struct.TYPE_6__* %0, i64 %1, i32 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_5__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @gistGetParent(%struct.TYPE_6__* %24, i64 %25)
  store i64 %26, i64* %12, align 8
  br label %39

27:                                               ; preds = %5
  %28 = load i64*, i64** %10, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @InvalidBlockNumber, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @ERROR, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @elog(i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %34)
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i64*, i64** %10, align 8
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %36, %23
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @ReadBuffer(i32 %42, i64 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @BufferGetPage(i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @GIST_EXCLUSIVE, align 4
  %49 = call i32 @LockBuffer(i32 %47, i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @gistcheckpage(i32 %52, i32 %53)
  %55 = load i32, i32* %14, align 4
  %56 = call i64 @PageGetMaxOffsetNumber(i32 %55)
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %94

61:                                               ; preds = %39
  %62 = load i64*, i64** %10, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @InvalidBlockNumber, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %94

66:                                               ; preds = %61
  %67 = load i64*, i64** %11, align 8
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @InvalidOffsetNumber, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %66
  %72 = load i64*, i64** %11, align 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %15, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load i32, i32* %14, align 4
  %78 = load i64*, i64** %11, align 8
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @PageGetItemId(i32 %77, i64 %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @PageGetItem(i32 %81, i32 %82)
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %85, %struct.TYPE_5__** %18, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = call i64 @ItemPointerGetBlockNumber(i32* %87)
  %89 = load i64, i64* %8, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %76
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %6, align 4
  br label %127

93:                                               ; preds = %76
  br label %94

94:                                               ; preds = %93, %71, %66, %61, %39
  %95 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %95, i64* %16, align 8
  br label %96

96:                                               ; preds = %119, %94
  %97 = load i64, i64* %16, align 8
  %98 = load i64, i64* %15, align 8
  %99 = icmp sle i64 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %96
  %101 = load i32, i32* %14, align 4
  %102 = load i64, i64* %16, align 8
  %103 = call i32 @PageGetItemId(i32 %101, i64 %102)
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @PageGetItem(i32 %104, i32 %105)
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %108, %struct.TYPE_5__** %20, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = call i64 @ItemPointerGetBlockNumber(i32* %110)
  %112 = load i64, i64* %8, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %100
  %115 = load i64, i64* %16, align 8
  %116 = load i64*, i64** %11, align 8
  store i64 %115, i64* %116, align 8
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %6, align 4
  br label %127

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %16, align 8
  %121 = call i64 @OffsetNumberNext(i64 %120)
  store i64 %121, i64* %16, align 8
  br label %96

122:                                              ; preds = %96
  %123 = load i32, i32* @ERROR, align 4
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @elog(i32 %123, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %124)
  %126 = load i32, i32* @InvalidBuffer, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %122, %114, %91
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i64 @gistGetParent(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @gistcheckpage(i32, i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @PageGetItem(i32, i32) #1

declare dso_local i64 @ItemPointerGetBlockNumber(i32*) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
