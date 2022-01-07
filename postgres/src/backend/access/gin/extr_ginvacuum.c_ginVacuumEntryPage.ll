; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginvacuum.c_ginVacuumEntryPage.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginvacuum.c_ginVacuumEntryPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@FirstOffsetNumber = common dso_local global i64 0, align 8
@GinMaxItemSize = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to add item to index page in \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32, i32*, i64*)* @ginVacuumEntryPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ginVacuumEntryPage(%struct.TYPE_4__* %0, i32 %1, i32* %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64* %3, i64** %8, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32* @BufferGetPage(i32 %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i64 @PageGetMaxOffsetNumber(i32* %25)
  store i64 %26, i64* %12, align 8
  %27 = load i32*, i32** %9, align 8
  store i32* %27, i32** %10, align 8
  %28 = load i64*, i64** %8, align 8
  store i64 0, i64* %28, align 8
  %29 = load i64, i64* @FirstOffsetNumber, align 8
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %162, %4
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %165

34:                                               ; preds = %30
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @PageGetItemId(i32* %36, i64 %37)
  %39 = call i64 @PageGetItem(i32* %35, i32 %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %13, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i64 @GinIsPostingTree(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @GinGetDownlink(i32* %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load i64*, i64** %8, align 8
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load i64*, i64** %8, align 8
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  br label %161

54:                                               ; preds = %34
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @GinGetNPosting(i32* %55)
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %160

58:                                               ; preds = %54
  %59 = load i32*, i32** %13, align 8
  %60 = call i64 @GinItupIsCompressed(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32*, i32** %13, align 8
  %64 = call i64 @GinGetPosting(i32* %63)
  %65 = inttoptr i64 %64 to i32*
  %66 = call i32* @ginPostingListDecode(i32* %65, i32* %14)
  store i32* %66, i32** %15, align 8
  store i32 1, i32* %16, align 4
  br label %73

67:                                               ; preds = %58
  %68 = load i32*, i32** %13, align 8
  %69 = call i64 @GinGetPosting(i32* %68)
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %15, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @GinGetNPosting(i32* %71)
  store i32 %72, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = load i32*, i32** %15, align 8
  %76 = load i32, i32* %14, align 4
  %77 = call i32* @ginVacuumItemPointers(%struct.TYPE_4__* %74, i32* %75, i32 %76, i32* %14)
  store i32* %77, i32** %17, align 8
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @pfree(i32* %81)
  br label %83

83:                                               ; preds = %80, %73
  %84 = load i32*, i32** %17, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %159

86:                                               ; preds = %83
  %87 = load i32, i32* %14, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32*, i32** %17, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @GinMaxItemSize, align 4
  %93 = call i32* @ginCompressPostingList(i32* %90, i32 %91, i32 %92, i32* null)
  store i32* %93, i32** %21, align 8
  %94 = load i32*, i32** %21, align 8
  %95 = call i32 @SizeOfGinPostingList(i32* %94)
  store i32 %95, i32* %22, align 4
  br label %97

96:                                               ; preds = %86
  store i32* null, i32** %21, align 8
  store i32 0, i32* %22, align 4
  br label %97

97:                                               ; preds = %96, %89
  %98 = load i32*, i32** %10, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = icmp eq i32* %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i32*, i32** %9, align 8
  %103 = call i32* @PageGetTempPageCopy(i32* %102)
  store i32* %103, i32** %10, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i32 @PageGetItemId(i32* %105, i64 %106)
  %108 = call i64 @PageGetItem(i32* %104, i32 %107)
  %109 = inttoptr i64 %108 to i32*
  store i32* %109, i32** %13, align 8
  br label %110

110:                                              ; preds = %101, %97
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32*, i32** %13, align 8
  %114 = call i64 @gintuple_get_attrnum(i32* %112, i32* %113)
  store i64 %114, i64* %18, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32*, i32** %13, align 8
  %118 = call i32 @gintuple_get_key(i32* %116, i32* %117, i32* %20)
  store i32 %118, i32* %19, align 4
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i64, i64* %18, align 8
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %20, align 4
  %124 = load i32*, i32** %21, align 8
  %125 = bitcast i32* %124 to i8*
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* %14, align 4
  %128 = call i32* @GinFormTuple(i32* %120, i64 %121, i32 %122, i32 %123, i8* %125, i32 %126, i32 %127, i32 1)
  store i32* %128, i32** %13, align 8
  %129 = load i32*, i32** %21, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %110
  %132 = load i32*, i32** %21, align 8
  %133 = call i32 @pfree(i32* %132)
  br label %134

134:                                              ; preds = %131, %110
  %135 = load i32*, i32** %10, align 8
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @PageIndexTupleDelete(i32* %135, i64 %136)
  %138 = load i32*, i32** %10, align 8
  %139 = load i32*, i32** %13, align 8
  %140 = ptrtoint i32* %139 to i32
  %141 = load i32*, i32** %13, align 8
  %142 = call i32 @IndexTupleSize(i32* %141)
  %143 = load i64, i64* %11, align 8
  %144 = call i64 @PageAddItem(i32* %138, i32 %140, i32 %142, i64 %143, i32 0, i32 0)
  %145 = load i64, i64* %11, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %154

147:                                              ; preds = %134
  %148 = load i32, i32* @ERROR, align 4
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @RelationGetRelationName(i32 %151)
  %153 = call i32 @elog(i32 %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %147, %134
  %155 = load i32*, i32** %13, align 8
  %156 = call i32 @pfree(i32* %155)
  %157 = load i32*, i32** %17, align 8
  %158 = call i32 @pfree(i32* %157)
  br label %159

159:                                              ; preds = %154, %83
  br label %160

160:                                              ; preds = %159, %54
  br label %161

161:                                              ; preds = %160, %44
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %11, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %11, align 8
  br label %30

165:                                              ; preds = %30
  %166 = load i32*, i32** %10, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = icmp eq i32* %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %172

170:                                              ; preds = %165
  %171 = load i32*, i32** %10, align 8
  br label %172

172:                                              ; preds = %170, %169
  %173 = phi i32* [ null, %169 ], [ %171, %170 ]
  ret i32* %173
}

declare dso_local i32* @BufferGetPage(i32) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32*) #1

declare dso_local i64 @PageGetItem(i32*, i32) #1

declare dso_local i32 @PageGetItemId(i32*, i64) #1

declare dso_local i64 @GinIsPostingTree(i32*) #1

declare dso_local i32 @GinGetDownlink(i32*) #1

declare dso_local i32 @GinGetNPosting(i32*) #1

declare dso_local i64 @GinItupIsCompressed(i32*) #1

declare dso_local i32* @ginPostingListDecode(i32*, i32*) #1

declare dso_local i64 @GinGetPosting(i32*) #1

declare dso_local i32* @ginVacuumItemPointers(%struct.TYPE_4__*, i32*, i32, i32*) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32* @ginCompressPostingList(i32*, i32, i32, i32*) #1

declare dso_local i32 @SizeOfGinPostingList(i32*) #1

declare dso_local i32* @PageGetTempPageCopy(i32*) #1

declare dso_local i64 @gintuple_get_attrnum(i32*, i32*) #1

declare dso_local i32 @gintuple_get_key(i32*, i32*, i32*) #1

declare dso_local i32* @GinFormTuple(i32*, i64, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @PageIndexTupleDelete(i32*, i64) #1

declare dso_local i64 @PageAddItem(i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @IndexTupleSize(i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @RelationGetRelationName(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
