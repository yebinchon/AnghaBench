; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_timestamp.c_timestamp2tm.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_timestamp.c_timestamp2tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i8*, i64, i32, i32, i32, i64, i32 }

@USECS_PER_DAY = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@SECS_PER_HOUR = common dso_local global i32 0, align 4
@TIMEZONE_GLOBAL = common dso_local global i32 0, align 4
@TZNAME_GLOBAL = common dso_local global i8** null, align 8
@USECS_PER_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, %struct.tm*, i32*, i8**)* @timestamp2tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timestamp2tm(i64 %0, i32* %1, %struct.tm* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.tm* %2, %struct.tm** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %15 = call i64 @date2j(i32 2000, i32 1, i32 1)
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* %7, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %14, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @USECS_PER_DAY, align 8
  %20 = call i32 @TMODULO(i64 %17, i64 %18, i64 %19)
  %21 = load i64, i64* %14, align 8
  %22 = call i64 @INT64CONST(i32 0)
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i64, i64* @USECS_PER_DAY, align 8
  %26 = load i64, i64* %14, align 8
  %27 = add nsw i64 %26, %25
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %12, align 8
  %29 = sub nsw i64 %28, 1
  store i64 %29, i64* %12, align 8
  br label %30

30:                                               ; preds = %24, %5
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %12, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @INT_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %30
  store i32 -1, i32* %6, align 4
  br label %111

41:                                               ; preds = %36
  %42 = load i64, i64* %12, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.tm*, %struct.tm** %9, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 0
  %46 = load %struct.tm*, %struct.tm** %9, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 8
  %48 = load %struct.tm*, %struct.tm** %9, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 7
  %50 = call i32 @j2date(i32 %43, i32* %45, i64* %47, i32* %49)
  %51 = load i64, i64* %14, align 8
  %52 = load %struct.tm*, %struct.tm** %9, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %52, i32 0, i32 6
  %54 = load %struct.tm*, %struct.tm** %9, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 5
  %56 = load %struct.tm*, %struct.tm** %9, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 9
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @dt2time(i64 %51, i32* %53, i32* %55, i32* %57, i32* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %93

62:                                               ; preds = %41
  %63 = load %struct.tm*, %struct.tm** %9, align 8
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.tm*, %struct.tm** %9, align 8
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.tm*, %struct.tm** %9, align 8
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @IS_VALID_UTIME(i32 %65, i64 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %62
  %75 = load i32*, i32** %8, align 8
  store i32 0, i32* %75, align 4
  %76 = load %struct.tm*, %struct.tm** %9, align 8
  %77 = getelementptr inbounds %struct.tm, %struct.tm* %76, i32 0, i32 1
  store i32 -1, i32* %77, align 4
  %78 = load i8**, i8*** %11, align 8
  %79 = icmp ne i8** %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i8**, i8*** %11, align 8
  store i8* null, i8** %81, align 8
  br label %82

82:                                               ; preds = %80, %74
  br label %92

83:                                               ; preds = %62
  %84 = load i32*, i32** %8, align 8
  store i32 0, i32* %84, align 4
  %85 = load %struct.tm*, %struct.tm** %9, align 8
  %86 = getelementptr inbounds %struct.tm, %struct.tm* %85, i32 0, i32 1
  store i32 -1, i32* %86, align 4
  %87 = load i8**, i8*** %11, align 8
  %88 = icmp ne i8** %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = load i8**, i8*** %11, align 8
  store i8* null, i8** %90, align 8
  br label %91

91:                                               ; preds = %89, %83
  br label %92

92:                                               ; preds = %91, %82
  br label %101

93:                                               ; preds = %41
  %94 = load %struct.tm*, %struct.tm** %9, align 8
  %95 = getelementptr inbounds %struct.tm, %struct.tm* %94, i32 0, i32 1
  store i32 -1, i32* %95, align 4
  %96 = load i8**, i8*** %11, align 8
  %97 = icmp ne i8** %96, null
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i8**, i8*** %11, align 8
  store i8* null, i8** %99, align 8
  br label %100

100:                                              ; preds = %98, %93
  br label %101

101:                                              ; preds = %100, %92
  %102 = load i64, i64* %12, align 8
  %103 = load %struct.tm*, %struct.tm** %9, align 8
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @date2j(i32 %105, i32 1, i32 1)
  %107 = sub nsw i64 %102, %106
  %108 = add nsw i64 %107, 1
  %109 = load %struct.tm*, %struct.tm** %9, align 8
  %110 = getelementptr inbounds %struct.tm, %struct.tm* %109, i32 0, i32 4
  store i64 %108, i64* %110, align 8
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %101, %40
  %112 = load i32, i32* %6, align 4
  ret i32 %112
}

declare dso_local i64 @date2j(i32, i32, i32) #1

declare dso_local i32 @TMODULO(i64, i64, i64) #1

declare dso_local i64 @INT64CONST(i32) #1

declare dso_local i32 @j2date(i32, i32*, i64*, i32*) #1

declare dso_local i32 @dt2time(i64, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @IS_VALID_UTIME(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
