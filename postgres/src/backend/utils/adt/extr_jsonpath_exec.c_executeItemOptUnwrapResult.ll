; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeItemOptUnwrapResult.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_jsonpath_exec.c_executeItemOptUnwrapResult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i32 }

@jbvArray = common dso_local global i64 0, align 8
@jperOk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_15__*, i32, %struct.TYPE_16__*)* @executeItemOptUnwrapResult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @executeItemOptUnwrapResult(i32* %0, i32* %1, %struct.TYPE_15__* %2, i32 %3, %struct.TYPE_16__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %5
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @jspAutoUnwrap(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = bitcast %struct.TYPE_16__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = call i32 @executeItem(i32* %24, i32* %25, %struct.TYPE_15__* %26, %struct.TYPE_16__* %12)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = call i64 @jperIsError(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %6, align 4
  br label %68

33:                                               ; preds = %22
  %34 = call i32 @JsonValueListInitIterator(%struct.TYPE_16__* %12, i32* %13)
  br label %35

35:                                               ; preds = %59, %33
  %36 = call %struct.TYPE_15__* @JsonValueListNext(%struct.TYPE_16__* %12, i32* %13)
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %15, align 8
  %37 = icmp ne %struct.TYPE_15__* %36, null
  br i1 %37, label %38, label %60

38:                                               ; preds = %35
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @jbvArray, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @Assert(i32 %44)
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %47 = call i64 @JsonbType(%struct.TYPE_15__* %46)
  %48 = load i64, i64* @jbvArray, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = call i32 @executeItemUnwrapTargetArray(i32* %51, i32* null, %struct.TYPE_15__* %52, %struct.TYPE_16__* %53, i32 0)
  br label %59

55:                                               ; preds = %38
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %58 = call i32 @JsonValueListAppend(%struct.TYPE_16__* %56, %struct.TYPE_15__* %57)
  br label %59

59:                                               ; preds = %55, %50
  br label %35

60:                                               ; preds = %35
  %61 = load i32, i32* @jperOk, align 4
  store i32 %61, i32* %6, align 4
  br label %68

62:                                               ; preds = %18, %5
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %67 = call i32 @executeItem(i32* %63, i32* %64, %struct.TYPE_15__* %65, %struct.TYPE_16__* %66)
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %62, %60, %31
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i64 @jspAutoUnwrap(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @executeItem(i32*, i32*, %struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i64 @jperIsError(i32) #1

declare dso_local i32 @JsonValueListInitIterator(%struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_15__* @JsonValueListNext(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @JsonbType(%struct.TYPE_15__*) #1

declare dso_local i32 @executeItemUnwrapTargetArray(i32*, i32*, %struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @JsonValueListAppend(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
