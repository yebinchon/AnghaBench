; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_create.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@InvalidOid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"cannot determine OID of function lo_create\0A\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lo_create(%struct.TYPE_12__* %0, i32 %1) #0 {
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
  br i1 %16, label %17, label %24

17:                                               ; preds = %12, %2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = call i64 @lo_initialize(%struct.TYPE_12__* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @InvalidOid, align 4
  store i32 %22, i32* %3, align 4
  br label %66

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %12
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = call i32 @libpq_gettext(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @printfPQExpBuffer(i32* %33, i32 %34)
  %36 = load i32, i32* @InvalidOid, align 4
  store i32 %36, i32* %3, align 4
  br label %66

37:                                               ; preds = %24
  %38 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i32 4, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds [1 x %struct.TYPE_11__], [1 x %struct.TYPE_11__]* %6, i64 0, i64 0
  %53 = call i32* @PQfn(%struct.TYPE_12__* %46, i64 %51, i32* %8, i32* %9, i32 1, %struct.TYPE_11__* %52, i32 1)
  store i32* %53, i32** %7, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i64 @PQresultStatus(i32* %54)
  %56 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @PQclear(i32* %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %66

62:                                               ; preds = %37
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @PQclear(i32* %63)
  %65 = load i32, i32* @InvalidOid, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %58, %31, %21
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @lo_initialize(%struct.TYPE_12__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32* @PQfn(%struct.TYPE_12__*, i64, i32*, i32*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
