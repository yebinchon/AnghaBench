; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_regexp.c_transformGraph.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_regexp.c_transformGraph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i32, %struct.TYPE_16__*, i32, i64, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8** }

@NIL = common dso_local global i64 0, align 8
@CurrentMemoryContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Trigram NFA\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@HASH_CONTEXT = common dso_local global i32 0, align 4
@COLOR_UNKNOWN = common dso_local global i8* null, align 8
@TSTATE_INIT = common dso_local global i32 0, align 4
@TSTATE_FIN = common dso_local global i32 0, align 4
@MAX_EXPANDED_ARCS = common dso_local global i64 0, align 8
@MAX_EXPANDED_STATES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @transformGraph to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transformGraph(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_18__, align 4
  %4 = alloca %struct.TYPE_15__, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %7 = load i64, i64* @NIL, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load i64, i64* @NIL, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 7
  store i64 %10, i64* %12, align 8
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  store i32 16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 1
  store i32 4, i32* %18, align 4
  %19 = load i32, i32* @CurrentMemoryContext, align 4
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @HASH_ELEM, align 4
  %22 = load i32, i32* @HASH_BLOBS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @HASH_CONTEXT, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @hash_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 1024, %struct.TYPE_18__* %3, i32 %25)
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = call i32 @MemSet(%struct.TYPE_15__* %4, i32 0, i32 16)
  %32 = load i8*, i8** @COLOR_UNKNOWN, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i8**, i8*** %34, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  store i8* %32, i8** %36, align 8
  %37 = load i8*, i8** @COLOR_UNKNOWN, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  store i8* %37, i8** %41, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @pg_reg_getinitialstate(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %48 = call %struct.TYPE_16__* @getState(%struct.TYPE_17__* %47, %struct.TYPE_15__* %4)
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %5, align 8
  %49 = load i32, i32* @TSTATE_INIT, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 4
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %56, align 8
  br label %57

57:                                               ; preds = %105, %1
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @NIL, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %106

63:                                               ; preds = %57
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @linitial(i64 %66)
  %68 = inttoptr i64 %67 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %6, align 8
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @list_delete_first(i64 %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %63
  %80 = load i32, i32* @TSTATE_FIN, align 4
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %89

85:                                               ; preds = %63
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = call i32 @processState(%struct.TYPE_17__* %86, %struct.TYPE_16__* %87)
  br label %89

89:                                               ; preds = %85, %79
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MAX_EXPANDED_ARCS, align 8
  %94 = icmp sgt i64 %92, %93
  br i1 %94, label %102, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @hash_get_num_entries(i32 %98)
  %100 = load i64, i64* @MAX_EXPANDED_STATES, align 8
  %101 = icmp sgt i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %95, %89
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 2
  store i32 1, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %95
  br label %57

106:                                              ; preds = %57
  ret void
}

declare dso_local i32 @hash_create(i8*, i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @MemSet(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @pg_reg_getinitialstate(i32) #1

declare dso_local %struct.TYPE_16__* @getState(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

declare dso_local i64 @linitial(i64) #1

declare dso_local i64 @list_delete_first(i64) #1

declare dso_local i32 @processState(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i64 @hash_get_num_entries(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
