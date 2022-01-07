; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_execPartition.c_ExecInitPartitionDispatchInfo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_execPartition.c_ExecInitPartitionDispatchInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__**, i32, i32 }
%struct.TYPE_12__ = type { i32*, i32*, i32*, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@RowExclusiveLock = common dso_local global i32 0, align 4
@PartitionDispatchData = common dso_local global i32 0, align 4
@indexes = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4
@TTSOpsVirtual = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_14__*, %struct.TYPE_11__*, i64, %struct.TYPE_12__*, i32)* @ExecInitPartitionDispatchInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @ExecInitPartitionDispatchInfo(%struct.TYPE_14__* %0, %struct.TYPE_11__* %1, i64 %2, %struct.TYPE_12__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @CreatePartitionDirectory(i32 %24)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %5
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MemoryContextSwitchTo(i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @RelationGetRelid(i32 %36)
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %28
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* @RowExclusiveLock, align 4
  %42 = call i32 @table_open(i64 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  br label %47

43:                                               ; preds = %28
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call %struct.TYPE_13__* @PartitionDirectoryLookup(i32* %50, i32 %51)
  store %struct.TYPE_13__* %52, %struct.TYPE_13__** %12, align 8
  %53 = load i32, i32* @PartitionDispatchData, align 4
  %54 = load i32, i32* @indexes, align 4
  %55 = call i32 @offsetof(i32 %53, i32 %54)
  %56 = sext i32 %55 to i64
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = add i64 %56, %61
  %63 = trunc i64 %62 to i32
  %64 = call i64 @palloc(i32 %63)
  %65 = inttoptr i64 %64 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %13, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @RelationGetPartitionKey(i32 %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* @NIL, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 4
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %78, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = icmp ne %struct.TYPE_12__* %79, null
  br i1 %80, label %81, label %104

81:                                               ; preds = %47
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @RelationGetDescr(i32 %82)
  store i32 %83, i32* %16, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @RelationGetDescr(i32 %86)
  %88 = load i32, i32* %16, align 4
  %89 = call i32* @convert_tuples_by_name_map_if_req(i32 %87, i32 %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 2
  store i32* %89, i32** %91, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %81
  %97 = load i32, i32* %16, align 4
  %98 = call i32* @MakeSingleTupleTableSlot(i32 %97, i32* @TTSOpsVirtual)
  br label %100

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99, %96
  %101 = phi i32* [ %98, %96 ], [ null, %99 ]
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  store i32* %101, i32** %103, align 8
  br label %109

104:                                              ; preds = %47
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  store i32* null, i32** %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %104, %100
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 4, %116
  %118 = trunc i64 %117 to i32
  %119 = call i32 @memset(i32* %112, i32 -1, i32 %118)
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  store i32 %122, i32* %14, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %168

131:                                              ; preds = %109
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %131
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 1
  store i32 4, i32* %138, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 8, %142
  %144 = trunc i64 %143 to i32
  %145 = call i64 @palloc(i32 %144)
  %146 = inttoptr i64 %145 to %struct.TYPE_12__**
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  store %struct.TYPE_12__** %146, %struct.TYPE_12__*** %148, align 8
  br label %167

149:                                              ; preds = %131
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %152, 2
  store i32 %153, i32* %151, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  %156 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %155, align 8
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = mul i64 8, %160
  %162 = trunc i64 %161 to i32
  %163 = call i64 @repalloc(%struct.TYPE_12__** %156, i32 %162)
  %164 = inttoptr i64 %163 to %struct.TYPE_12__**
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  store %struct.TYPE_12__** %164, %struct.TYPE_12__*** %166, align 8
  br label %167

167:                                              ; preds = %149, %136
  br label %168

168:                                              ; preds = %167, %109
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %172, i64 %174
  store %struct.TYPE_12__* %169, %struct.TYPE_12__** %175, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %177 = icmp ne %struct.TYPE_12__* %176, null
  br i1 %177, label %178, label %196

178:                                              ; preds = %168
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, -1
  %187 = zext i1 %186 to i32
  %188 = call i32 @Assert(i32 %187)
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %189, i32* %195, align 4
  br label %196

196:                                              ; preds = %178, %168
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @MemoryContextSwitchTo(i32 %197)
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  ret %struct.TYPE_12__* %199
}

declare dso_local i32* @CreatePartitionDirectory(i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @RelationGetRelid(i32) #1

declare dso_local i32 @table_open(i64, i32) #1

declare dso_local %struct.TYPE_13__* @PartitionDirectoryLookup(i32*, i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @RelationGetPartitionKey(i32) #1

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32* @convert_tuples_by_name_map_if_req(i32, i32) #1

declare dso_local i32* @MakeSingleTupleTableSlot(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_12__**, i32) #1

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
