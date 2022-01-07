; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_ps_fetch_time.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_ps_fetch_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.st_mysqlnd_time = type { i32, i32, i32, i32, i32, i64, i8*, i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"ps_fetch_time\00", align 1
@MYSQLND_TIMESTAMP_TIME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"%s%02u:%02u:%02u.%0*u\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s%02u:%02u:%02u\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DBG_VOID_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i64**)* @ps_fetch_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_fetch_time(i32* %0, %struct.TYPE_3__* %1, i32 %2, i64** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64**, align 8
  %9 = alloca %struct.st_mysqlnd_time, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64** %3, i64*** %8, align 8
  %13 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load i64**, i64*** %8, align 8
  %15 = call i32 @php_mysqlnd_net_field_length(i64** %14)
  store i32 %15, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %76

17:                                               ; preds = %4
  %18 = load i64**, i64*** %8, align 8
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %12, align 8
  %20 = load i8*, i8** @MYSQLND_TIMESTAMP_TIME, align 8
  %21 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 6
  store i8* %20, i8** %21, align 8
  %22 = load i64*, i64** %12, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 5
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %12, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 1
  %28 = call i64 @sint4korr(i64* %27)
  %29 = trunc i64 %28 to i32
  %30 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 5
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i64*, i64** %12, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 6
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load i64*, i64** %12, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 7
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 3
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 8
  br i1 %47, label %48, label %53

48:                                               ; preds = %17
  %49 = load i64*, i64** %12, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 8
  %51 = call i64 @sint4korr(i64* %50)
  %52 = trunc i64 %51 to i32
  br label %54

53:                                               ; preds = %17
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i32 [ %52, %48 ], [ 0, %53 ]
  %56 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 8
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 24
  %66 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, %65
  store i32 %68, i32* %66, align 4
  %69 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 0
  store i32 0, i32* %69, align 8
  br label %70

70:                                               ; preds = %62, %54
  %71 = load i32, i32* %10, align 4
  %72 = load i64**, i64*** %8, align 8
  %73 = load i64*, i64** %72, align 8
  %74 = sext i32 %71 to i64
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64* %75, i64** %72, align 8
  br label %80

76:                                               ; preds = %4
  %77 = call i32 @memset(%struct.st_mysqlnd_time* %9, i32 0, i32 56)
  %78 = load i8*, i8** @MYSQLND_TIMESTAMP_TIME, align 8
  %79 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 6
  store i8* %78, i8** %79, align 8
  br label %80

80:                                               ; preds = %76, %70
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %80
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 7
  br i1 %89, label %90, label %114

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %96 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 6, %109
  %111 = call i32 @pow(i32 10, i32 %110)
  %112 = sdiv i32 %106, %111
  %113 = call i32 (i8**, i32, i8*, i8*, i32, i32, i32, ...) @mnd_sprintf(i8** %11, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %95, i32 %97, i32 %99, i32 %101, i32 %104, i32 %112)
  store i32 %113, i32* %10, align 4
  br label %127

114:                                              ; preds = %85, %80
  %115 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %120 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8**, i32, i8*, i8*, i32, i32, i32, ...) @mnd_sprintf(i8** %11, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %119, i32 %121, i32 %123, i32 %125)
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %114, %90
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %128)
  %130 = load i32*, i32** %5, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @ZVAL_STRINGL(i32* %130, i8* %131, i32 %132)
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 @mnd_sprintf_free(i8* %134)
  %136 = load i32, i32* @DBG_VOID_RETURN, align 4
  ret void
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @php_mysqlnd_net_field_length(i64**) #1

declare dso_local i64 @sint4korr(i64*) #1

declare dso_local i32 @memset(%struct.st_mysqlnd_time*, i32, i32) #1

declare dso_local i32 @mnd_sprintf(i8**, i32, i8*, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @pow(i32, i32) #1

declare dso_local i32 @DBG_INF_FMT(i8*, i8*) #1

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i32) #1

declare dso_local i32 @mnd_sprintf_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
