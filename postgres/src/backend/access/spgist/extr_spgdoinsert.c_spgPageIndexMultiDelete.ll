; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgdoinsert.c_spgPageIndexMultiDelete.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgdoinsert.c_spgPageIndexMultiDelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MaxIndexTuplesPerPage = common dso_local global i32 0, align 4
@cmpOffsetNumbers = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to add item of size %u to SPGiST index page\00", align 1
@SPGIST_REDIRECT = common dso_local global i32 0, align 4
@SPGIST_PLACEHOLDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spgPageIndexMultiDelete(i32* %0, i32 %1, i64* %2, i32 %3, i32 %4, i32 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64* %2, i64** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i64 %7, i64* %16, align 8
  %25 = load i32, i32* @MaxIndexTuplesPerPage, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %18, align 8
  %28 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %19, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %20, align 8
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %8
  store i32 1, i32* %22, align 4
  br label %127

32:                                               ; preds = %8
  %33 = load i64*, i64** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 8, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memcpy(i64* %28, i64* %33, i32 %37)
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @cmpOffsetNumbers, align 4
  %44 = call i32 @qsort(i64* %28, i32 %42, i32 8, i32 %43)
  br label %45

45:                                               ; preds = %41, %32
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @PageIndexMultiDelete(i32 %46, i64* %28, i32 %47)
  %49 = load i64*, i64** %11, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %17, align 8
  store i32 0, i32* %21, align 4
  br label %52

52:                                               ; preds = %123, %45
  %53 = load i32, i32* %21, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %126

56:                                               ; preds = %52
  %57 = load i32, i32* %21, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %28, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %23, align 8
  %61 = load i64, i64* %23, align 8
  %62 = load i64, i64* %17, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* %13, align 4
  br label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %14, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %24, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %71 = icmp eq %struct.TYPE_4__* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %24, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %72, %68
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %24, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i64, i64* %16, align 8
  %83 = call %struct.TYPE_4__* @spgFormDeadTuple(i32* %79, i32 %80, i32 %81, i64 %82)
  store %struct.TYPE_4__* %83, %struct.TYPE_4__** %20, align 8
  br label %84

84:                                               ; preds = %78, %72
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %87 = ptrtoint %struct.TYPE_4__* %86 to i32
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %23, align 8
  %92 = call i64 @PageAddItem(i32 %85, i32 %87, i32 %90, i64 %91, i32 0, i32 0)
  %93 = load i64, i64* %23, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load i32, i32* @ERROR, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @elog(i32 %96, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %95, %84
  %102 = load i32, i32* %24, align 4
  %103 = load i32, i32* @SPGIST_REDIRECT, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  %107 = call %struct.TYPE_5__* @SpGistPageGetOpaque(i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %122

111:                                              ; preds = %101
  %112 = load i32, i32* %24, align 4
  %113 = load i32, i32* @SPGIST_PLACEHOLDER, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load i32, i32* %10, align 4
  %117 = call %struct.TYPE_5__* @SpGistPageGetOpaque(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %111
  br label %122

122:                                              ; preds = %121, %105
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %21, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %21, align 4
  br label %52

126:                                              ; preds = %52
  store i32 0, i32* %22, align 4
  br label %127

127:                                              ; preds = %126, %31
  %128 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i32, i32* %22, align 4
  switch i32 %129, label %131 [
    i32 0, label %130
    i32 1, label %130
  ]

130:                                              ; preds = %127, %127
  ret void

131:                                              ; preds = %127
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i32 @qsort(i64*, i32, i32, i32) #2

declare dso_local i32 @PageIndexMultiDelete(i32, i64*, i32) #2

declare dso_local %struct.TYPE_4__* @spgFormDeadTuple(i32*, i32, i32, i64) #2

declare dso_local i64 @PageAddItem(i32, i32, i32, i64, i32, i32) #2

declare dso_local i32 @elog(i32, i8*, i32) #2

declare dso_local %struct.TYPE_5__* @SpGistPageGetOpaque(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
