; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_spgproperty.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/spgist/extr_spgutils.c_spgproperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64, i64, i32, i32 }

@AMOPSTRATEGY = common dso_local global i32 0, align 4
@AMOP_ORDER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spgproperty(i64 %0, i32 %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %105

24:                                               ; preds = %6
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %27 [
    i32 128, label %26
  ]

26:                                               ; preds = %24
  br label %28

27:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %105

28:                                               ; preds = %26
  %29 = load i64, i64* %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @get_index_column_opclass(i64 %29, i32 %30)
  store i64 %31, i64* %14, align 8
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @OidIsValid(i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load i32*, i32** %13, align 8
  store i32 1, i32* %36, align 4
  store i32 1, i32* %7, align 4
  br label %105

37:                                               ; preds = %28
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @get_opclass_opfamily_and_input_type(i64 %38, i64* %15, i64* %16)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %13, align 8
  store i32 1, i32* %42, align 4
  store i32 1, i32* %7, align 4
  br label %105

43:                                               ; preds = %37
  %44 = load i32, i32* @AMOPSTRATEGY, align 4
  %45 = load i64, i64* %15, align 8
  %46 = call i32 @ObjectIdGetDatum(i64 %45)
  %47 = call %struct.TYPE_8__* @SearchSysCacheList1(i32 %44, i32 %46)
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %17, align 8
  %48 = load i32*, i32** %12, align 8
  store i32 0, i32* %48, align 4
  store i32 0, i32* %18, align 4
  br label %49

49:                                               ; preds = %98, %43
  %50 = load i32, i32* %18, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %101

55:                                               ; preds = %49
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %57, align 8
  %59 = load i32, i32* %18, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %58, i64 %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32* %63, i32** %19, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = call i32 @GETSTRUCT(i32* %64)
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %20, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AMOP_ORDER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %55
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %16, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %16, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %79, %73
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @get_op_rettype(i32 %91)
  %93 = call i64 @opfamily_can_sort_type(i32 %88, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32*, i32** %12, align 8
  store i32 1, i32* %96, align 4
  br label %101

97:                                               ; preds = %85, %79, %55
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %18, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %18, align 4
  br label %49

101:                                              ; preds = %95, %49
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %103 = call i32 @ReleaseSysCacheList(%struct.TYPE_8__* %102)
  %104 = load i32*, i32** %13, align 8
  store i32 0, i32* %104, align 4
  store i32 1, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %41, %35, %27, %23
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i64 @get_index_column_opclass(i64, i32) #1

declare dso_local i32 @OidIsValid(i64) #1

declare dso_local i32 @get_opclass_opfamily_and_input_type(i64, i64*, i64*) #1

declare dso_local %struct.TYPE_8__* @SearchSysCacheList1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @GETSTRUCT(i32*) #1

declare dso_local i64 @opfamily_can_sort_type(i32, i32) #1

declare dso_local i32 @get_op_rettype(i32) #1

declare dso_local i32 @ReleaseSysCacheList(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
