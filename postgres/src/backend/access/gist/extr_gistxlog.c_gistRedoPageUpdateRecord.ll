; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistRedoPageUpdateRecord.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistxlog.c_gistRedoPageUpdateRecord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"failed to add item to GiST index page, size %d bytes\00", align 1
@FirstOffsetNumber = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @gistRedoPageUpdateRecord to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gistRedoPageUpdateRecord(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %3, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = call i64 @XLogRecGetData(%struct.TYPE_10__* %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %4, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = call i64 @XLogReadBufferForRedo(%struct.TYPE_10__* %25, i32 0, i32* %5)
  %27 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %181

29:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = call i8* @XLogRecGetBlockData(%struct.TYPE_10__* %30, i32 0, i32* %9)
  store i8* %31, i8** %7, align 8
  store i8* %31, i8** %8, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @BufferGetPage(i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %81

38:                                               ; preds = %29
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %81

43:                                               ; preds = %38
  %44 = load i8*, i8** %8, align 8
  %45 = bitcast i8* %44 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 8
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = ptrtoint i8* %49 to i64
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @IndexTupleSize(i64 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @PageIndexTupleOverwrite(i64 %53, i64 %54, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %43
  %61 = load i32, i32* @ERROR, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @elog(i32 %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %43
  %65 = load i32, i32* %13, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %8, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp eq i64 %73, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @Assert(i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %110

81:                                               ; preds = %38, %29
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %81
  %87 = load i8*, i8** %8, align 8
  %88 = bitcast i8* %87 to i64*
  store i64* %88, i64** %14, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 8, %92
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 %93
  store i8* %95, i8** %8, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64*, i64** %14, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @PageIndexMultiDelete(i64 %96, i64* %97, i32 %100)
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @GistPageIsLeaf(i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %86
  %106 = load i64, i64* %6, align 8
  %107 = call i32 @GistMarkTuplesDeleted(i64 %106)
  br label %108

108:                                              ; preds = %105, %86
  br label %109

109:                                              ; preds = %108, %81
  br label %110

110:                                              ; preds = %109, %64
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %119, label %168

119:                                              ; preds = %110
  %120 = load i64, i64* %6, align 8
  %121 = call i64 @PageIsEmpty(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i64, i64* @FirstOffsetNumber, align 8
  br label %129

125:                                              ; preds = %119
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @PageGetMaxOffsetNumber(i64 %126)
  %128 = call i64 @OffsetNumberNext(i32 %127)
  br label %129

129:                                              ; preds = %125, %123
  %130 = phi i64 [ %124, %123 ], [ %128, %125 ]
  store i64 %130, i64* %15, align 8
  br label %131

131:                                              ; preds = %162, %129
  %132 = load i8*, i8** %8, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = ptrtoint i8* %132 to i64
  %135 = ptrtoint i8* %133 to i64
  %136 = sub i64 %134, %135
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = icmp slt i64 %136, %138
  br i1 %139, label %140, label %167

140:                                              ; preds = %131
  %141 = load i8*, i8** %8, align 8
  %142 = ptrtoint i8* %141 to i64
  store i64 %142, i64* %16, align 8
  %143 = load i64, i64* %16, align 8
  %144 = call i32 @IndexTupleSize(i64 %143)
  store i32 %144, i32* %17, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i8*, i8** %8, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %8, align 8
  %149 = load i64, i64* %6, align 8
  %150 = load i64, i64* %16, align 8
  %151 = trunc i64 %150 to i32
  %152 = load i32, i32* %17, align 4
  %153 = load i64, i64* %15, align 8
  %154 = call i64 @PageAddItem(i64 %149, i32 %151, i32 %152, i64 %153, i32 0, i32 0)
  store i64 %154, i64* %18, align 8
  %155 = load i64, i64* %18, align 8
  %156 = load i64, i64* @InvalidOffsetNumber, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %140
  %159 = load i32, i32* @ERROR, align 4
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @elog(i32 %159, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %158, %140
  %163 = load i64, i64* %15, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %15, align 8
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %131

167:                                              ; preds = %131
  br label %168

168:                                              ; preds = %167, %110
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %169, %172
  %174 = zext i1 %173 to i32
  %175 = call i32 @Assert(i32 %174)
  %176 = load i64, i64* %6, align 8
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @PageSetLSN(i64 %176, i32 %177)
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @MarkBufferDirty(i32 %179)
  br label %181

181:                                              ; preds = %168, %1
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %183 = call i64 @XLogRecHasBlockRef(%struct.TYPE_10__* %182, i32 1)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %187 = call i32 @gistRedoClearFollowRight(%struct.TYPE_10__* %186, i32 1)
  br label %188

188:                                              ; preds = %185, %181
  %189 = load i32, i32* %5, align 4
  %190 = call i64 @BufferIsValid(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @UnlockReleaseBuffer(i32 %193)
  br label %195

195:                                              ; preds = %192, %188
  ret void
}

declare dso_local i64 @XLogRecGetData(%struct.TYPE_10__*) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i8* @XLogRecGetBlockData(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i64 @BufferGetPage(i32) #1

declare dso_local i32 @IndexTupleSize(i64) #1

declare dso_local i32 @PageIndexTupleOverwrite(i64, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PageIndexMultiDelete(i64, i64*, i32) #1

declare dso_local i64 @GistPageIsLeaf(i64) #1

declare dso_local i32 @GistMarkTuplesDeleted(i64) #1

declare dso_local i64 @PageIsEmpty(i64) #1

declare dso_local i64 @OffsetNumberNext(i32) #1

declare dso_local i32 @PageGetMaxOffsetNumber(i64) #1

declare dso_local i64 @PageAddItem(i64, i32, i32, i64, i32, i32) #1

declare dso_local i32 @PageSetLSN(i64, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @XLogRecHasBlockRef(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @gistRedoClearFollowRight(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
