; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery_op.c_join_tsqueries.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_tsquery_op.c_join_tsqueries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_7__**, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i64 }

@QTN_NEEDFREE = common dso_local global i32 0, align 4
@QI_OPR = common dso_local global i32 0, align 4
@OP_PHRASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32, i32, i64, i32)* @join_tsqueries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @join_tsqueries(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i64 @palloc0(i32 32)
  %11 = inttoptr i64 %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %9, align 8
  %12 = load i32, i32* @QTN_NEEDFREE, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = call i64 @palloc0(i32 24)
  %18 = inttoptr i64 %17 to %struct.TYPE_6__*
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %20, align 8
  %21 = load i32, i32* @QI_OPR, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  store i64 %26, i64* %31, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @OP_PHRASE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 8
  br label %42

42:                                               ; preds = %35, %4
  %43 = call i64 @palloc0(i32 16)
  %44 = inttoptr i64 %43 to %struct.TYPE_7__**
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store %struct.TYPE_7__** %44, %struct.TYPE_7__*** %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @GETQUERY(i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @GETOPERAND(i32 %49)
  %51 = call i8* @QT2QTN(i32 %48, i32 %50)
  %52 = bitcast i8* %51 to %struct.TYPE_7__*
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %55, i64 0
  store %struct.TYPE_7__* %52, %struct.TYPE_7__** %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @GETQUERY(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @GETOPERAND(i32 %59)
  %61 = call i8* @QT2QTN(i32 %58, i32 %60)
  %62 = bitcast i8* %61 to %struct.TYPE_7__*
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %65, i64 1
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 2, i32* %68, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  ret %struct.TYPE_7__* %69
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i8* @QT2QTN(i32, i32) #1

declare dso_local i32 @GETQUERY(i32) #1

declare dso_local i32 @GETOPERAND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
