; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_find_matching_ts_config.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_find_matching_ts_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@tsearch_config_languages = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @find_matching_ts_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_matching_ts_config(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i8* @pg_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %5, align 8
  br label %46

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @pg_strdup(i8* %12)
  store i8* %13, i8** %5, align 8
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %41, %11
  %15 = load i8*, i8** %6, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 95
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i8*, i8** %6, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 45
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 46
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i8*, i8** %6, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 64
  br label %39

39:                                               ; preds = %34, %29, %24, %19, %14
  %40 = phi i1 [ false, %29 ], [ false, %24 ], [ false, %19 ], [ false, %14 ], [ %38, %34 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %6, align 8
  br label %14

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %9
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %75, %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsearch_config_languages, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %78

55:                                               ; preds = %47
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsearch_config_languages, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @pg_strcasecmp(i32 %61, i8* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %55
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tsearch_config_languages, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %2, align 8
  br label %81

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %47

78:                                               ; preds = %47
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @free(i8* %79)
  store i8* null, i8** %2, align 8
  br label %81

81:                                               ; preds = %78, %65
  %82 = load i8*, i8** %2, align 8
  ret i8* %82
}

declare dso_local i8* @pg_strdup(i8*) #1

declare dso_local i64 @pg_strcasecmp(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
