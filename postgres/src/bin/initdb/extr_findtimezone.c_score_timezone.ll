; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_findtimezone.c_score_timezone.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_findtimezone.c_score_timezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tztry = type { i32, i64* }
%struct.tm = type { i64, i32, i32, i32, i32, i64, i64 }
%struct.pg_tm = type { i32*, i64, i32, i32, i32, i32, i64, i64 }

@TZ_STRLEN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%Z\00", align 1
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tztry*)* @score_timezone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @score_timezone(i8* %0, %struct.tztry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tztry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca %struct.pg_tm*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.tztry* %1, %struct.tztry** %5, align 8
  %14 = load i32, i32* @TZ_STRLEN_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32* @pg_load_tz(i8* %19)
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %100

24:                                               ; preds = %2
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @pg_tz_acceptable(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %100

29:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %95, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.tztry*, %struct.tztry** %5, align 8
  %33 = getelementptr inbounds %struct.tztry, %struct.tztry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %98

36:                                               ; preds = %30
  %37 = load %struct.tztry*, %struct.tztry** %5, align 8
  %38 = getelementptr inbounds %struct.tztry, %struct.tztry* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %7, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call %struct.pg_tm* @pg_localtime(i64* %7, i32* %44)
  store %struct.pg_tm* %45, %struct.pg_tm** %9, align 8
  %46 = load %struct.pg_tm*, %struct.pg_tm** %9, align 8
  %47 = icmp ne %struct.pg_tm* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %36
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %100

49:                                               ; preds = %36
  %50 = load %struct.tztry*, %struct.tztry** %5, align 8
  %51 = getelementptr inbounds %struct.tztry, %struct.tztry* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = call %struct.tm* @localtime(i64* %55)
  store %struct.tm* %56, %struct.tm** %8, align 8
  %57 = load %struct.tm*, %struct.tm** %8, align 8
  %58 = icmp ne %struct.tm* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %100

61:                                               ; preds = %49
  %62 = load %struct.tm*, %struct.tm** %8, align 8
  %63 = load %struct.pg_tm*, %struct.pg_tm** %9, align 8
  %64 = call i32 @compare_tm(%struct.tm* %62, %struct.pg_tm* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %100

68:                                               ; preds = %61
  %69 = load %struct.tm*, %struct.tm** %8, align 8
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %68
  %74 = load %struct.pg_tm*, %struct.pg_tm** %9, align 8
  %75 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %100

79:                                               ; preds = %73
  %80 = trunc i64 %16 to i32
  %81 = call i32 @memset(i8* %18, i32 0, i32 %80)
  %82 = sub i64 %16, 1
  %83 = trunc i64 %82 to i32
  %84 = load %struct.tm*, %struct.tm** %8, align 8
  %85 = call i32 @strftime(i8* %18, i32 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.tm* %84)
  %86 = load %struct.pg_tm*, %struct.pg_tm** %9, align 8
  %87 = getelementptr inbounds %struct.pg_tm, %struct.pg_tm* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @strcmp(i8* %18, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %79
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %100

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %68
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %30

98:                                               ; preds = %30
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %100

100:                                              ; preds = %98, %91, %78, %66, %59, %48, %28, %23
  %101 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @pg_load_tz(i8*) #2

declare dso_local i32 @pg_tz_acceptable(i32*) #2

declare dso_local %struct.pg_tm* @pg_localtime(i64*, i32*) #2

declare dso_local %struct.tm* @localtime(i64*) #2

declare dso_local i32 @compare_tm(%struct.tm*, %struct.pg_tm*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #2

declare dso_local i64 @strcmp(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
