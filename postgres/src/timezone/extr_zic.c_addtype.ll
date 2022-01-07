; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_addtype.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_zic.c_addtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"UT offset out of range\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@charcnt = common dso_local global i32 0, align 4
@chars = common dso_local global i32* null, align 8
@typecnt = common dso_local global i32 0, align 4
@utoffs = common dso_local global i64* null, align 8
@isdsts = common dso_local global i32* null, align 8
@desigidx = common dso_local global i32* null, align 8
@ttisstds = common dso_local global i32* null, align 8
@ttisuts = common dso_local global i32* null, align 8
@TZ_MAX_TYPES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"too many local time types\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32, i32, i32)* @addtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addtype(i64 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %7, align 8
  %15 = icmp sle i64 -2147483648, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i64, i64* %7, align 8
  %18 = icmp sle i64 %17, 2147483647
  br i1 %18, label %24, label %19

19:                                               ; preds = %16, %5
  %20 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @error(i32 %20)
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @exit(i32 %22) #3
  unreachable

24:                                               ; preds = %16
  %25 = call i32 (...) @want_bloat()
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %24
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @charcnt, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i32*, i32** @chars, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strcmp(i32* %37, i8* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %46

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %29

46:                                               ; preds = %41, %29
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @charcnt, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @newabbr(i8* %51)
  br label %105

53:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %101, %53
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @typecnt, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %104

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = load i64*, i64** @utoffs, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %58
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** @isdsts, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %67, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %66
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** @desigidx, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %75, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %74
  %83 = load i32, i32* %10, align 4
  %84 = load i32*, i32** @ttisstds, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %83, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %82
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** @ttisuts, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %91, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %6, align 4
  br label %143

100:                                              ; preds = %90, %82, %74, %66, %58
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %54

104:                                              ; preds = %54
  br label %105

105:                                              ; preds = %104, %50
  %106 = load i32, i32* @typecnt, align 4
  %107 = load i32, i32* @TZ_MAX_TYPES, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %111 = call i32 @error(i32 %110)
  %112 = load i32, i32* @EXIT_FAILURE, align 4
  %113 = call i32 @exit(i32 %112) #3
  unreachable

114:                                              ; preds = %105
  %115 = load i32, i32* @typecnt, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* @typecnt, align 4
  store i32 %115, i32* %12, align 4
  %117 = load i64, i64* %7, align 8
  %118 = load i64*, i64** @utoffs, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  store i64 %117, i64* %121, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32*, i32** @isdsts, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32*, i32** @ttisstds, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32*, i32** @ttisuts, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32*, i32** @desigidx, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  store i32 %137, i32* %141, align 4
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %114, %98
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local i32 @error(i32) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @want_bloat(...) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @newabbr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
