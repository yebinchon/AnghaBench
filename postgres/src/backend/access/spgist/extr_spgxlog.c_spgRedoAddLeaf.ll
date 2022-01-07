; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgxlog.c_spgRedoAddLeaf.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgxlog.c_spgRedoAddLeaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i64, i64 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64 }

@SPGIST_LEAF = common dso_local global i32 0, align 4
@SPGIST_NULLS = common dso_local global i32 0, align 4
@BLK_NEEDS_REDO = common dso_local global i64 0, align 8
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"failed to add item of size %u to SPGiST index page\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @spgRedoAddLeaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spgRedoAddLeaf(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = call i8* @XLogRecGetData(%struct.TYPE_12__* %17)
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 48
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @memcpy(%struct.TYPE_13__* %7, i8* %24, i32 16)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %1
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %32 = call i32 @XLogInitBufferForRedo(%struct.TYPE_12__* %31, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SPGIST_LEAF, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @SPGIST_NULLS, align 4
  br label %42

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = or i32 %34, %43
  %45 = call i32 @SpGistInitBuffer(i32 %33, i32 %44)
  %46 = load i64, i64* @BLK_NEEDS_REDO, align 8
  store i64 %46, i64* %10, align 8
  br label %50

47:                                               ; preds = %1
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = call i64 @XLogReadBufferForRedo(%struct.TYPE_12__* %48, i32 0, i32* %8)
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %133

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @BufferGetPage(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %102

64:                                               ; preds = %54
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @addOrReplaceTuple(i32 %65, i32 %67, i32 %69, i64 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @InvalidOffsetNumber, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %101

79:                                               ; preds = %64
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @PageGetItemId(i32 %81, i64 %84)
  %86 = call i64 @PageGetItem(i32 %80, i32 %85)
  %87 = inttoptr i64 %86 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %87, %struct.TYPE_14__** %11, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp eq i64 %90, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @Assert(i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %79, %64
  br label %127

102:                                              ; preds = %54
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @PageIndexTupleDelete(i32 %103, i64 %106)
  %108 = load i32, i32* %9, align 4
  %109 = load i8*, i8** %6, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @PageAddItem(i32 %108, i32 %110, i32 %112, i64 %115, i32 0, i32 0)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %102
  %122 = load i32, i32* @ERROR, align 4
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @elog(i32 %122, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %121, %102
  br label %127

127:                                              ; preds = %126, %101
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %3, align 4
  %130 = call i32 @PageSetLSN(i32 %128, i32 %129)
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @MarkBufferDirty(i32 %131)
  br label %133

133:                                              ; preds = %127, %50
  %134 = load i32, i32* %8, align 4
  %135 = call i64 @BufferIsValid(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @UnlockReleaseBuffer(i32 %138)
  br label %140

140:                                              ; preds = %137, %133
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @InvalidOffsetNumber, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %185

146:                                              ; preds = %140
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %148 = call i64 @XLogReadBufferForRedo(%struct.TYPE_12__* %147, i32 1, i32* %8)
  %149 = load i64, i64* @BLK_NEEDS_REDO, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %177

151:                                              ; preds = %146
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %153 = call i32 @XLogRecGetBlockTag(%struct.TYPE_12__* %152, i32 0, i32* null, i32* null, i32* %13)
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @BufferGetPage(i32 %154)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = call i32 @PageGetItemId(i32 %157, i64 %160)
  %162 = call i64 @PageGetItem(i32 %156, i32 %161)
  store i64 %162, i64* %12, align 8
  %163 = load i64, i64* %12, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @spgUpdateNodeLink(i64 %163, i32 %166, i32 %167, i64 %170)
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @PageSetLSN(i32 %172, i32 %173)
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @MarkBufferDirty(i32 %175)
  br label %177

177:                                              ; preds = %151, %146
  %178 = load i32, i32* %8, align 4
  %179 = call i64 @BufferIsValid(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* %8, align 4
  %183 = call i32 @UnlockReleaseBuffer(i32 %182)
  br label %184

184:                                              ; preds = %181, %177
  br label %185

185:                                              ; preds = %184, %140
  ret void
}

declare dso_local i8* @XLogRecGetData(%struct.TYPE_12__*) #1

declare dso_local i32 @memcpy(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @XLogInitBufferForRedo(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @SpGistInitBuffer(i32, i32) #1

declare dso_local i64 @XLogReadBufferForRedo(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @addOrReplaceTuple(i32, i32, i32, i64) #1

declare dso_local i64 @PageGetItem(i32, i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @PageIndexTupleDelete(i32, i64) #1

declare dso_local i64 @PageAddItem(i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @PageSetLSN(i32, i32) #1

declare dso_local i32 @MarkBufferDirty(i32) #1

declare dso_local i64 @BufferIsValid(i32) #1

declare dso_local i32 @UnlockReleaseBuffer(i32) #1

declare dso_local i32 @XLogRecGetBlockTag(%struct.TYPE_12__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @spgUpdateNodeLink(i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
