; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresBeginForeignScan.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresBeginForeignScan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__, i8* }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32*, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i8*, i32, i32*, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32 }

@EXEC_FLAG_EXPLAIN_ONLY = common dso_local global i32 0, align 4
@FdwScanPrivateSelectSql = common dso_local global i32 0, align 4
@FdwScanPrivateRetrievedAttrs = common dso_local global i32 0, align 4
@FdwScanPrivateFetchSize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"postgres_fdw tuple data\00", align 1
@ALLOCSET_DEFAULT_SIZES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"postgres_fdw temporary data\00", align 1
@ALLOCSET_SMALL_SIZES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, i32)* @postgresBeginForeignScan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postgresBeginForeignScan(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %5, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %6, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @EXEC_FLAG_EXPLAIN_ONLY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %186

30:                                               ; preds = %2
  %31 = call i64 @palloc0(i32 88)
  %32 = inttoptr i64 %31 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %32, %struct.TYPE_21__** %7, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %34 = bitcast %struct.TYPE_21__* %33 to i8*
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  br label %52

47:                                               ; preds = %30
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bms_next_member(i32 %50, i32 -1)
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %55 = call %struct.TYPE_20__* @exec_rt_fetch(i32 %53, %struct.TYPE_15__* %54)
  store %struct.TYPE_20__* %55, %struct.TYPE_20__** %8, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  br label %66

64:                                               ; preds = %52
  %65 = call i64 (...) @GetUserId()
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i64 [ %63, %60 ], [ %65, %64 ]
  store i64 %67, i64* %9, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call %struct.TYPE_22__* @GetForeignTable(i32 %70)
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %10, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32* @GetUserMapping(i64 %72, i32 %75)
  store i32* %76, i32** %11, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @GetConnection(i32* %77, i32 0)
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 13
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 13
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @GetCursorNumber(i32 %83)
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 14
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @FdwScanPrivateSelectSql, align 4
  %93 = call i64 @list_nth(i32 %91, i32 %92)
  %94 = call i32 @strVal(i64 %93)
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 12
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @FdwScanPrivateRetrievedAttrs, align 4
  %101 = call i64 @list_nth(i32 %99, i32 %100)
  %102 = inttoptr i64 %101 to i32*
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 11
  store i32* %102, i32** %104, align 8
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @FdwScanPrivateFetchSize, align 4
  %109 = call i64 @list_nth(i32 %107, i32 %108)
  %110 = call i32 @intVal(i64 %109)
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 10
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @ALLOCSET_DEFAULT_SIZES, align 4
  %117 = call i8* @AllocSetContextCreate(i32 %115, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 9
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @ALLOCSET_SMALL_SIZES, align 4
  %124 = call i8* @AllocSetContextCreate(i32 %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 8
  store i8* %124, i8** %126, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %66
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 7
  store i32* %136, i32** %138, align 8
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 7
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @RelationGetDescr(i32* %141)
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 4
  br label %156

145:                                              ; preds = %66
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 7
  store i32* null, i32** %147, align 8
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  br label %156

156:                                              ; preds = %145, %132
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @TupleDescGetAttInMetadata(i32 %159)
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 6
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @list_length(i32 %165)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %186

172:                                              ; preds = %156
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %174 = bitcast %struct.TYPE_23__* %173 to i32*
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 4
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 2
  %185 = call i32 @prepare_query_params(i32* %174, i32 %177, i32 %178, i32* %180, i32* %182, i32* %184)
  br label %186

186:                                              ; preds = %29, %172, %156
  ret void
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @bms_next_member(i32, i32) #1

declare dso_local %struct.TYPE_20__* @exec_rt_fetch(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @GetUserId(...) #1

declare dso_local %struct.TYPE_22__* @GetForeignTable(i32) #1

declare dso_local i32* @GetUserMapping(i64, i32) #1

declare dso_local i32 @GetConnection(i32*, i32) #1

declare dso_local i32 @GetCursorNumber(i32) #1

declare dso_local i32 @strVal(i64) #1

declare dso_local i64 @list_nth(i32, i32) #1

declare dso_local i32 @intVal(i64) #1

declare dso_local i8* @AllocSetContextCreate(i32, i8*, i32) #1

declare dso_local i32 @RelationGetDescr(i32*) #1

declare dso_local i32 @TupleDescGetAttInMetadata(i32) #1

declare dso_local i32 @list_length(i32) #1

declare dso_local i32 @prepare_query_params(i32*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
