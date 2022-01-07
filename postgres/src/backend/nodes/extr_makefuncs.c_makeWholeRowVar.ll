; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/nodes/extr_makefuncs.c_makeWholeRowVar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/nodes/extr_makefuncs.c_makeWholeRowVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"could not find type OID for relation %u\00", align 1
@InvalidAttrNumber = common dso_local global i32 0, align 4
@InvalidOid = common dso_local global i32 0, align 4
@RECORDOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @makeWholeRowVar(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %93 [
    i32 128, label %15
    i32 129, label %36
  ]

15:                                               ; preds = %4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @get_rel_type_id(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @OidIsValid(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = load i32, i32* @ERROR, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @elog(i32 %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %23, %15
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @InvalidAttrNumber, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @InvalidOid, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32* @makeVar(i32 %30, i32 %31, i32 %32, i32 -1, i32 %33, i32 %34)
  store i32* %35, i32** %9, align 8
  br label %100

36:                                               ; preds = %4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @list_length(i32 %44)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @InvalidAttrNumber, align 4
  %50 = load i32, i32* @RECORDOID, align 4
  %51 = load i32, i32* @InvalidOid, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32* @makeVar(i32 %48, i32 %49, i32 %50, i32 -1, i32 %51, i32 %52)
  store i32* %53, i32** %9, align 8
  br label %100

54:                                               ; preds = %41
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @linitial(i32 %57)
  %59 = inttoptr i64 %58 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @exprType(i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @type_is_rowtype(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @InvalidAttrNumber, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @InvalidOid, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32* @makeVar(i32 %68, i32 %69, i32 %70, i32 -1, i32 %71, i32 %72)
  store i32* %73, i32** %9, align 8
  br label %92

74:                                               ; preds = %54
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = call i32 @exprCollation(i32* %80)
  %82 = load i32, i32* %7, align 4
  %83 = call i32* @makeVar(i32 %78, i32 1, i32 %79, i32 -1, i32 %81, i32 %82)
  store i32* %83, i32** %9, align 8
  br label %91

84:                                               ; preds = %74
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @InvalidAttrNumber, align 4
  %87 = load i32, i32* @RECORDOID, align 4
  %88 = load i32, i32* @InvalidOid, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32* @makeVar(i32 %85, i32 %86, i32 %87, i32 -1, i32 %88, i32 %89)
  store i32* %90, i32** %9, align 8
  br label %91

91:                                               ; preds = %84, %77
  br label %92

92:                                               ; preds = %91, %67
  br label %100

93:                                               ; preds = %4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @InvalidAttrNumber, align 4
  %96 = load i32, i32* @RECORDOID, align 4
  %97 = load i32, i32* @InvalidOid, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32* @makeVar(i32 %94, i32 %95, i32 %96, i32 -1, i32 %97, i32 %98)
  store i32* %99, i32** %9, align 8
  br label %100

100:                                              ; preds = %93, %92, %47, %29
  %101 = load i32*, i32** %9, align 8
  ret i32* %101
}

declare dso_local i32 @get_rel_type_id(i32) #1

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32* @makeVar(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i64 @linitial(i32) #1

declare dso_local i32 @exprType(i32*) #1

declare dso_local i32 @type_is_rowtype(i32) #1

declare dso_local i32 @exprCollation(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
