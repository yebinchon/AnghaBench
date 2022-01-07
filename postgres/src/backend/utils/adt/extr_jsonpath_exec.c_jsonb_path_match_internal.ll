; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_jsonb_path_match_internal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_jsonb_path_match_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@jbvBool = common dso_local global i64 0, align 8
@jbvNull = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"single boolean result is expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @jsonb_path_match_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsonb_path_match_internal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = call i32* @PG_GETARG_JSONB_P(i32 0)
  store i32* %12, i32** %6, align 8
  %13 = call i32* @PG_GETARG_JSONPATH_P(i32 1)
  store i32* %13, i32** %7, align 8
  %14 = bitcast %struct.TYPE_10__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  store i32* null, i32** %9, align 8
  store i32 1, i32* %10, align 4
  %15 = call i32 (...) @PG_NARGS()
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = call i32* @PG_GETARG_JSONB_P(i32 2)
  store i32* %18, i32** %9, align 8
  %19 = call i32 @PG_GETARG_BOOL(i32 3)
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %17, %2
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @executeJsonPath(i32* %21, i32* %22, i32* %23, i32 %27, %struct.TYPE_10__* %8, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @PG_FREE_IF_COPY(i32* %30, i32 0)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @PG_FREE_IF_COPY(i32* %32, i32 1)
  %34 = call i32 @JsonValueListLength(%struct.TYPE_10__* %8)
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %58

36:                                               ; preds = %20
  %37 = call %struct.TYPE_9__* @JsonValueListHead(%struct.TYPE_10__* %8)
  store %struct.TYPE_9__* %37, %struct.TYPE_9__** %11, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @jbvBool, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PG_RETURN_BOOL(i32 %47)
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @jbvNull, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 (...) @PG_RETURN_NULL()
  br label %57

57:                                               ; preds = %55, %49
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @ERROR, align 4
  %63 = load i32, i32* @ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED, align 4
  %64 = call i32 @errcode(i32 %63)
  %65 = call i32 @errmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %66 = call i32 @ereport(i32 %62, i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  %68 = call i32 (...) @PG_RETURN_NULL()
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32* @PG_GETARG_JSONB_P(i32) #1

declare dso_local i32* @PG_GETARG_JSONPATH_P(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @PG_NARGS(...) #1

declare dso_local i32 @PG_GETARG_BOOL(i32) #1

declare dso_local i32 @executeJsonPath(i32*, i32*, i32*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @PG_FREE_IF_COPY(i32*, i32) #1

declare dso_local i32 @JsonValueListLength(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @JsonValueListHead(%struct.TYPE_10__*) #1

declare dso_local i32 @PG_RETURN_BOOL(i32) #1

declare dso_local i32 @PG_RETURN_NULL(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errcode(i32) #1

declare dso_local i32 @errmsg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
