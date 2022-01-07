; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_FunctionIsVisible.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/catalog/extr_namespace.c_FunctionIsVisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_6__* }

@PROCOID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for function %u\00", align 1
@PG_CATALOG_NAMESPACE = common dso_local global i64 0, align 8
@activeSearchPath = common dso_local global i32 0, align 4
@NIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FunctionIsVisible(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %2, align 8
  %10 = load i32, i32* @PROCOID, align 4
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @ObjectIdGetDatum(i64 %11)
  %13 = call i32 @SearchSysCache1(i32 %10, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @HeapTupleIsValid(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ERROR, align 4
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @elog(i32 %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @GETSTRUCT(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %4, align 8
  %25 = call i32 (...) @recomputeNamespacePath()
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @PG_CATALOG_NAMESPACE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load i32, i32* @activeSearchPath, align 4
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @list_member_oid(i32 %33, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %82

38:                                               ; preds = %32, %21
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @NameStr(i32 %41)
  store i8* %42, i8** %7, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @makeString(i8* %46)
  %48 = call i32 @list_make1(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @NIL, align 4
  %51 = call %struct.TYPE_6__* @FuncnameGetCandidates(i32 %48, i32 %49, i32 %50, i32 0, i32 0, i32 0)
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %9, align 8
  br label %52

52:                                               ; preds = %77, %38
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %81

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i64 @memcmp(i32 %58, i32 %62, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %55
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %2, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %6, align 4
  br label %81

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  store %struct.TYPE_6__* %80, %struct.TYPE_6__** %9, align 8
  br label %52

81:                                               ; preds = %69, %52
  br label %82

82:                                               ; preds = %81, %37
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @ReleaseSysCache(i32 %83)
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @recomputeNamespacePath(...) #1

declare dso_local i32 @list_member_oid(i32, i64) #1

declare dso_local i8* @NameStr(i32) #1

declare dso_local %struct.TYPE_6__* @FuncnameGetCandidates(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @list_make1(i32) #1

declare dso_local i32 @makeString(i8*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
