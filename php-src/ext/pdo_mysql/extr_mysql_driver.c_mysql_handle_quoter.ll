; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_mysql/extr_mysql_driver.c_mysql_handle_quoter.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_mysql/extr_mysql_driver.c_mysql_handle_quoter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64 }

@PDO_PARAM_STR_NATL = common dso_local global i32 0, align 4
@PDO_PARAM_STR_CHAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"mysql_handle_quoter\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"dbh=%p\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"unquoted=%.*s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"quoted=%.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64, i8**, i64*, i32)* @mysql_handle_quoter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_handle_quoter(%struct.TYPE_5__* %0, i8* %1, i64 %2, i8** %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8** %3, i8*** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %6
  store i32 1, i32* %15, align 4
  br label %25

25:                                               ; preds = %24, %6
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @PDO_PARAM_STR_NATL, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @PDO_PARAM_STR_NATL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %15, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @PDO_PARAM_STR_CHAR, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @PDO_PARAM_STR_CHAR, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %38, %32
  %40 = call i32 @PDO_DBG_ENTER(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %42 = call i32 (i8*, ...) @PDO_DBG_INF_FMT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %41)
  %43 = load i64, i64* %10, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 (i8*, ...) @PDO_DBG_INF_FMT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %44, i8* %45)
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 1, i32 0
  %52 = add nsw i32 3, %51
  %53 = call i8* @safe_emalloc(i32 2, i64 %47, i32 %52)
  %54 = load i8**, i8*** %11, align 8
  store i8* %53, i8** %54, align 8
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %39
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i8**, i8*** %11, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @mysql_real_escape_string(i32 %60, i8* %63, i8* %64, i64 %65)
  %67 = load i64*, i64** %12, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i8**, i8*** %11, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  store i8 78, i8* %70, align 1
  %71 = load i8**, i8*** %11, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  store i8 39, i8* %73, align 1
  %74 = load i64*, i64** %12, align 8
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  br label %91

77:                                               ; preds = %39
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i8**, i8*** %11, align 8
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8*, i8** %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @mysql_real_escape_string(i32 %80, i8* %83, i8* %84, i64 %85)
  %87 = load i64*, i64** %12, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i8**, i8*** %11, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  store i8 39, i8* %90, align 1
  br label %91

91:                                               ; preds = %77, %57
  %92 = load i8**, i8*** %11, align 8
  %93 = load i8*, i8** %92, align 8
  %94 = load i64*, i64** %12, align 8
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  %97 = getelementptr inbounds i8, i8* %93, i64 %96
  store i8 39, i8* %97, align 1
  %98 = load i8**, i8*** %11, align 8
  %99 = load i8*, i8** %98, align 8
  %100 = load i64*, i64** %12, align 8
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i64*, i64** %12, align 8
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = load i8**, i8*** %11, align 8
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i8*, ...) @PDO_DBG_INF_FMT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %106, i8* %108)
  %110 = call i32 @PDO_DBG_RETURN(i32 1)
  %111 = load i32, i32* %7, align 4
  ret i32 %111
}

declare dso_local i32 @PDO_DBG_ENTER(i8*) #1

declare dso_local i32 @PDO_DBG_INF_FMT(i8*, ...) #1

declare dso_local i8* @safe_emalloc(i32, i64, i32) #1

declare dso_local i64 @mysql_real_escape_string(i32, i8*, i8*, i64) #1

declare dso_local i32 @PDO_DBG_RETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
