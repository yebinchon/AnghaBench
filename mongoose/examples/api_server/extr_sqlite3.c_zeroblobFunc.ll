; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_zeroblobFunc.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_zeroblobFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64* }

@SQLITE_LIMIT_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @zeroblobFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zeroblobFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.TYPE_3__* @sqlite3_context_db_handle(i32* %9)
  store %struct.TYPE_3__* %10, %struct.TYPE_3__** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @UNUSED_PARAMETER(i32 %15)
  %17 = load i32**, i32*** %6, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  %20 = call i64 @sqlite3_value_int64(i32* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %21, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @testcase(i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = icmp eq i64 %31, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @testcase(i32 %40)
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %42, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %3
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @sqlite3_result_error_toobig(i32* %51)
  br label %58

53:                                               ; preds = %3
  %54 = load i32*, i32** %4, align 8
  %55 = load i64, i64* %7, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @sqlite3_result_zeroblob(i32* %54, i32 %56)
  br label %58

58:                                               ; preds = %53, %50
  ret void
}

declare dso_local %struct.TYPE_3__* @sqlite3_context_db_handle(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i64 @sqlite3_value_int64(i32*) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i32 @sqlite3_result_error_toobig(i32*) #1

declare dso_local i32 @sqlite3_result_zeroblob(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
