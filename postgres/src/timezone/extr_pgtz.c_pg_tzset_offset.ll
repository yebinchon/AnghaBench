; ModuleID = '/home/carl/AnghaBench/postgres/src/timezone/extr_pgtz.c_pg_tzset_offset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/timezone/extr_pgtz.c_pg_tzset_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%02ld\00", align 1
@SECS_PER_HOUR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c":%02ld\00", align 1
@SECS_PER_MINUTE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"<-%s>+%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"<+%s>-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pg_tzset_offset(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca [128 x i8], align 16
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = sub nsw i64 0, %9
  br label %13

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i64 [ %10, %8 ], [ %12, %11 ]
  store i64 %14, i64* %3, align 8
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @SECS_PER_HOUR, align 8
  %18 = sdiv i64 %16, %17
  %19 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %15, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* @SECS_PER_HOUR, align 8
  %21 = load i64, i64* %3, align 8
  %22 = srem i64 %21, %20
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %13
  %26 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %28 = call i32 @strlen(i8* %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %32 = call i32 @strlen(i8* %31)
  %33 = sext i32 %32 to i64
  %34 = sub i64 64, %33
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* @SECS_PER_MINUTE, align 8
  %38 = sdiv i64 %36, %37
  %39 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %30, i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i64, i64* @SECS_PER_MINUTE, align 8
  %41 = load i64, i64* %3, align 8
  %42 = srem i64 %41, %40
  store i64 %42, i64* %3, align 8
  %43 = load i64, i64* %3, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %25
  %46 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %48 = call i32 @strlen(i8* %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %52 = call i32 @strlen(i8* %51)
  %53 = sext i32 %52 to i64
  %54 = sub i64 64, %53
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %3, align 8
  %57 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  br label %58

58:                                               ; preds = %45, %25
  br label %59

59:                                               ; preds = %58, %13
  %60 = load i64, i64* %2, align 8
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %64 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %66 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %63, i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %64, i8* %65)
  br label %72

67:                                               ; preds = %59
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %71 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %69, i8* %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %74 = call i32* @pg_tzset(i8* %73)
  ret i32* %74
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @pg_tzset(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
