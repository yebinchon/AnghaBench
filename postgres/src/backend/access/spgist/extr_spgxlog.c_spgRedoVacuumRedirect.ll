; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgxlog.c_spgRedoVacuumRedirect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgxlog.c_spgRedoVacuumRedirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i32 }

@InHotStandby = common dso_local global i64 0, align 8
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@SPGIST_REDIRECT = common dso_local global i64 0, align 8
@SPGIST_PLACEHOLDER = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @spgRedoVacuumRedirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spgRedoVacuumRedirect(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = call i8* @XLogRecGetData(%struct.TYPE_11__* %18)
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %6, align 8
  %25 = load i64, i64* @InHotStandby, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @TransactionIdIsValid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = call i32 @XLogRecGetBlockTag(%struct.TYPE_11__* %34, i32 0, i32* %8, i32* null, i32* null)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ResolveRecoveryConflictWithSnapshot(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %33, %27
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %44 = call i64 @XLogReadBufferForRedo(%struct.TYPE_11__* %43, i32 0, i32* %7)
  %45 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %173

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @BufferGetPage(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call %struct.TYPE_12__* @SpGistPageGetOpaque(i32 %50)
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %82, %47
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @PageGetItemId(i32 %60, i32 %65)
  %67 = call i64 @PageGetItem(i32 %59, i32 %66)
  %68 = inttoptr i64 %67 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %12, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SPGIST_REDIRECT, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @Assert(i32 %74)
  %76 = load i64, i64* @SPGIST_PLACEHOLDER, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = call i32 @ItemPointerSetInvalid(i32* %80)
  br label %82

82:                                               ; preds = %58
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %52

85:                                               ; preds = %52
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %88, %91
  %93 = zext i1 %92 to i32
  %94 = call i32 @Assert(i32 %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @InvalidOffsetNumber, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %167

114:                                              ; preds = %85
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @PageGetMaxOffsetNumber(i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 4, %118
  %120 = trunc i64 %119 to i32
  %121 = call i32* @palloc(i32 %120)
  store i32* %121, i32** %14, align 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %11, align 4
  br label %125

125:                                              ; preds = %139, %114
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp sle i32 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = load i32, i32* %11, align 4
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %132, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %131, i64 %137
  store i32 %130, i32* %138, align 4
  br label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %125

142:                                              ; preds = %125
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %143, %146
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp sge i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 @Assert(i32 %154)
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32*, i32** %14, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @PageIndexMultiDelete(i32 %161, i32* %162, i32 %163)
  %165 = load i32*, i32** %14, align 8
  %166 = call i32 @pfree(i32* %165)
  br label %167

167:                                              ; preds = %142, %85
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @PageSetLSN(i32 %168, i32 %169)
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @MarkBufferDirty(i32 %171)
  br label %173

173:                                              ; preds = %167, %42
  %174 = load i32, i32* %7, align 4
  %175 = call i64 @BufferIsValid(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @UnlockReleaseBuffer(i32 %178)
  br label %180

180:                                              ; preds = %177, %173
  ret void
}

declare dso_local i8* @XLogRecGetData(%struct.TYPE_11__*) #1

declare dso_local i64 @TransactionIdIsValid(i32) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_11__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @ResolveRecoveryConflictWithSnapshot(i32, i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local %struct.TYPE_12__* @SpGistPageGetOpaque(i32) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @ItemPointerSetInvalid(i32*) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32* @palloc(i32) #1

declare dso_local i32 @PageIndexMultiDelete(i32, i32*, i32) #1

declare dso_local i32 @pfree(i32*) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
