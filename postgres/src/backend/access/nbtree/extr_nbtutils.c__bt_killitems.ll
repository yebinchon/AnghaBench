; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_killitems.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/nbtree/extr_nbtutils.c__bt_killitems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32*, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32, i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@BT_READ = common dso_local global i32 0, align 4
@BTP_HAS_GARBAGE = common dso_local global i32 0, align 4
@BUFFER_LOCK_UNLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_bt_killitems(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %3, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  %27 = call i32 @BTScanPosIsValid(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %26)
  %28 = call i32 @Assert(i32 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %33 = call i64 @BTScanPosIsPinned(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @BT_READ, align 4
  %41 = call i32 @LockBuffer(i32 %39, i32 %40)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @BufferGetPage(i32 %45)
  store i32 %46, i32* %4, align 4
  br label %83

47:                                               ; preds = %1
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @BT_READ, align 4
  %56 = call i32 @_bt_getbuf(i32 %50, i32 %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @BufferIsValid(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %47
  br label %185

61:                                               ; preds = %47
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @BufferGetPage(i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @BufferGetLSNAtomic(i32 %64)
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %65, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  br label %82

76:                                               ; preds = %61
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @_bt_relbuf(i32 %79, i32 %80)
  br label %185

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %35
  %84 = load i32, i32* %4, align 4
  %85 = call i64 @PageGetSpecialPointer(i32 %84)
  %86 = inttoptr i64 %85 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %86, %struct.TYPE_14__** %5, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = call i64 @P_FIRSTDATAKEY(%struct.TYPE_14__* %87)
  store i64 %88, i64* %6, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i64 @PageGetMaxOffsetNumber(i32 %89)
  store i64 %90, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %161, %83
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %164

95:                                               ; preds = %91
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %12, align 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 %108
  store %struct.TYPE_12__* %109, %struct.TYPE_12__** %13, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %14, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp sge i32 %113, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %95
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp sle i32 %120, %124
  br label %126

126:                                              ; preds = %119, %95
  %127 = phi i1 [ false, %95 ], [ %125, %119 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @Assert(i32 %128)
  %130 = load i64, i64* %14, align 8
  %131 = load i64, i64* %6, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %161

134:                                              ; preds = %126
  br label %135

135:                                              ; preds = %157, %134
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* %7, align 8
  %138 = icmp sle i64 %136, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %135
  %140 = load i32, i32* %4, align 4
  %141 = load i64, i64* %14, align 8
  %142 = call i32 @PageGetItemId(i32 %140, i64 %141)
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @PageGetItem(i32 %143, i32 %144)
  %146 = sext i32 %145 to i64
  %147 = inttoptr i64 %146 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %147, %struct.TYPE_10__** %16, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = call i64 @ItemPointerEquals(i32* %149, i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %139
  %155 = load i32, i32* %15, align 4
  %156 = call i32 @ItemIdMarkDead(i32 %155)
  store i32 1, i32* %10, align 4
  br label %160

157:                                              ; preds = %139
  %158 = load i64, i64* %14, align 8
  %159 = call i64 @OffsetNumberNext(i64 %158)
  store i64 %159, i64* %14, align 8
  br label %135

160:                                              ; preds = %154, %135
  br label %161

161:                                              ; preds = %160, %133
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %91

164:                                              ; preds = %91
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load i32, i32* @BTP_HAS_GARBAGE, align 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @MarkBufferDirtyHint(i32 %176, i32 1)
  br label %178

178:                                              ; preds = %167, %164
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @BUFFER_LOCK_UNLOCK, align 4
  %184 = call i32 @LockBuffer(i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %178, %76, %60
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @BTScanPosIsValid(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8) #1

declare dso_local i64 @BTScanPosIsPinned(%struct.TYPE_15__* byval(%struct.TYPE_15__) align 8) #1

declare dso_local i32 @LockBuffer(i32, i32) #1

declare dso_local i32 @BufferGetPage(i32) #1

declare dso_local i32 @_bt_getbuf(i32, i32, i32) #1

declare dso_local i32 @BufferIsValid(i32) #1

declare dso_local i64 @BufferGetLSNAtomic(i32) #1

declare dso_local i32 @_bt_relbuf(i32, i32) #1

declare dso_local i64 @PageGetSpecialPointer(i32) #1

declare dso_local i64 @P_FIRSTDATAKEY(%struct.TYPE_14__*) #1

declare dso_local i64 @PageGetMaxOffsetNumber(i32) #1

declare dso_local i32 @PageGetItemId(i32, i64) #1

declare dso_local i32 @PageGetItem(i32, i32) #1

declare dso_local i64 @ItemPointerEquals(i32*, i32*) #1

declare dso_local i32 @ItemIdMarkDead(i32) #1

declare dso_local i64 @OffsetNumberNext(i64) #1

declare dso_local i32 @MarkBufferDirtyHint(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
