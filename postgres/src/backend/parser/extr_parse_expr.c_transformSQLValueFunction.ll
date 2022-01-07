; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_transformSQLValueFunction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_expr.c_transformSQLValueFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@DATEOID = common dso_local global i8* null, align 8
@TIMETZOID = common dso_local global i8* null, align 8
@TIMESTAMPTZOID = common dso_local global i8* null, align 8
@TIMEOID = common dso_local global i8* null, align 8
@TIMESTAMPOID = common dso_local global i8* null, align 8
@NAMEOID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_3__*)* @transformSQLValueFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @transformSQLValueFunction(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %72 [
    i32 141, label %8
    i32 138, label %12
    i32 135, label %16
    i32 137, label %26
    i32 136, label %30
    i32 133, label %40
    i32 130, label %44
    i32 132, label %54
    i32 131, label %58
    i32 140, label %68
    i32 134, label %68
    i32 128, label %68
    i32 129, label %68
    i32 142, label %68
    i32 139, label %68
  ]

8:                                                ; preds = %2
  %9 = load i8*, i8** @DATEOID, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  br label %72

12:                                               ; preds = %2
  %13 = load i8*, i8** @TIMETZOID, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  br label %72

16:                                               ; preds = %2
  %17 = load i8*, i8** @TIMETZOID, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @anytime_typmod_check(i32 1, i8* %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  br label %72

26:                                               ; preds = %2
  %27 = load i8*, i8** @TIMESTAMPTZOID, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  br label %72

30:                                               ; preds = %2
  %31 = load i8*, i8** @TIMESTAMPTZOID, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @anytimestamp_typmod_check(i32 1, i8* %36)
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %72

40:                                               ; preds = %2
  %41 = load i8*, i8** @TIMEOID, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %72

44:                                               ; preds = %2
  %45 = load i8*, i8** @TIMEOID, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i8* @anytime_typmod_check(i32 0, i8* %50)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %72

54:                                               ; preds = %2
  %55 = load i8*, i8** @TIMESTAMPOID, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i8* %55, i8** %57, align 8
  br label %72

58:                                               ; preds = %2
  %59 = load i8*, i8** @TIMESTAMPOID, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @anytimestamp_typmod_check(i32 0, i8* %64)
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  br label %72

68:                                               ; preds = %2, %2, %2, %2, %2, %2
  %69 = load i8*, i8** @NAMEOID, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  br label %72

72:                                               ; preds = %2, %68, %58, %54, %44, %40, %30, %26, %16, %12, %8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = bitcast %struct.TYPE_3__* %73 to i32*
  ret i32* %74
}

declare dso_local i8* @anytime_typmod_check(i32, i8*) #1

declare dso_local i8* @anytimestamp_typmod_check(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
