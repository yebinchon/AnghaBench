; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_timerange_option.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_timerange_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@min_time = common dso_local global i64 0, align 8
@max_time = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@PG_INT64_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@PG_INT64_MIN = common dso_local global i64 0, align 8
@lo_time = common dso_local global i64 0, align 8
@hi_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @timerange_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timerange_option(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i64, i64* @min_time, align 8
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* @max_time, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 64
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  store i64 0, i64* @errno, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = call i64 @strtoimax(i8* %17, i8** %6, i32 10)
  store i64 %18, i64* %4, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = icmp eq i8* %19, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %15
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @PG_INT64_MAX, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ERANGE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %15
  store i32 0, i32* %2, align 4
  br label %111

32:                                               ; preds = %27, %23
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 47
  br i1 %39, label %40, label %74

40:                                               ; preds = %33
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 64
  br i1 %45, label %46, label %74

46:                                               ; preds = %40
  store i64 0, i64* @errno, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = call i64 @strtoimax(i8* %48, i8** %7, i32 10)
  store i64 %49, i64* %5, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = icmp eq i8* %50, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @PG_INT64_MIN, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %46
  store i32 0, i32* %2, align 4
  br label %111

59:                                               ; preds = %54
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @PG_INT64_MAX, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i64, i64* @errno, align 8
  %65 = load i64, i64* @ERANGE, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %5, align 8
  %73 = sub nsw i64 %72, %71
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %67, %40, %33
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %4, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* @max_time, align 8
  %85 = load i64, i64* %4, align 8
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* @min_time, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87, %83, %79, %74
  store i32 0, i32* %2, align 4
  br label %111

92:                                               ; preds = %87
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @min_time, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i64, i64* @min_time, align 8
  br label %100

98:                                               ; preds = %92
  %99 = load i64, i64* %4, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i64 [ %97, %96 ], [ %99, %98 ]
  store i64 %101, i64* @lo_time, align 8
  %102 = load i64, i64* @max_time, align 8
  %103 = load i64, i64* %5, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i64, i64* @max_time, align 8
  br label %109

107:                                              ; preds = %100
  %108 = load i64, i64* %5, align 8
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i64 [ %106, %105 ], [ %108, %107 ]
  store i64 %110, i64* @hi_time, align 8
  store i32 1, i32* %2, align 4
  br label %111

111:                                              ; preds = %109, %91, %58, %31
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @strtoimax(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
