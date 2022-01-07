; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_jsonb_path_query_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_jsonb_path_query_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @jsonb_path_query_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonb_path_query_internal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %16 = call i64 (...) @SRF_IS_FIRSTCALL()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  %19 = bitcast %struct.TYPE_9__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = call %struct.TYPE_10__* (...) @SRF_FIRSTCALL_INIT()
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %6, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @MemoryContextSwitchTo(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = call i32* @PG_GETARG_JSONB_P_COPY(i32 0)
  store i32* %25, i32** %11, align 8
  %26 = call i32* @PG_GETARG_JSONPATH_P_COPY(i32 1)
  store i32* %26, i32** %10, align 8
  %27 = call i32* @PG_GETARG_JSONB_P_COPY(i32 2)
  store i32* %27, i32** %13, align 8
  %28 = call i32 @PG_GETARG_BOOL(i32 3)
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @executeJsonPath(i32* %29, i32* %30, i32* %31, i32 %35, %struct.TYPE_9__* %15, i32 %36)
  %38 = call i32* @JsonValueListGetList(%struct.TYPE_9__* %15)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @MemoryContextSwitchTo(i32 %41)
  br label %43

43:                                               ; preds = %18, %2
  %44 = call %struct.TYPE_10__* (...) @SRF_PERCALL_SETUP()
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %6, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32* @list_head(i32* %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %54 = call i32 @SRF_RETURN_DONE(%struct.TYPE_10__* %53)
  br label %55

55:                                               ; preds = %52, %43
  %56 = load i32*, i32** %9, align 8
  %57 = call i32* @lfirst(i32* %56)
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32* @list_delete_first(i32* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32* %59, i32** %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @JsonbValueToJsonb(i32* %63)
  %65 = call i32 @JsonbPGetDatum(i32 %64)
  %66 = call i32 @SRF_RETURN_NEXT(%struct.TYPE_10__* %62, i32 %65)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @SRF_IS_FIRSTCALL(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.TYPE_10__* @SRF_FIRSTCALL_INIT(...) #1

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i32* @PG_GETARG_JSONB_P_COPY(i32) #1

declare dso_local i32* @PG_GETARG_JSONPATH_P_COPY(i32) #1

declare dso_local i32 @PG_GETARG_BOOL(i32) #1

declare dso_local i32 @executeJsonPath(i32*, i32*, i32*, i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32* @JsonValueListGetList(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_10__* @SRF_PERCALL_SETUP(...) #1

declare dso_local i32* @list_head(i32*) #1

declare dso_local i32 @SRF_RETURN_DONE(%struct.TYPE_10__*) #1

declare dso_local i32* @lfirst(i32*) #1

declare dso_local i32* @list_delete_first(i32*) #1

declare dso_local i32 @SRF_RETURN_NEXT(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @JsonbPGetDatum(i32) #1

declare dso_local i32 @JsonbValueToJsonb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
