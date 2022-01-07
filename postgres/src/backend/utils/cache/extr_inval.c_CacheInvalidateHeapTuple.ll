; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_CacheInvalidateHeapTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_inval.c_CacheInvalidateHeapTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }

@InvalidOid = common dso_local global i64 0, align 8
@MyDatabaseId = common dso_local global i64 0, align 8
@RegisterCatcacheInvalidation = common dso_local global i32 0, align 4
@RelationRelationId = common dso_local global i64 0, align 8
@AttributeRelationId = common dso_local global i64 0, align 8
@IndexRelationId = common dso_local global i64 0, align 8
@ConstraintRelationId = common dso_local global i64 0, align 8
@CONSTRAINT_FOREIGN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CacheInvalidateHeapTuple(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = call i64 (...) @IsBootstrapProcessingMode()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %135

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @IsCatalogRelation(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %135

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @IsToastRelation(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %135

27:                                               ; preds = %22
  %28 = call i32 (...) @PrepareInvalidationState()
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @RelationGetRelid(i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @RelationInvalidatesSnapshotsOnly(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %27
  %35 = load i64, i64* %7, align 8
  %36 = call i64 @IsSharedRelation(i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @InvalidOid, align 8
  br label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @MyDatabaseId, align 8
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i64 [ %39, %38 ], [ %41, %40 ]
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @RegisterSnapshotInvalidation(i64 %44, i64 %45)
  br label %53

47:                                               ; preds = %27
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @RegisterCatcacheInvalidation, align 4
  %52 = call i32 @PrepareToInvalidateCacheTuple(i32 %48, i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @RelationRelationId, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @GETSTRUCT(i32 %58)
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %10, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i64, i64* @InvalidOid, align 8
  store i64 %70, i64* %8, align 8
  br label %73

71:                                               ; preds = %57
  %72 = load i64, i64* @MyDatabaseId, align 8
  store i64 %72, i64* %8, align 8
  br label %73

73:                                               ; preds = %71, %69
  br label %131

74:                                               ; preds = %53
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @AttributeRelationId, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @GETSTRUCT(i32 %79)
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %11, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %9, align 8
  %86 = load i64, i64* @MyDatabaseId, align 8
  store i64 %86, i64* %8, align 8
  br label %130

87:                                               ; preds = %74
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @IndexRelationId, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @GETSTRUCT(i32 %92)
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %95, %struct.TYPE_5__** %12, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %9, align 8
  %99 = load i64, i64* @MyDatabaseId, align 8
  store i64 %99, i64* %8, align 8
  br label %129

100:                                              ; preds = %87
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* @ConstraintRelationId, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %127

104:                                              ; preds = %100
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @GETSTRUCT(i32 %105)
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %108, %struct.TYPE_6__** %13, align 8
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @CONSTRAINT_FOREIGN, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %104
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @OidIsValid(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %114
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %9, align 8
  %124 = load i64, i64* @MyDatabaseId, align 8
  store i64 %124, i64* %8, align 8
  br label %126

125:                                              ; preds = %114, %104
  br label %135

126:                                              ; preds = %120
  br label %128

127:                                              ; preds = %100
  br label %135

128:                                              ; preds = %126
  br label %129

129:                                              ; preds = %128, %91
  br label %130

130:                                              ; preds = %129, %78
  br label %131

131:                                              ; preds = %130, %73
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = call i32 @RegisterRelcacheInvalidation(i64 %132, i64 %133)
  br label %135

135:                                              ; preds = %131, %127, %125, %26, %21, %16
  ret void
}

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @IsCatalogRelation(i32) #1

declare dso_local i64 @IsToastRelation(i32) #1

declare dso_local i32 @PrepareInvalidationState(...) #1

declare dso_local i64 @RelationGetRelid(i32) #1

declare dso_local i64 @RelationInvalidatesSnapshotsOnly(i64) #1

declare dso_local i64 @IsSharedRelation(i64) #1

declare dso_local i32 @RegisterSnapshotInvalidation(i64, i64) #1

declare dso_local i32 @PrepareToInvalidateCacheTuple(i32, i32, i32, i32) #1

declare dso_local i32 @GETSTRUCT(i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local i32 @RegisterRelcacheInvalidation(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
