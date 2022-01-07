; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_lookup_month.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_lookup_month.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@timelib_month_lookup = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @timelib_lookup_month to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timelib_lookup_month(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i8** %0, i8*** %2, align 8
  %8 = load i8**, i8*** %2, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %38, %1
  %11 = load i8**, i8*** %2, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp sge i32 %14, 65
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i8**, i8*** %2, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sle i32 %20, 90
  br i1 %21, label %36, label %22

22:                                               ; preds = %16, %10
  %23 = load i8**, i8*** %2, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sge i32 %26, 97
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i8**, i8*** %2, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sle i32 %32, 122
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i1 [ false, %22 ], [ %33, %28 ]
  br label %36

36:                                               ; preds = %34, %16
  %37 = phi i1 [ true, %16 ], [ %35, %34 ]
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = load i8**, i8*** %2, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %39, align 8
  br label %10

42:                                               ; preds = %36
  %43 = load i8**, i8*** %2, align 8
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = add nsw i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = call i8* @timelib_calloc(i32 1, i32 %51)
  store i8* %52, i8** %3, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(i8* %53, i8* %54, i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timelib_month_lookup, align 8
  store %struct.TYPE_3__* %62, %struct.TYPE_3__** %7, align 8
  br label %63

63:                                               ; preds = %80, %42
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %63
  %69 = load i8*, i8** %3, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @timelib_strcasecmp(i8* %69, i64 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %68
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 1
  store %struct.TYPE_3__* %82, %struct.TYPE_3__** %7, align 8
  br label %63

83:                                               ; preds = %63
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @timelib_free(i8* %84)
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i8* @timelib_calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @timelib_strcasecmp(i8*, i64) #1

declare dso_local i32 @timelib_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
