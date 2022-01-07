; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_ExtractReplicaIdentity.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/heap/extr_heapam.c_ExtractReplicaIdentity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8 }
%struct.TYPE_13__ = type { i32 }

@MaxHeapAttributeNumber = common dso_local global i32 0, align 4
@REPLICA_IDENTITY_NOTHING = common dso_local global i8 0, align 1
@REPLICA_IDENTITY_FULL = common dso_local global i8 0, align 1
@INDEX_ATTR_BITMAP_IDENTITY_KEY = common dso_local global i32 0, align 4
@FirstLowInvalidHeapAttributeNumber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, i32*, i32, i32*)* @ExtractReplicaIdentity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ExtractReplicaIdentity(%struct.TYPE_14__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = call %struct.TYPE_13__* @RelationGetDescr(%struct.TYPE_14__* %20)
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %10, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %11, align 1
  %27 = load i32, i32* @MaxHeapAttributeNumber, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %14, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %15, align 8
  %31 = load i32, i32* @MaxHeapAttributeNumber, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %16, align 8
  %34 = load i32*, i32** %9, align 8
  store i32 0, i32* %34, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %36 = call i32 @RelationIsLogicallyLogged(%struct.TYPE_14__* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %129

39:                                               ; preds = %4
  %40 = load i8, i8* %11, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* @REPLICA_IDENTITY_NOTHING, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32* null, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %129

46:                                               ; preds = %39
  %47 = load i8, i8* %11, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* @REPLICA_IDENTITY_FULL, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = call i64 @HeapTupleHasExternal(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32*, i32** %9, align 8
  store i32 1, i32* %57, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %60 = call i32* @toast_flatten_tuple(i32* %58, %struct.TYPE_13__* %59)
  store i32* %60, i32** %7, align 8
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32*, i32** %7, align 8
  store i32* %62, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %129

63:                                               ; preds = %46
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32* null, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %129

67:                                               ; preds = %63
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = load i32, i32* @INDEX_ATTR_BITMAP_IDENTITY_KEY, align 4
  %70 = call i32* @RelationGetIndexAttrBitmap(%struct.TYPE_14__* %68, i32 %69)
  store i32* %70, i32** %12, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i64 @bms_is_empty(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32* null, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %129

75:                                               ; preds = %67
  %76 = load i32*, i32** %7, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %78 = call i32 @heap_deform_tuple(i32* %76, %struct.TYPE_13__* %77, i32* %33, i32* %30)
  store i32 0, i32* %18, align 4
  br label %79

79:                                               ; preds = %108, %75
  %80 = load i32, i32* %18, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %79
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %90 = sub nsw i64 %88, %89
  %91 = load i32*, i32** %12, align 8
  %92 = call i64 @bms_is_member(i64 %90, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %85
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %30, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @Assert(i32 %101)
  br label %107

103:                                              ; preds = %85
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %30, i64 %105
  store i32 1, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %94
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %18, align 4
  br label %79

111:                                              ; preds = %79
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %113 = call i32* @heap_form_tuple(%struct.TYPE_13__* %112, i32* %33, i32* %30)
  store i32* %113, i32** %13, align 8
  %114 = load i32*, i32** %9, align 8
  store i32 1, i32* %114, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @bms_free(i32* %115)
  %117 = load i32*, i32** %13, align 8
  %118 = call i64 @HeapTupleHasExternal(i32* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %111
  %121 = load i32*, i32** %13, align 8
  store i32* %121, i32** %19, align 8
  %122 = load i32*, i32** %19, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %124 = call i32* @toast_flatten_tuple(i32* %122, %struct.TYPE_13__* %123)
  store i32* %124, i32** %13, align 8
  %125 = load i32*, i32** %19, align 8
  %126 = call i32 @heap_freetuple(i32* %125)
  br label %127

127:                                              ; preds = %120, %111
  %128 = load i32*, i32** %13, align 8
  store i32* %128, i32** %5, align 8
  store i32 1, i32* %17, align 4
  br label %129

129:                                              ; preds = %127, %74, %66, %61, %45, %38
  %130 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32*, i32** %5, align 8
  ret i32* %131
}

declare dso_local %struct.TYPE_13__* @RelationGetDescr(%struct.TYPE_14__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @RelationIsLogicallyLogged(%struct.TYPE_14__*) #1

declare dso_local i64 @HeapTupleHasExternal(i32*) #1

declare dso_local i32* @toast_flatten_tuple(i32*, %struct.TYPE_13__*) #1

declare dso_local i32* @RelationGetIndexAttrBitmap(%struct.TYPE_14__*, i32) #1

declare dso_local i64 @bms_is_empty(i32*) #1

declare dso_local i32 @heap_deform_tuple(i32*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i64 @bms_is_member(i64, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32* @heap_form_tuple(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @bms_free(i32*) #1

declare dso_local i32 @heap_freetuple(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
