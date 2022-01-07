; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/executor/extr_tstoreReceiver.c_tstoreReceiveSlot_detoast.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/executor/extr_tstoreReceiver.c_tstoreReceiveSlot_detoast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i8**, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i8**, i8**, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.varlena = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*)* @tstoreReceiveSlot_detoast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tstoreReceiveSlot_detoast(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %5, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = call i32 @slot_getallattrs(%struct.TYPE_10__* %21)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %84, %2
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %87

27:                                               ; preds = %23
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %11, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__* %35, i32 %36)
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %12, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %76, label %42

42:                                               ; preds = %27
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %76

47:                                               ; preds = %42
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %76, label %56

56:                                               ; preds = %47
  %57 = load i8*, i8** %11, align 8
  %58 = call i64 @DatumGetPointer(i8* %57)
  %59 = call i64 @VARATT_IS_EXTERNAL(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %56
  %62 = load i8*, i8** %11, align 8
  %63 = call i64 @DatumGetPointer(i8* %62)
  %64 = inttoptr i64 %63 to %struct.varlena*
  %65 = call i32 @detoast_external_attr(%struct.varlena* %64)
  %66 = call i8* @PointerGetDatum(i32 %65)
  store i8* %66, i8** %11, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8*, i8** %70, i64 %73
  store i8* %67, i8** %74, align 8
  br label %75

75:                                               ; preds = %61, %56
  br label %76

76:                                               ; preds = %75, %47, %42, %27
  %77 = load i8*, i8** %11, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i8**, i8*** %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  store i8* %77, i8** %83, align 8
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %23

87:                                               ; preds = %23
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @MemoryContextSwitchTo(i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i8**, i8*** %97, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @tuplestore_putvalues(i32 %94, %struct.TYPE_11__* %95, i8** %98, i32* %101)
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @MemoryContextSwitchTo(i32 %103)
  store i32 0, i32* %9, align 4
  br label %105

105:                                              ; preds = %119, %87
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i8**, i8*** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %112, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = call i64 @DatumGetPointer(i8* %116)
  %118 = call i32 @pfree(i64 %117)
  br label %119

119:                                              ; preds = %109
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %105

122:                                              ; preds = %105
  ret i32 1
}

declare dso_local i32 @slot_getallattrs(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_13__* @TupleDescAttr(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @VARATT_IS_EXTERNAL(i64) #1

declare dso_local i64 @DatumGetPointer(i8*) #1

declare dso_local i8* @PointerGetDatum(i32) #1

declare dso_local i32 @detoast_external_attr(%struct.varlena*) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @tuplestore_putvalues(i32, %struct.TYPE_11__*, i8**, i32*) #1

declare dso_local i32 @pfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
