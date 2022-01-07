; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistFetchTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistFetchTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gistFetchTuple(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @MemoryContextSwitchTo(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %106, %3
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %27 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_14__* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %109

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %23, i64 %37
  %39 = call i64 @index_getattr(i32 %30, i32 %32, i32 %35, i32* %38)
  store i64 %39, i64* %12, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @InvalidOid, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %29
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %23, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = call i64 @gistFetchAtt(%struct.TYPE_15__* %57, i32 %58, i64 %59, %struct.TYPE_14__* %60)
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %20, i64 %63
  store i64 %61, i64* %64, align 8
  br label %69

65:                                               ; preds = %50
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %20, i64 %67
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %56
  br label %105

70:                                               ; preds = %29
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @InvalidOid, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %70
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %23, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %12, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %20, i64 %90
  store i64 %88, i64* %91, align 8
  br label %96

92:                                               ; preds = %81
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %20, i64 %94
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %92, %87
  br label %104

97:                                               ; preds = %70
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %23, i64 %99
  store i32 1, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %20, i64 %102
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %97, %96
  br label %105

105:                                              ; preds = %104, %69
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  br label %24

109:                                              ; preds = %24
  br label %110

110:                                              ; preds = %132, %109
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %111, %116
  br i1 %117, label %118, label %135

118:                                              ; preds = %110
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %23, i64 %126
  %128 = call i64 @index_getattr(i32 %119, i32 %121, i32 %124, i32* %127)
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %20, i64 %130
  store i64 %128, i64* %131, align 8
  br label %132

132:                                              ; preds = %118
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %110

135:                                              ; preds = %110
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @MemoryContextSwitchTo(i32 %136)
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @heap_form_tuple(i32 %140, i64* %20, i32* %23)
  %142 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %142)
  ret i32 %141
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_14__*) #1

declare dso_local i64 @index_getattr(i32, i32, i32, i32*) #1

declare dso_local i64 @gistFetchAtt(%struct.TYPE_15__*, i32, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @heap_form_tuple(i32, i64*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
