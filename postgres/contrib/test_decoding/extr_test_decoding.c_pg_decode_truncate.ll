; ModuleID = '/home/carl/AnghaBench/postgres/contrib/test_decoding/extr_test_decoding.c_pg_decode_truncate.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/test_decoding/extr_test_decoding.c_pg_decode_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"table \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c": TRUNCATE:\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" restart_seqs\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" cascade\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" (no-flags)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, i32*, i32, %struct.TYPE_20__**, %struct.TYPE_19__*)* @pg_decode_truncate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pg_decode_truncate(%struct.TYPE_21__* %0, i32* %1, i32 %2, %struct.TYPE_20__** %3, %struct.TYPE_19__* %4) #0 {
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__**, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_20__** %3, %struct.TYPE_20__*** %9, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %10, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %11, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %5
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @pg_output_begin(%struct.TYPE_21__* %27, %struct.TYPE_18__* %28, i32* %29, i32 0)
  br label %31

31:                                               ; preds = %26, %21, %5
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MemoryContextSwitchTo(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = call i32 @OutputPluginPrepareWrite(%struct.TYPE_21__* %38, i32 1)
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @appendStringInfoString(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %82, %31
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  %49 = load i32, i32* %13, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @appendStringInfoString(i32 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %48
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %60, i64 %62
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @get_namespace_name(i32 %68)
  %70 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %9, align 8
  %71 = load i32, i32* %13, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %70, i64 %72
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @NameStr(i32 %78)
  %80 = call i8* @quote_qualified_identifier(i32 %69, i32 %79)
  %81 = call i32 @appendStringInfoString(i32 %59, i8* %80)
  br label %82

82:                                               ; preds = %56
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %44

85:                                               ; preds = %44
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @appendStringInfoString(i32 %88, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %85
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %96, %85
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @appendStringInfoString(i32 %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %115

115:                                              ; preds = %110, %103
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %115
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @appendStringInfoString(i32 %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %127

127:                                              ; preds = %122, %115
  br label %133

128:                                              ; preds = %96
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @appendStringInfoString(i32 %131, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %133

133:                                              ; preds = %128, %127
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @MemoryContextSwitchTo(i32 %134)
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @MemoryContextReset(i32 %138)
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = call i32 @OutputPluginWrite(%struct.TYPE_21__* %140, i32 1)
  ret void
}

declare dso_local i32 @pg_output_begin(%struct.TYPE_21__*, %struct.TYPE_18__*, i32*, i32) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32 @OutputPluginPrepareWrite(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @appendStringInfoString(i32, i8*) #1

declare dso_local i8* @quote_qualified_identifier(i32, i32) #1

declare dso_local i32 @get_namespace_name(i32) #1

declare dso_local i32 @NameStr(i32) #1

declare dso_local i32 @MemoryContextReset(i32) #1

declare dso_local i32 @OutputPluginWrite(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
