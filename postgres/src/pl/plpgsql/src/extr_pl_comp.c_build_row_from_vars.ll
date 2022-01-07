; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_build_row_from_vars.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpgsql/src/extr_pl_comp.c_build_row_from_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@PLPGSQL_DTYPE_ROW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"(unnamed row)\00", align 1
@InvalidOid = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"unrecognized dtype: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.TYPE_10__**, i32)* @build_row_from_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @build_row_from_vars(%struct.TYPE_10__** %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call %struct.TYPE_12__* @palloc0(i32 48)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %5, align 8
  %12 = load i32, i32* @PLPGSQL_DTYPE_ROW, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  store i32 -1, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @CreateTemplateTupleDesc(i32 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = call i8* @palloc(i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 5
  store i32* %31, i32** %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i8* @palloc(i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  store i32* %39, i32** %41, align 8
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %132, %2
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %135

46:                                               ; preds = %42
  %47 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %47, i64 %49
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %7, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @Assert(i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %87 [
    i32 128, label %62
    i32 130, label %62
    i32 129, label %81
  ]

62:                                               ; preds = %46, %46
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = bitcast %struct.TYPE_10__* %63 to %struct.TYPE_11__*
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = bitcast %struct.TYPE_10__* %69 to %struct.TYPE_11__*
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %9, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %76 = bitcast %struct.TYPE_10__* %75 to %struct.TYPE_11__*
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %10, align 4
  br label %95

81:                                               ; preds = %46
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %83 = bitcast %struct.TYPE_10__* %82 to %struct.TYPE_13__*
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %86 = load i32, i32* @InvalidOid, align 4
  store i32 %86, i32* %10, align 4
  br label %95

87:                                               ; preds = %46
  %88 = load i32, i32* @ERROR, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @elog(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @InvalidOid, align 4
  store i32 %93, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %94 = load i32, i32* @InvalidOid, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %87, %81, %62
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @TupleDescInitEntry(i32 %116, i32 %118, i32 %121, i32 %122, i32 %123, i32 0)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @TupleDescInitEntryCollation(i32 %127, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %95
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %42

135:                                              ; preds = %42
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %136
}

declare dso_local %struct.TYPE_12__* @palloc0(i32) #1

declare dso_local i32 @CreateTemplateTupleDesc(i32) #1

declare dso_local i8* @palloc(i32) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32 @TupleDescInitEntry(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @TupleDescInitEntryCollation(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
