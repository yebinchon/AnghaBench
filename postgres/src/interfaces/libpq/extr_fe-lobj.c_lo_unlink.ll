; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_unlink.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@PGRES_COMMAND_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lo_unlink(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.TYPE_11__], align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = icmp eq %struct.TYPE_12__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = icmp eq %struct.TYPE_10__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %12, %2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = call i64 @lo_initialize(%struct.TYPE_12__* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %51

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %12
  %24 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 1
  store i32 4, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %39 = call i32* @PQfn(%struct.TYPE_12__* %32, i32 %37, i32* %9, i32* %8, i32 1, %struct.TYPE_11__* %38, i32 1)
  store i32* %39, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i64 @PQresultStatus(i32* %40)
  %42 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %23
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @PQclear(i32* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %51

48:                                               ; preds = %23
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @PQclear(i32* %49)
  store i32 -1, i32* %3, align 4
  br label %51

51:                                               ; preds = %48, %44, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @lo_initialize(%struct.TYPE_12__*) #1

declare dso_local i32* @PQfn(%struct.TYPE_12__*, i32, i32*, i32*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
