; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistFormTuple.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gist/extr_gistutil.c_gistFormTuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i64 }

@INDEX_MAX_KEYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @gistFormTuple(%struct.TYPE_19__* %0, %struct.TYPE_17__* %1, i64* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca %struct.TYPE_20__, align 8
  %16 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* @INDEX_MAX_KEYS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %85, %5
  %22 = load i32, i32* %13, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %24 = call i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_17__* %23)
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %88

26:                                               ; preds = %21
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %13, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %20, i64 %35
  store i64 0, i64* %36, align 8
  br label %84

37:                                               ; preds = %26
  %38 = load i64*, i64** %8, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @gistentryinit(i64 %46, i64 %42, %struct.TYPE_17__* %43, i32* null, i32 0, i32 %44)
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @OidIsValid(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %37
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 %63
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @PointerGetDatum(%struct.TYPE_20__* %15)
  %73 = call i32 @FunctionCall1Coll(%struct.TYPE_15__* %64, i32 %71, i32 %72)
  %74 = call i64 @DatumGetPointer(i32 %73)
  %75 = inttoptr i64 %74 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %75, %struct.TYPE_20__** %16, align 8
  br label %77

76:                                               ; preds = %37
  store %struct.TYPE_20__* %15, %struct.TYPE_20__** %16, align 8
  br label %77

77:                                               ; preds = %76, %58
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %20, i64 %82
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %77, %33
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %21

88:                                               ; preds = %21
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %125

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %121, %91
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %92
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %20, i64 %109
  store i64 0, i64* %110, align 8
  br label %120

111:                                              ; preds = %100
  %112 = load i64*, i64** %8, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %20, i64 %118
  store i64 %116, i64* %119, align 8
  br label %120

120:                                              ; preds = %111, %107
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %13, align 4
  br label %92

124:                                              ; preds = %92
  br label %125

125:                                              ; preds = %124, %88
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  br label %136

132:                                              ; preds = %125
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  br label %136

136:                                              ; preds = %132, %128
  %137 = phi i32 [ %131, %128 ], [ %135, %132 ]
  %138 = load i32*, i32** %9, align 8
  %139 = call %struct.TYPE_18__* @index_form_tuple(i32 %137, i64* %20, i32* %138)
  store %struct.TYPE_18__* %139, %struct.TYPE_18__** %14, align 8
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = call i32 @ItemPointerSetOffsetNumber(i32* %141, i32 65535)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %144 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %144)
  ret %struct.TYPE_18__* %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IndexRelationGetNumberOfKeyAttributes(%struct.TYPE_17__*) #2

declare dso_local i32 @gistentryinit(i64, i64, %struct.TYPE_17__*, i32*, i32, i32) #2

declare dso_local i64 @OidIsValid(i32) #2

declare dso_local i64 @DatumGetPointer(i32) #2

declare dso_local i32 @FunctionCall1Coll(%struct.TYPE_15__*, i32, i32) #2

declare dso_local i32 @PointerGetDatum(%struct.TYPE_20__*) #2

declare dso_local %struct.TYPE_18__* @index_form_tuple(i32, i64*, i32*) #2

declare dso_local i32 @ItemPointerSetOffsetNumber(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
