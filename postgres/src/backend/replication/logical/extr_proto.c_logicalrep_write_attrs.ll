; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_write_attrs.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_proto.c_logicalrep_write_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i64, i32, i64, i64, i64 }

@REPLICA_IDENTITY_FULL = common dso_local global i64 0, align 8
@INDEX_ATTR_BITMAP_IDENTITY_KEY = common dso_local global i32 0, align 4
@FirstLowInvalidHeapAttributeNumber = common dso_local global i64 0, align 8
@LOGICALREP_IS_REPLICA_IDENTITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_13__*)* @logicalrep_write_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @logicalrep_write_attrs(i32 %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store i64 0, i64* %7, align 8
  store i32* null, i32** %8, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = call %struct.TYPE_12__* @RelationGetDescr(%struct.TYPE_13__* %12)
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %38, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.TYPE_14__* @TupleDescAttr(%struct.TYPE_12__* %21, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.TYPE_14__* @TupleDescAttr(%struct.TYPE_12__* %28, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20
  br label %38

35:                                               ; preds = %27
  %36 = load i64, i64* %7, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %35, %34
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %14

41:                                               ; preds = %14
  %42 = load i32, i32* %3, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @pq_sendint16(i32 %42, i64 %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @REPLICA_IDENTITY_FULL, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %41
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = load i32, i32* @INDEX_ATTR_BITMAP_IDENTITY_KEY, align 4
  %58 = call i32* @RelationGetIndexAttrBitmap(%struct.TYPE_13__* %56, i32 %57)
  store i32* %58, i32** %8, align 8
  br label %59

59:                                               ; preds = %55, %41
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %117, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %120

66:                                               ; preds = %60
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call %struct.TYPE_14__* @TupleDescAttr(%struct.TYPE_12__* %67, i32 %68)
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %10, align 8
  store i32 0, i32* %11, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %66
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74, %66
  br label %117

80:                                               ; preds = %74
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %80
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @FirstLowInvalidHeapAttributeNumber, align 8
  %88 = sub nsw i64 %86, %87
  %89 = load i32*, i32** %8, align 8
  %90 = call i64 @bms_is_member(i64 %88, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83, %80
  %93 = load i32, i32* @LOGICALREP_IS_REPLICA_IDENTITY, align 4
  %94 = load i32, i32* %11, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %92, %83
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @pq_sendbyte(i32 %97, i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @NameStr(i32 %103)
  %105 = call i32 @pq_sendstring(i32 %100, i32 %104)
  %106 = load i32, i32* %3, align 4
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @pq_sendint32(i32 %106, i32 %110)
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @pq_sendint32(i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %96, %79
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %60

120:                                              ; preds = %60
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @bms_free(i32* %121)
  ret void
}

declare dso_local %struct.TYPE_12__* @RelationGetDescr(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_14__* @TupleDescAttr(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @pq_sendint16(i32, i64) #1

declare dso_local i32* @RelationGetIndexAttrBitmap(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @bms_is_member(i64, i32*) #1

declare dso_local i32 @pq_sendbyte(i32, i32) #1

declare dso_local i32 @pq_sendstring(i32, i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @pq_sendint32(i32, i32) #1

declare dso_local i32 @bms_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
