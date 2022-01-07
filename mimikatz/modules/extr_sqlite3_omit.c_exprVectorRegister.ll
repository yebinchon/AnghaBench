; ModuleID = '/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_exprVectorRegister.c'
source_filename = "/home/carl/AnghaBench/mimikatz/modules/extr_sqlite3_omit.c_exprVectorRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_19__* }

@TK_VECTOR = common dso_local global i64 0, align 8
@TK_REGISTER = common dso_local global i64 0, align 8
@TK_SELECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_19__*, i32, i32, %struct.TYPE_19__**, i32*)* @exprVectorRegister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exprVectorRegister(i32* %0, %struct.TYPE_19__* %1, i32 %2, i32 %3, %struct.TYPE_19__** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_19__** %4, %struct.TYPE_19__*** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* @TK_VECTOR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %6
  %22 = load i64, i64* %14, align 8
  %23 = load i64, i64* @TK_REGISTER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* @TK_SELECT, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %25, %21, %6
  %30 = phi i1 [ true, %21 ], [ true, %6 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* @TK_REGISTER, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call %struct.TYPE_19__* @sqlite3VectorFieldSubexpr(%struct.TYPE_19__* %37, i32 %38)
  %40 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %40, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %7, align 4
  br label %86

46:                                               ; preds = %29
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @TK_SELECT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  store %struct.TYPE_19__* %63, %struct.TYPE_19__** %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %7, align 4
  br label %86

68:                                               ; preds = %46
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %80, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %12, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @sqlite3ExprCodeTemp(i32* %81, %struct.TYPE_19__* %83, i32* %84)
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %68, %50, %36
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_19__* @sqlite3VectorFieldSubexpr(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @sqlite3ExprCodeTemp(i32*, %struct.TYPE_19__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
