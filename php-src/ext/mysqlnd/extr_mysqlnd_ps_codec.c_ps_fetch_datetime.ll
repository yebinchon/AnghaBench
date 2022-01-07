; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_ps_fetch_datetime.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_ps_fetch_datetime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.st_mysqlnd_time = type { i32, i32, i32, i32, i32, i32, i32, i8*, i64 }

@.str = private unnamed_addr constant [18 x i8] c"ps_fetch_datetime\00", align 1
@MYSQLND_TIMESTAMP_DATETIME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%04u-%02u-%02u %02u:%02u:%02u.%0*u\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"%04u-%02u-%02u %02u:%02u:%02u\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DBG_VOID_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32, i64**)* @ps_fetch_datetime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_fetch_datetime(i32* %0, %struct.TYPE_3__* %1, i32 %2, i64** %3) #0 {
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
  %13 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load i64**, i64*** %8, align 8
  %15 = call i32 @php_mysqlnd_net_field_length(i64** %14)
  store i32 %15, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %76

17:                                               ; preds = %4
  %18 = load i64**, i64*** %8, align 8
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %12, align 8
  %20 = load i8*, i8** @MYSQLND_TIMESTAMP_DATETIME, align 8
  %21 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 7
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load i64*, i64** %12, align 8
  %24 = call i64 @sint2korr(i64* %23)
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load i64*, i64** %12, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 2
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load i64*, i64** %12, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 3
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 4
  br i1 %38, label %39, label %55

39:                                               ; preds = %17
  %40 = load i64*, i64** %12, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 4
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load i64*, i64** %12, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 5
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 4
  store i32 %48, i32* %49, align 8
  %50 = load i64*, i64** %12, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 6
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 5
  store i32 %53, i32* %54, align 4
  br label %59

55:                                               ; preds = %17
  %56 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 5
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 4
  store i32 0, i32* %57, align 8
  %58 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 3
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %39
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 7
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i64*, i64** %12, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 7
  %65 = call i64 @sint4korr(i64* %64)
  %66 = trunc i64 %65 to i32
  br label %68

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %62
  %69 = phi i32 [ %66, %62 ], [ 0, %67 ]
  %70 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 6
  store i32 %69, i32* %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i64**, i64*** %8, align 8
  %73 = load i64*, i64** %72, align 8
  %74 = sext i32 %71 to i64
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64* %75, i64** %72, align 8
  br label %80

76:                                               ; preds = %4
  %77 = call i32 @memset(%struct.st_mysqlnd_time* %9, i32 0, i32 48)
  %78 = load i8*, i8** @MYSQLND_TIMESTAMP_DATETIME, align 8
  %79 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 7
  store i8* %78, i8** %79, align 8
  br label %80

80:                                               ; preds = %76, %68
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %80
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 7
  br i1 %89, label %90, label %115

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 6, %110
  %112 = call i32 @pow(i32 10, i32 %111)
  %113 = sdiv i32 %107, %112
  %114 = call i32 (i8**, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @mnd_sprintf(i8** %11, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %94, i32 %96, i32 %98, i32 %100, i32 %102, i32 %105, i32 %113)
  store i32 %114, i32* %10, align 4
  br label %129

115:                                              ; preds = %85, %80
  %116 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i8**, i32, i8*, i32, i32, i32, i32, i32, i32, ...) @mnd_sprintf(i8** %11, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %119, i32 %121, i32 %123, i32 %125, i32 %127)
  store i32 %128, i32* %10, align 4
  br label %129

129:                                              ; preds = %115, %90
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  %132 = load i32*, i32** %5, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @ZVAL_STRINGL(i32* %132, i8* %133, i32 %134)
  %136 = load i8*, i8** %11, align 8
  %137 = call i32 @mnd_sprintf_free(i8* %136)
  %138 = load i32, i32* @DBG_VOID_RETURN, align 4
  ret void
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @php_mysqlnd_net_field_length(i64**) #1

declare dso_local i64 @sint2korr(i64*) #1

declare dso_local i64 @sint4korr(i64*) #1

declare dso_local i32 @memset(%struct.st_mysqlnd_time*, i32, i32) #1

declare dso_local i32 @mnd_sprintf(i8**, i32, i8*, i32, i32, i32, i32, i32, i32, ...) #1

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
