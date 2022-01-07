; ModuleID = '/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresGetForeignUpperPaths.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/postgres_fdw/extr_postgres_fdw.c_postgresGetForeignUpperPaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unexpected upper relation: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, i8*)* @postgresGetForeignUpperPaths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @postgresGetForeignUpperPaths(i32* %0, i32 %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16, %5
  br label %74

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 129
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 128
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 130
  br i1 %32, label %38, label %33

33:                                               ; preds = %30, %27, %24
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = icmp ne %struct.TYPE_12__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %30
  br label %74

39:                                               ; preds = %33
  %40 = call i64 @palloc0(i32 8)
  %41 = inttoptr i64 %40 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %41, %struct.TYPE_12__** %11, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %49, align 8
  %50 = load i32, i32* %7, align 4
  switch i32 %50, label %70 [
    i32 129, label %51
    i32 128, label %58
    i32 130, label %63
  ]

51:                                               ; preds = %39
  %52 = load i32*, i32** %6, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = call i32 @add_foreign_grouping_paths(i32* %52, %struct.TYPE_11__* %53, %struct.TYPE_11__* %54, i32* %56)
  br label %74

58:                                               ; preds = %39
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %62 = call i32 @add_foreign_ordered_paths(i32* %59, %struct.TYPE_11__* %60, %struct.TYPE_11__* %61)
  br label %74

63:                                               ; preds = %39
  %64 = load i32*, i32** %6, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = call i32 @add_foreign_final_paths(i32* %64, %struct.TYPE_11__* %65, %struct.TYPE_11__* %66, i32* %68)
  br label %74

70:                                               ; preds = %39
  %71 = load i32, i32* @ERROR, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @elog(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %23, %38, %70, %63, %58, %51
  ret void
}

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @add_foreign_grouping_paths(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @add_foreign_ordered_paths(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @add_foreign_final_paths(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
