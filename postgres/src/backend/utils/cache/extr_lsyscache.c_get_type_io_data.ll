; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_type_io_data.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/cache/extr_lsyscache.c_get_type_io_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8, i8, i32, i32, i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"binary I/O not supported during bootstrap\00", align 1
@TYPEOID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cache lookup failed for type %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_type_io_data(i32 %0, i32 %1, i32* %2, i32* %3, i8* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_2__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %21 = call i64 (...) @IsBootstrapProcessingMode()
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %8
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = call i32 @boot_get_type_io_data(i32 %24, i32* %25, i32* %26, i8* %27, i8* %28, i32* %29, i32* %19, i32* %20)
  %31 = load i32, i32* %10, align 4
  switch i32 %31, label %38 [
    i32 131, label %32
    i32 130, label %35
  ]

32:                                               ; preds = %23
  %33 = load i32, i32* %19, align 4
  %34 = load i32*, i32** %16, align 8
  store i32 %33, i32* %34, align 4
  br label %41

35:                                               ; preds = %23
  %36 = load i32, i32* %20, align 4
  %37 = load i32*, i32** %16, align 8
  store i32 %36, i32* %37, align 4
  br label %41

38:                                               ; preds = %23
  %39 = load i32, i32* @ERROR, align 4
  %40 = call i32 (i32, i8*, ...) @elog(i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %35, %32
  br label %101

42:                                               ; preds = %8
  %43 = load i32, i32* @TYPEOID, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @ObjectIdGetDatum(i32 %44)
  %46 = call i32 @SearchSysCache1(i32 %43, i32 %45)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @HeapTupleIsValid(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @ERROR, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 (i32, i8*, ...) @elog(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %50, %42
  %55 = load i32, i32* %17, align 4
  %56 = call i64 @GETSTRUCT(i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %57, %struct.TYPE_2__** %18, align 8
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %11, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %12, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 4
  %69 = load i8*, i8** %13, align 8
  store i8 %68, i8* %69, align 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i8, i8* %71, align 1
  %73 = load i8*, i8** %14, align 8
  store i8 %72, i8* %73, align 1
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @getTypeIOParam(i32 %74)
  %76 = load i32*, i32** %15, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %10, align 4
  switch i32 %77, label %98 [
    i32 131, label %78
    i32 130, label %83
    i32 129, label %88
    i32 128, label %93
  ]

78:                                               ; preds = %54
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %16, align 8
  store i32 %81, i32* %82, align 4
  br label %98

83:                                               ; preds = %54
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %16, align 8
  store i32 %86, i32* %87, align 4
  br label %98

88:                                               ; preds = %54
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %16, align 8
  store i32 %91, i32* %92, align 4
  br label %98

93:                                               ; preds = %54
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %16, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %54, %93, %88, %83, %78
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @ReleaseSysCache(i32 %99)
  br label %101

101:                                              ; preds = %98, %41
  ret void
}

declare dso_local i64 @IsBootstrapProcessingMode(...) #1

declare dso_local i32 @boot_get_type_io_data(i32, i32*, i32*, i8*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @SearchSysCache1(i32, i32) #1

declare dso_local i32 @ObjectIdGetDatum(i32) #1

declare dso_local i32 @HeapTupleIsValid(i32) #1

declare dso_local i64 @GETSTRUCT(i32) #1

declare dso_local i32 @getTypeIOParam(i32) #1

declare dso_local i32 @ReleaseSysCache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
