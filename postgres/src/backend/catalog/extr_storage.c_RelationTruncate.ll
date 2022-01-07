; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_storage.c_RelationTruncate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_storage.c_RelationTruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i8* }
%struct.TYPE_11__ = type { i32, i32, i32 }

@MAX_FORKNUM = common dso_local global i32 0, align 4
@InvalidBlockNumber = common dso_local global i8* null, align 8
@MAIN_FORKNUM = common dso_local global i32 0, align 4
@FSM_FORKNUM = common dso_local global i32 0, align 4
@VISIBILITYMAP_FORKNUM = common dso_local global i32 0, align 4
@SMGR_TRUNCATE_ALL = common dso_local global i32 0, align 4
@RM_SMGR_ID = common dso_local global i32 0, align 4
@XLOG_SMGR_TRUNCATE = common dso_local global i32 0, align 4
@XLR_SPECIAL_REL_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RelationTruncate(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @MAX_FORKNUM, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @MAX_FORKNUM, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = call i32 @RelationOpenSmgr(%struct.TYPE_12__* %21)
  %23 = load i8*, i8** @InvalidBlockNumber, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  store i8* %23, i8** %27, align 8
  %28 = load i8*, i8** @InvalidBlockNumber, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  store i8* %28, i8** %32, align 8
  %33 = load i8*, i8** @InvalidBlockNumber, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store i8* %33, i8** %37, align 8
  %38 = load i32, i32* @MAIN_FORKNUM, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %17, i64 %40
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %20, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = load i32, i32* @FSM_FORKNUM, align 4
  %52 = call i32 @smgrexists(%struct.TYPE_13__* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %2
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @FreeSpaceMapPrepareTruncateRel(%struct.TYPE_12__* %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %20, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %20, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @BlockNumberIsValid(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %55
  %69 = load i32, i32* @FSM_FORKNUM, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %17, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  store i32 1, i32* %7, align 4
  br label %75

75:                                               ; preds = %68, %55
  br label %76

76:                                               ; preds = %75, %2
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = load i32, i32* @VISIBILITYMAP_FORKNUM, align 4
  %81 = call i32 @smgrexists(%struct.TYPE_13__* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %76
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @visibilitymap_prepare_truncate(%struct.TYPE_12__* %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %20, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %20, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @BlockNumberIsValid(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %84
  %98 = load i32, i32* @VISIBILITYMAP_FORKNUM, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %17, i64 %100
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %97, %84
  br label %105

105:                                              ; preds = %104, %76
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %107 = call i64 @RelationNeedsWAL(%struct.TYPE_12__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %135

109:                                              ; preds = %105
  %110 = load i32, i32* %4, align 4
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  store i32 %110, i32* %111, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* @SMGR_TRUNCATE_ALL, align 4
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = call i32 (...) @XLogBeginInsert()
  %119 = bitcast %struct.TYPE_11__* %13 to i8*
  %120 = call i32 @XLogRegisterData(i8* %119, i32 12)
  %121 = load i32, i32* @RM_SMGR_ID, align 4
  %122 = load i32, i32* @XLOG_SMGR_TRUNCATE, align 4
  %123 = load i32, i32* @XLR_SPECIAL_REL_UPDATE, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @XLogInsert(i32 %121, i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %109
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128, %109
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @XLogFlush(i32 %132)
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134, %105
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @smgrtruncate(%struct.TYPE_13__* %138, i32* %17, i32 %139, i32* %20)
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %135
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i8*, i8** @InvalidBlockNumber, align 8
  %147 = call i32 @FreeSpaceMapVacuumRange(%struct.TYPE_12__* %144, i32 %145, i8* %146)
  br label %148

148:                                              ; preds = %143, %135
  %149 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %149)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RelationOpenSmgr(%struct.TYPE_12__*) #2

declare dso_local i32 @smgrexists(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @FreeSpaceMapPrepareTruncateRel(%struct.TYPE_12__*, i32) #2

declare dso_local i64 @BlockNumberIsValid(i32) #2

declare dso_local i32 @visibilitymap_prepare_truncate(%struct.TYPE_12__*, i32) #2

declare dso_local i64 @RelationNeedsWAL(%struct.TYPE_12__*) #2

declare dso_local i32 @XLogBeginInsert(...) #2

declare dso_local i32 @XLogRegisterData(i8*, i32) #2

declare dso_local i32 @XLogInsert(i32, i32) #2

declare dso_local i32 @XLogFlush(i32) #2

declare dso_local i32 @smgrtruncate(%struct.TYPE_13__*, i32*, i32, i32*) #2

declare dso_local i32 @FreeSpaceMapVacuumRange(%struct.TYPE_12__*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
