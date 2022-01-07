; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_subselect.c_hash_ok_operator.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/optimizer/plan/extr_subselect.c_hash_ok_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ARRAY_EQ_OP = common dso_local global i64 0, align 8
@OPEROID = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cache lookup failed for operator %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @hash_ok_operator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_ok_operator(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @list_length(i32 %13)
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

17:                                               ; preds = %1
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @ARRAY_EQ_OP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @linitial(i32 %24)
  store i32* %25, i32** %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @exprType(i32* %27)
  %29 = call i32 @op_hashjoinable(i64 %26, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %62

30:                                               ; preds = %17
  %31 = load i32, i32* @OPEROID, align 4
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @ObjectIdGetDatum(i64 %32)
  %34 = call i32 @SearchSysCache1(i32 %31, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @HeapTupleIsValid(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ERROR, align 4
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @elog(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %38, %30
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @GETSTRUCT(i32 %43)
  %45 = inttoptr i64 %44 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %7, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @func_strict(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50, %42
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ReleaseSysCache(i32 %57)
  store i32 0, i32* %2, align 4
  br label %62

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ReleaseSysCache(i32 %60)
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %56, %21, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @list_length(i32) #1

declare dso_local i32* @linitial(i32) #1

declare dso_local i32 @op_hashjoinable(i64, i32) #1

declare dso_local i32 @exprType(i32*) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i64) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i32 @elog(i32, i8*, i64) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @func_strict(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
