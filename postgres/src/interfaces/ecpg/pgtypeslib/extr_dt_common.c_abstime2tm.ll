; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_abstime2tm.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/pgtypeslib/extr_dt_common.c_abstime2tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i64, i64 }

@errno = common dso_local global i64 0, align 8
@PGTYPES_TS_BAD_TIMESTAMP = common dso_local global i64 0, align 8
@MAXTZLEN = common dso_local global i64 0, align 8
@SECS_PER_HOUR = common dso_local global i32 0, align 4
@TIMEZONE_GLOBAL = common dso_local global i32 0, align 4
@TZNAME_GLOBAL = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.tm*, i8**)* @abstime2tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abstime2tm(i32 %0, i32* %1, %struct.tm* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.tm*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.tm* %2, %struct.tm** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %9, align 4
  store i64 0, i64* @errno, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call %struct.tm* @localtime(i32* %9)
  store %struct.tm* %15, %struct.tm** %10, align 8
  br label %18

16:                                               ; preds = %4
  %17 = call %struct.tm* @gmtime(i32* %9)
  store %struct.tm* %17, %struct.tm** %10, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load %struct.tm*, %struct.tm** %10, align 8
  %20 = icmp ne %struct.tm* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* @PGTYPES_TS_BAD_TIMESTAMP, align 8
  store i64 %22, i64* @errno, align 8
  br label %73

23:                                               ; preds = %18
  %24 = load %struct.tm*, %struct.tm** %10, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 8
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1900
  %28 = load %struct.tm*, %struct.tm** %7, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 8
  store i64 %27, i64* %29, align 8
  %30 = load %struct.tm*, %struct.tm** %10, align 8
  %31 = getelementptr inbounds %struct.tm, %struct.tm* %30, i32 0, i32 7
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  %34 = load %struct.tm*, %struct.tm** %7, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 7
  store i64 %33, i64* %35, align 8
  %36 = load %struct.tm*, %struct.tm** %10, align 8
  %37 = getelementptr inbounds %struct.tm, %struct.tm* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tm*, %struct.tm** %7, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tm*, %struct.tm** %10, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tm*, %struct.tm** %7, align 8
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 4
  %46 = load %struct.tm*, %struct.tm** %10, align 8
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.tm*, %struct.tm** %7, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.tm*, %struct.tm** %10, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tm*, %struct.tm** %7, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.tm*, %struct.tm** %10, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.tm*, %struct.tm** %7, align 8
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %23
  %64 = load i32*, i32** %6, align 8
  store i32 0, i32* %64, align 4
  %65 = load i8**, i8*** %8, align 8
  %66 = icmp ne i8** %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i8**, i8*** %8, align 8
  store i8* null, i8** %68, align 8
  br label %69

69:                                               ; preds = %67, %63
  br label %73

70:                                               ; preds = %23
  %71 = load %struct.tm*, %struct.tm** %7, align 8
  %72 = getelementptr inbounds %struct.tm, %struct.tm* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  br label %73

73:                                               ; preds = %21, %70, %69
  ret void
}

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local %struct.tm* @gmtime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
