; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_updateAclDependencies.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_shdepend.c_updateAclDependencies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SharedDependRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@AuthIdRelationId = common dso_local global i32 0, align 4
@SHARED_DEPENDENCY_ACL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @updateAclDependencies(i64 %0, i64 %1, i32 %2, i64 %3, i32 %4, i64* %5, i32 %6, i64* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  store i64* %7, i64** %16, align 8
  %21 = load i64*, i64** %14, align 8
  %22 = load i64*, i64** %16, align 8
  %23 = call i32 @getOidListDiff(i64* %21, i32* %13, i64* %22, i32* %15)
  %24 = load i32, i32* %13, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* %15, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %104

29:                                               ; preds = %26, %8
  %30 = load i32, i32* @SharedDependRelationId, align 4
  %31 = load i32, i32* @RowExclusiveLock, align 4
  %32 = call i32 @table_open(i32 %30, i32 %31)
  store i32 %32, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %33

33:                                               ; preds = %63, %29
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %33
  %38 = load i64*, i64** %16, align 8
  %39 = load i32, i32* %18, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %19, align 8
  %43 = load i64, i64* %19, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %63

47:                                               ; preds = %37
  %48 = load i32, i32* @AuthIdRelationId, align 4
  %49 = load i64, i64* %19, align 8
  %50 = load i32, i32* %17, align 4
  %51 = call i64 @isSharedObjectPinned(i32 %48, i64 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %63

54:                                               ; preds = %47
  %55 = load i32, i32* %17, align 4
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @AuthIdRelationId, align 4
  %60 = load i64, i64* %19, align 8
  %61 = load i32, i32* @SHARED_DEPENDENCY_ACL, align 4
  %62 = call i32 @shdepAddDependency(i32 %55, i64 %56, i64 %57, i32 %58, i32 %59, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %53, %46
  %64 = load i32, i32* %18, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %18, align 4
  br label %33

66:                                               ; preds = %33
  store i32 0, i32* %18, align 4
  br label %67

67:                                               ; preds = %97, %66
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load i64*, i64** %14, align 8
  %73 = load i32, i32* %18, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %20, align 8
  %77 = load i64, i64* %20, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %97

81:                                               ; preds = %71
  %82 = load i32, i32* @AuthIdRelationId, align 4
  %83 = load i64, i64* %20, align 8
  %84 = load i32, i32* %17, align 4
  %85 = call i64 @isSharedObjectPinned(i32 %82, i64 %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %97

88:                                               ; preds = %81
  %89 = load i32, i32* %17, align 4
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @AuthIdRelationId, align 4
  %94 = load i64, i64* %20, align 8
  %95 = load i32, i32* @SHARED_DEPENDENCY_ACL, align 4
  %96 = call i32 @shdepDropDependency(i32 %89, i64 %90, i64 %91, i32 %92, i32 0, i32 %93, i64 %94, i32 %95)
  br label %97

97:                                               ; preds = %88, %87, %80
  %98 = load i32, i32* %18, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %18, align 4
  br label %67

100:                                              ; preds = %67
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @RowExclusiveLock, align 4
  %103 = call i32 @table_close(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %26
  %105 = load i64*, i64** %14, align 8
  %106 = icmp ne i64* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i64*, i64** %14, align 8
  %109 = call i32 @pfree(i64* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i64*, i64** %16, align 8
  %112 = icmp ne i64* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i64*, i64** %16, align 8
  %115 = call i32 @pfree(i64* %114)
  br label %116

116:                                              ; preds = %113, %110
  ret void
}

declare dso_local i32 @getOidListDiff(i64*, i32*, i64*, i32*) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i64 @isSharedObjectPinned(i32, i64, i32) #1

declare dso_local i32 @shdepAddDependency(i32, i64, i64, i32, i32, i64, i32) #1

declare dso_local i32 @shdepDropDependency(i32, i64, i64, i32, i32, i32, i64, i32) #1

declare dso_local i32 @table_close(i32, i32) #1

declare dso_local i32 @pfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
