; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_storage.c_smgr_redo.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_storage.c_smgr_redo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@XLR_INFO_MASK = common dso_local global i64 0, align 8
@XLOG_SMGR_CREATE = common dso_local global i64 0, align 8
@InvalidBackendId = common dso_local global i32 0, align 4
@XLOG_SMGR_TRUNCATE = common dso_local global i64 0, align 8
@MAX_FORKNUM = common dso_local global i32 0, align 4
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@SMGR_TRUNCATE_HEAP = common dso_local global i32 0, align 4
@SMGR_TRUNCATE_FSM = common dso_local global i32 0, align 4
@FSM_FORKNUM = common dso_local global i32 0, align 4
@SMGR_TRUNCATE_VM = common dso_local global i32 0, align 4
@VISIBILITYMAP_FORKNUM = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i32 0, align 4
@PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"smgr_redo: unknown op code %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smgr_redo(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = call i64 @XLogRecGetInfo(%struct.TYPE_10__* %18)
  %20 = load i64, i64* @XLR_INFO_MASK, align 8
  %21 = xor i64 %20, -1
  %22 = and i64 %19, %21
  store i64 %22, i64* %4, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = call i32 @XLogRecHasAnyBlockRefs(%struct.TYPE_10__* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @Assert(i32 %27)
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @XLOG_SMGR_CREATE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %1
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = call i64 @XLogRecGetData(%struct.TYPE_10__* %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %5, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @InvalidBackendId, align 4
  %40 = call i32 @smgropen(i32 %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @smgrcreate(i32 %41, i32 %44, i32 1)
  br label %198

46:                                               ; preds = %1
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @XLOG_SMGR_TRUNCATE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %193

50:                                               ; preds = %46
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = call i64 @XLogRecGetData(%struct.TYPE_10__* %51)
  %53 = inttoptr i64 %52 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %7, align 8
  %54 = load i32, i32* @MAX_FORKNUM, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %10, align 8
  %57 = alloca i32, i64 %55, align 16
  store i64 %55, i64* %11, align 8
  %58 = load i32, i32* @MAX_FORKNUM, align 4
  %59 = zext i32 %58 to i64
  %60 = alloca i32, i64 %59, align 16
  store i64 %59, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @InvalidBackendId, align 4
  %65 = call i32 @smgropen(i32 %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @MAIN_FORKNUM, align 4
  %68 = call i32 @smgrcreate(i32 %66, i32 %67, i32 1)
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @XLogFlush(i32 %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SMGR_TRUNCATE_HEAP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %50
  %78 = load i32, i32* @MAIN_FORKNUM, align 4
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %57, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %60, i64 %86
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MAIN_FORKNUM, align 4
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @XLogTruncateRelation(i32 %92, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %77, %50
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @CreateFakeRelcacheEntry(i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SMGR_TRUNCATE_FSM, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %137

109:                                              ; preds = %98
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @FSM_FORKNUM, align 4
  %112 = call i64 @smgrexists(i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %109
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @FreeSpaceMapPrepareTruncateRel(i32 %115, i32 %118)
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %60, i64 %121
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %60, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @BlockNumberIsValid(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %114
  %130 = load i32, i32* @FSM_FORKNUM, align 4
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %57, i64 %132
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* %13, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %136

136:                                              ; preds = %129, %114
  br label %137

137:                                              ; preds = %136, %109, %98
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SMGR_TRUNCATE_VM, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %172

144:                                              ; preds = %137
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @VISIBILITYMAP_FORKNUM, align 4
  %147 = call i64 @smgrexists(i32 %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %172

149:                                              ; preds = %144
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @visibilitymap_prepare_truncate(i32 %150, i32 %153)
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %60, i64 %156
  store i32 %154, i32* %157, align 4
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %60, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @BlockNumberIsValid(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %149
  %165 = load i32, i32* @VISIBILITYMAP_FORKNUM, align 4
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %57, i64 %167
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %164, %149
  br label %172

172:                                              ; preds = %171, %144, %137
  %173 = load i32, i32* %13, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @smgrtruncate(i32 %176, i32* %57, i32 %177, i32* %60)
  br label %179

179:                                              ; preds = %175, %172
  %180 = load i32, i32* %14, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %179
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @InvalidBlockNumber, align 4
  %188 = call i32 @FreeSpaceMapVacuumRange(i32 %183, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %182, %179
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @FreeFakeRelcacheEntry(i32 %190)
  %192 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %192)
  br label %197

193:                                              ; preds = %46
  %194 = load i32, i32* @PANIC, align 4
  %195 = load i64, i64* %4, align 8
  %196 = call i32 @elog(i32 %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %195)
  br label %197

197:                                              ; preds = %193, %189
  br label %198

198:                                              ; preds = %197, %32
  ret void
}

declare dso_local i64 @XLogRecGetInfo(%struct.TYPE_10__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @XLogRecHasAnyBlockRefs(%struct.TYPE_10__*) #1

declare dso_local i64 @XLogRecGetData(%struct.TYPE_10__*) #1

declare dso_local i32 @smgropen(i32, i32) #1

declare dso_local i32 @smgrcreate(i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @XLogFlush(i32) #1

declare dso_local i32 @XLogTruncateRelation(i32, i32, i32) #1

declare dso_local i32 @CreateFakeRelcacheEntry(i32) #1

declare dso_local i64 @smgrexists(i32, i32) #1

declare dso_local i32 @FreeSpaceMapPrepareTruncateRel(i32, i32) #1

declare dso_local i64 @BlockNumberIsValid(i32) #1

declare dso_local i32 @visibilitymap_prepare_truncate(i32, i32) #1

declare dso_local i32 @smgrtruncate(i32, i32*, i32, i32*) #1

declare dso_local i32 @FreeSpaceMapVacuumRange(i32, i32, i32) #1

declare dso_local i32 @FreeFakeRelcacheEntry(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @elog(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
