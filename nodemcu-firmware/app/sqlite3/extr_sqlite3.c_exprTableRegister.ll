; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_exprTableRegister.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sqlite3/extr_sqlite3.c_exprTableRegister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_17__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i32 }

@TK_REGISTER = common dso_local global i32 0, align 4
@SQLITE_AFF_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_18__*, %struct.TYPE_17__*, i32, i64)* @exprTableRegister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @exprTableRegister(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %12, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %17 = load i32, i32* @TK_REGISTER, align 4
  %18 = call %struct.TYPE_19__* @sqlite3Expr(%struct.TYPE_16__* %16, i32 %17, i32 0)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %9, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %20 = icmp ne %struct.TYPE_19__* %19, null
  br i1 %20, label %21, label %73

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = icmp uge i64 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %24
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i64 %34
  store %struct.TYPE_20__* %35, %struct.TYPE_20__** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %37, %38
  %40 = add i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %30
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %11, align 8
  br label %60

60:                                               ; preds = %54, %30
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = call %struct.TYPE_19__* @sqlite3ExprAddCollateString(%struct.TYPE_18__* %61, %struct.TYPE_19__* %62, i8* %63)
  store %struct.TYPE_19__* %64, %struct.TYPE_19__** %9, align 8
  br label %72

65:                                               ; preds = %24, %21
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @SQLITE_AFF_INTEGER, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %65, %60
  br label %73

73:                                               ; preds = %72, %4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  ret %struct.TYPE_19__* %74
}

declare dso_local %struct.TYPE_19__* @sqlite3Expr(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.TYPE_19__* @sqlite3ExprAddCollateString(%struct.TYPE_18__*, %struct.TYPE_19__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
