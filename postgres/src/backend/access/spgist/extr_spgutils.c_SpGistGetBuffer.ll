; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_SpGistGetBuffer.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_SpGistGetBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@SPGIST_PAGE_CAPACITY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"desired SPGiST tuple size is too big\00", align 1
@SPGIST_DEFAULT_FILLFACTOR = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i64 0, align 8
@SPGIST_LEAF = common dso_local global i32 0, align 4
@SPGIST_NULLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SpGistGetBuffer(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32* @spgGetCache(i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @SPGIST_PAGE_CAPACITY, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ERROR, align 4
  %23 = call i32 @elog(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SPGIST_DEFAULT_FILLFACTOR, align 4
  %27 = call i64 @RelationGetTargetPageFreeSpace(i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @SPGIST_PAGE_CAPACITY, align 4
  %34 = call i32 @Min(i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call %struct.TYPE_3__* @GET_LUP(i32* %35, i32 %36)
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %11, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @InvalidBlockNumber, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %24
  %44 = load i32*, i32** %9, align 8
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @allocNewBuffer(i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %167

48:                                               ; preds = %24
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @SpGistBlockIsFixed(i64 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %162

62:                                               ; preds = %48
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ReadBuffer(i32 %63, i64 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @ConditionalLockBuffer(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @ReleaseBuffer(i32 %72)
  %74 = load i32*, i32** %9, align 8
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @allocNewBuffer(i32 %75, i32 %76)
  store i32 %77, i32* %5, align 4
  br label %167

78:                                               ; preds = %62
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @BufferGetPage(i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i64 @PageIsNew(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @SpGistPageIsDeleted(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %13, align 4
  %90 = call i64 @PageIsEmpty(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %120

92:                                               ; preds = %88, %84, %78
  store i32 0, i32* %14, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i64 @GBUF_REQ_LEAF(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* @SPGIST_LEAF, align 4
  %98 = load i32, i32* %14, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* %7, align 4
  %102 = call i64 @GBUF_REQ_NULLS(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i32, i32* @SPGIST_NULLS, align 4
  %106 = load i32, i32* %14, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %14, align 4
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @SpGistInitBuffer(i32 %109, i32 %110)
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @PageGetExactFreeSpace(i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load i32*, i32** %9, align 8
  store i32 1, i32* %118, align 4
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %5, align 4
  br label %167

120:                                              ; preds = %88
  %121 = load i32, i32* %7, align 4
  %122 = call i64 @GBUF_REQ_LEAF(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @SpGistPageIsLeaf(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %159

128:                                              ; preds = %120
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @SpGistPageIsLeaf(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %159, label %132

132:                                              ; preds = %128, %124
  %133 = load i32, i32* %7, align 4
  %134 = call i64 @GBUF_REQ_NULLS(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @SpGistPageStoresNulls(i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %159

140:                                              ; preds = %132
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @SpGistPageStoresNulls(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %159, label %144

144:                                              ; preds = %140, %136
  %145 = load i32, i32* %13, align 4
  %146 = call i32 @PageGetExactFreeSpace(i32 %145)
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp sge i32 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %144
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %8, align 4
  %153 = sub nsw i32 %151, %152
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load i32*, i32** %9, align 8
  store i32 0, i32* %156, align 4
  %157 = load i32, i32* %12, align 4
  store i32 %157, i32* %5, align 4
  br label %167

158:                                              ; preds = %144
  br label %159

159:                                              ; preds = %158, %140, %136, %128, %124
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @UnlockReleaseBuffer(i32 %160)
  br label %162

162:                                              ; preds = %159, %48
  %163 = load i32*, i32** %9, align 8
  store i32 1, i32* %163, align 4
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @allocNewBuffer(i32 %164, i32 %165)
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %162, %150, %108, %71, %43
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32* @spgGetCache(i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i64 @RelationGetTargetPageFreeSpace(i32, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local %struct.TYPE_3__* @GET_LUP(i32*, i32) #1

declare dso_local i32 @allocNewBuffer(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @SpGistBlockIsFixed(i64) #1

declare dso_local i32 @ReadBuffer(i32, i64) #1

declare dso_local i32 @ConditionalLockBuffer(i32) #1

declare dso_local i32 @ReleaseBuffer(i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i64 @PageIsNew(i32) #1

declare dso_local i64 @SpGistPageIsDeleted(i32) #1

declare dso_local i64 @PageIsEmpty(i32) #1

declare dso_local i64 @GBUF_REQ_LEAF(i32) #1

declare dso_local i64 @GBUF_REQ_NULLS(i32) #1

declare dso_local i32 @SpGistInitBuffer(i32, i32) #1

declare dso_local i32 @PageGetExactFreeSpace(i32) #1

declare dso_local i32 @SpGistPageIsLeaf(i32) #1

declare dso_local i32 @SpGistPageStoresNulls(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
