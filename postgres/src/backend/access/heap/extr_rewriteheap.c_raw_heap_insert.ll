; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_rewriteheap.c_raw_heap_insert.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_rewriteheap.c_raw_heap_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_20__*, i64, i64 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }

@RELKIND_TOASTVALUE = common dso_local global i64 0, align 8
@TOAST_TUPLE_THRESHOLD = common dso_local global i64 0, align 8
@HEAP_INSERT_SKIP_FSM = common dso_local global i32 0, align 4
@HEAP_INSERT_SKIP_WAL = common dso_local global i32 0, align 4
@HEAP_INSERT_NO_LOGICAL = common dso_local global i32 0, align 4
@MaxHeapTupleSize = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_PROGRAM_LIMIT_EXCEEDED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"row is too big: size %zu, maximum size %zu\00", align 1
@HEAP_DEFAULT_FILLFACTOR = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@BLCKSZ = common dso_local global i32 0, align 4
@InvalidOffsetNumber = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to add tuple\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_19__*)* @raw_heap_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw_heap_insert(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %5, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RELKIND_TOASTVALUE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = call i64 @HeapTupleHasExternal(%struct.TYPE_19__* %27)
  %29 = icmp ne i64 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @Assert(i32 %31)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_19__* %33, %struct.TYPE_19__** %10, align 8
  br label %67

34:                                               ; preds = %2
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = call i64 @HeapTupleHasExternal(%struct.TYPE_19__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @TOAST_TUPLE_THRESHOLD, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %38, %34
  %45 = load i32, i32* @HEAP_INSERT_SKIP_FSM, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @HEAP_INSERT_SKIP_WAL, align 4
  %52 = load i32, i32* %11, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i32, i32* @HEAP_INSERT_NO_LOGICAL, align 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call %struct.TYPE_19__* @heap_toast_insert_or_update(%struct.TYPE_20__* %60, %struct.TYPE_19__* %61, i32* null, i32 %62)
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %10, align 8
  br label %66

64:                                               ; preds = %38
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_19__* %65, %struct.TYPE_19__** %10, align 8
  br label %66

66:                                               ; preds = %64, %54
  br label %67

67:                                               ; preds = %66, %26
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @MAXALIGN(i64 %70)
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* @MaxHeapTupleSize, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %67
  %76 = load i32, i32* @ERROR, align 4
  %77 = load i32, i32* @ERRCODE_PROGRAM_LIMIT_EXCEEDED, align 4
  %78 = call i32 @errcode(i32 %77)
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @MaxHeapTupleSize, align 8
  %81 = call i32 @errmsg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %79, i64 %80)
  %82 = call i32 @ereport(i32 %76, i32 %81)
  br label %83

83:                                               ; preds = %75, %67
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = load i32, i32* @HEAP_DEFAULT_FILLFACTOR, align 4
  %88 = call i64 @RelationGetTargetPageFreeSpace(%struct.TYPE_20__* %86, i32 %87)
  store i64 %88, i64* %7, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %146

93:                                               ; preds = %83
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @PageGetHeapFreeSpace(i64 %94)
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %7, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i64, i64* %6, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %145

101:                                              ; preds = %93
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 1
  %111 = load i32, i32* @MAIN_FORKNUM, align 4
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %5, align 8
  %116 = call i32 @log_newpage(i32* %110, i32 %111, i32 %114, i64 %115, i32 1)
  br label %117

117:                                              ; preds = %106, %101
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = call i32 @RelationOpenSmgr(%struct.TYPE_20__* %120)
  %122 = load i64, i64* %5, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @PageSetChecksumInplace(i64 %122, i32 %125)
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @MAIN_FORKNUM, align 4
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %5, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = call i32 @smgrextend(i32 %131, i32 %132, i32 %135, i8* %137, i32 1)
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  store i32 0, i32* %144, align 8
  br label %145

145:                                              ; preds = %117, %93
  br label %146

146:                                              ; preds = %145, %83
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %146
  %152 = load i64, i64* %5, align 8
  %153 = load i32, i32* @BLCKSZ, align 4
  %154 = call i32 @PageInit(i64 %152, i32 %153, i32 0)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  br label %157

157:                                              ; preds = %151, %146
  %158 = load i64, i64* %5, align 8
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = ptrtoint %struct.TYPE_16__* %161 to i32
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @InvalidOffsetNumber, align 8
  %167 = call i64 @PageAddItem(i64 %158, i32 %162, i64 %165, i64 %166, i32 0, i32 1)
  store i64 %167, i64* %9, align 8
  %168 = load i64, i64* %9, align 8
  %169 = load i64, i64* @InvalidOffsetNumber, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %157
  %172 = load i32, i32* @ERROR, align 4
  %173 = call i32 @elog(i32 %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %157
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i64, i64* %9, align 8
  %181 = call i32 @ItemPointerSet(i32* %176, i32 %179, i64 %180)
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = call i32 @ItemPointerIsValid(i32* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %201, label %188

188:                                              ; preds = %174
  %189 = load i64, i64* %5, align 8
  %190 = load i64, i64* %9, align 8
  %191 = call i32 @PageGetItemId(i64 %189, i64 %190)
  store i32 %191, i32* %12, align 4
  %192 = load i64, i64* %5, align 8
  %193 = load i32, i32* %12, align 4
  %194 = call i64 @PageGetItem(i64 %192, i32 %193)
  %195 = inttoptr i64 %194 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %195, %struct.TYPE_18__** %13, align 8
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 4
  br label %201

201:                                              ; preds = %188, %174
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %204 = icmp ne %struct.TYPE_19__* %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %201
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %207 = call i32 @heap_freetuple(%struct.TYPE_19__* %206)
  br label %208

208:                                              ; preds = %205, %201
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @HeapTupleHasExternal(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @heap_toast_insert_or_update(%struct.TYPE_20__*, %struct.TYPE_19__*, i32*, i32) #1

declare dso_local i64 @MAXALIGN(i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*, i64, i64) #1

declare dso_local i64 @RelationGetTargetPageFreeSpace(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @PageGetHeapFreeSpace(i64) #1

declare dso_local i32 @log_newpage(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_20__*) #1

declare dso_local i32 @PageSetChecksumInplace(i64, i32) #1

declare dso_local i32 @smgrextend(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @PageInit(i64, i32, i32) #1

declare dso_local i64 @PageAddItem(i64, i32, i64, i64, i32, i32) #1

declare dso_local i32 @elog(i32, i8*) #1

declare dso_local i32 @ItemPointerSet(i32*, i32, i64) #1

declare dso_local i32 @ItemPointerIsValid(i32*) #1

declare dso_local i32 @PageGetItemId(i64, i64) #1

declare dso_local i64 @PageGetItem(i64, i32) #1

declare dso_local i32 @heap_freetuple(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
