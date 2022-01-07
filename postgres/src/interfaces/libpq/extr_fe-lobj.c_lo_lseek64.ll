; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_lseek64.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_lseek64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32* }

@.str = private unnamed_addr constant [45 x i8] c"cannot determine OID of function lo_lseek64\0A\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lo_lseek64(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x %struct.TYPE_11__], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = icmp eq %struct.TYPE_12__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = icmp eq %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16, %4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = call i64 @lo_initialize(%struct.TYPE_12__* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %89

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %16
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = call i32 @libpq_gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @printfPQExpBuffer(i32* %36, i32 %37)
  store i32 -1, i32* %5, align 4
  br label %89

39:                                               ; preds = %27
  %40 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %10, i64 0, i64 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 16
  %42 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %10, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store i32 4, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %10, i64 0, i64 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @lo_hton64(i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %10, i64 0, i64 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %10, i64 0, i64 1
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  store i32 8, i32* %53, align 4
  %54 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %10, i64 0, i64 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  store i32* %8, i32** %56, align 8
  %57 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %10, i64 0, i64 2
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 16
  %59 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %10, i64 0, i64 2
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32 4, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %10, i64 0, i64 2
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = bitcast i32* %12 to i8*
  %72 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %10, i64 0, i64 0
  %73 = call i32* @PQfn(%struct.TYPE_12__* %65, i64 %70, i8* %71, i32* %13, i32 0, %struct.TYPE_11__* %72, i32 3)
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i64 @PQresultStatus(i32* %74)
  %76 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %39
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 8
  br i1 %80, label %81, label %86

81:                                               ; preds = %78
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @PQclear(i32* %82)
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @lo_ntoh64(i32 %84)
  store i32 %85, i32* %5, align 4
  br label %89

86:                                               ; preds = %78, %39
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @PQclear(i32* %87)
  store i32 -1, i32* %5, align 4
  br label %89

89:                                               ; preds = %86, %81, %34, %25
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i64 @lo_initialize(%struct.TYPE_12__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32 @lo_hton64(i32) #1

declare dso_local i32* @PQfn(%struct.TYPE_12__*, i64, i8*, i32*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @lo_ntoh64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
