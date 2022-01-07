; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_lookup_relunit.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_parse_date.c_timelib_lookup_relunit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@timelib_relunit_lookup = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i8**)* @timelib_lookup_relunit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @timelib_lookup_relunit(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i8** %0, i8*** %2, align 8
  %8 = load i8**, i8*** %2, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %4, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  br label %10

10:                                               ; preds = %78, %1
  %11 = load i8**, i8*** %2, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %76

16:                                               ; preds = %10
  %17 = load i8**, i8*** %2, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 32
  br i1 %21, label %22, label %76

22:                                               ; preds = %16
  %23 = load i8**, i8*** %2, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 44
  br i1 %27, label %28, label %76

28:                                               ; preds = %22
  %29 = load i8**, i8*** %2, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 9
  br i1 %33, label %34, label %76

34:                                               ; preds = %28
  %35 = load i8**, i8*** %2, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 59
  br i1 %39, label %40, label %76

40:                                               ; preds = %34
  %41 = load i8**, i8*** %2, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 58
  br i1 %45, label %46, label %76

46:                                               ; preds = %40
  %47 = load i8**, i8*** %2, align 8
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 47
  br i1 %51, label %52, label %76

52:                                               ; preds = %46
  %53 = load i8**, i8*** %2, align 8
  %54 = load i8*, i8** %53, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 46
  br i1 %57, label %58, label %76

58:                                               ; preds = %52
  %59 = load i8**, i8*** %2, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 45
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load i8**, i8*** %2, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 40
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i8**, i8*** %2, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 41
  br label %76

76:                                               ; preds = %70, %64, %58, %52, %46, %40, %34, %28, %22, %16, %10
  %77 = phi i1 [ false, %64 ], [ false, %58 ], [ false, %52 ], [ false, %46 ], [ false, %40 ], [ false, %34 ], [ false, %28 ], [ false, %22 ], [ false, %16 ], [ false, %10 ], [ %75, %70 ]
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  %79 = load i8**, i8*** %2, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %79, align 8
  br label %10

82:                                               ; preds = %76
  %83 = load i8**, i8*** %2, align 8
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %5, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = ptrtoint i8* %85 to i64
  %88 = ptrtoint i8* %86 to i64
  %89 = sub i64 %87, %88
  %90 = add nsw i64 %89, 1
  %91 = trunc i64 %90 to i32
  %92 = call i8* @timelib_calloc(i32 1, i32 %91)
  store i8* %92, i8** %3, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = ptrtoint i8* %95 to i64
  %98 = ptrtoint i8* %96 to i64
  %99 = sub i64 %97, %98
  %100 = trunc i64 %99 to i32
  %101 = call i32 @memcpy(i8* %93, i8* %94, i32 %100)
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timelib_relunit_lookup, align 8
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %6, align 8
  br label %103

103:                                              ; preds = %118, %82
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load i8*, i8** %3, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @timelib_strcasecmp(i8* %109, i64 %112)
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %108
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %116, %struct.TYPE_4__** %7, align 8
  br label %121

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 1
  store %struct.TYPE_4__* %120, %struct.TYPE_4__** %6, align 8
  br label %103

121:                                              ; preds = %115, %103
  %122 = load i8*, i8** %3, align 8
  %123 = call i32 @timelib_free(i8* %122)
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  ret %struct.TYPE_4__* %124
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
