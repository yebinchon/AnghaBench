; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_OperatorUpd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_pg_operator.c_OperatorUpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64, i64 }

@OperatorRelationId = common dso_local global i32 0, align 4
@RowExclusiveLock = common dso_local global i32 0, align 4
@OPEROID = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OperatorUpd(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = call i32 (...) @CommandCounterIncrement()
  br label %19

19:                                               ; preds = %17, %4
  %20 = load i32, i32* @OperatorRelationId, align 4
  %21 = load i32, i32* @RowExclusiveLock, align 4
  %22 = call i32 @table_open(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %6, align 8
  %24 = call i64 @OidIsValid(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @OPEROID, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @ObjectIdGetDatum(i64 %28)
  %30 = call %struct.TYPE_7__* @SearchSysCacheCopy1(i32 %27, i32 %29)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %10, align 8
  br label %32

31:                                               ; preds = %19
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %32

32:                                               ; preds = %31, %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = call i64 @HeapTupleIsValid(%struct.TYPE_7__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %79

36:                                               ; preds = %32
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %38 = call i32 @GETSTRUCT(%struct.TYPE_7__* %37)
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %11, align 8
  store i32 0, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i8*, i8** @InvalidOid, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  store i32 1, i32* %12, align 4
  br label %68

54:                                               ; preds = %43, %36
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @OidIsValid(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  store i32 1, i32* %12, align 4
  br label %67

67:                                               ; preds = %63, %57, %54
  br label %68

68:                                               ; preds = %67, %49
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %76 = call i32 @CatalogTupleUpdate(i32 %72, i32* %74, %struct.TYPE_7__* %75)
  %77 = call i32 (...) @CommandCounterIncrement()
  br label %78

78:                                               ; preds = %71, %68
  br label %79

79:                                               ; preds = %78, %32
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @OidIsValid(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* @OPEROID, align 4
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @ObjectIdGetDatum(i64 %85)
  %87 = call %struct.TYPE_7__* @SearchSysCacheCopy1(i32 %84, i32 %86)
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %10, align 8
  br label %89

88:                                               ; preds = %79
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  br label %89

89:                                               ; preds = %88, %83
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %91 = call i64 @HeapTupleIsValid(%struct.TYPE_7__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %140

93:                                               ; preds = %89
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = call i32 @GETSTRUCT(%struct.TYPE_7__* %94)
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %97, %struct.TYPE_8__** %13, align 8
  store i32 0, i32* %14, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %93
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %5, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i8*, i8** @InvalidOid, align 8
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  store i32 1, i32* %14, align 4
  br label %125

111:                                              ; preds = %100, %93
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %124, label %114

114:                                              ; preds = %111
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @OidIsValid(i64 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %114
  %121 = load i64, i64* %5, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  store i32 1, i32* %14, align 4
  br label %124

124:                                              ; preds = %120, %114, %111
  br label %125

125:                                              ; preds = %124, %106
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %133 = call i32 @CatalogTupleUpdate(i32 %129, i32* %131, %struct.TYPE_7__* %132)
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = call i32 (...) @CommandCounterIncrement()
  br label %138

138:                                              ; preds = %136, %128
  br label %139

139:                                              ; preds = %138, %125
  br label %140

140:                                              ; preds = %139, %89
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @RowExclusiveLock, align 4
  %143 = call i32 @table_close(i32 %141, i32 %142)
  ret void
}

declare dso_local i32 @CommandCounterIncrement(...) #1

declare dso_local i32 @table_open(i32, i32) #1

declare dso_local i64 @OidIsValid(i64) #1

declare dso_local %struct.TYPE_7__* @SearchSysCacheCopy1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i64 @HeapTupleIsValid(%struct.TYPE_7__*) #1

declare dso_local i32 @GETSTRUCT(%struct.TYPE_7__*) #1

declare dso_local i32 @CatalogTupleUpdate(i32, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @table_close(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
