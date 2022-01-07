; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_ps_fetch_date.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_ps_codec.c_ps_fetch_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_mysqlnd_time = type { i32, i32, i32, i8*, i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ps_fetch_date\00", align 1
@MYSQLND_TIMESTAMP_DATE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"%04u-%02u-%02u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DBG_VOID_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i64**)* @ps_fetch_date to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_fetch_date(i32* %0, i32* %1, i32 %2, i64** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64**, align 8
  %9 = alloca %struct.st_mysqlnd_time, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64** %3, i64*** %8, align 8
  %13 = bitcast %struct.st_mysqlnd_time* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 72, i1 false)
  %14 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load i64**, i64*** %8, align 8
  %16 = call i64 @php_mysqlnd_net_field_length(i64** %15)
  store i64 %16, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %4
  %19 = load i64**, i64*** %8, align 8
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %12, align 8
  %21 = load i8*, i8** @MYSQLND_TIMESTAMP_DATE, align 8
  %22 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 3
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 8
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 7
  store i64 0, i64* %27, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = call i64 @sint2korr(i64* %28)
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i64*, i64** %12, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 2
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 1
  store i32 %35, i32* %36, align 4
  %37 = load i64*, i64** %12, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 3
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64**, i64*** %8, align 8
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 %42
  store i64* %45, i64** %43, align 8
  br label %50

46:                                               ; preds = %4
  %47 = call i32 @memset(%struct.st_mysqlnd_time* %9, i32 0, i32 72)
  %48 = load i8*, i8** @MYSQLND_TIMESTAMP_DATE, align 8
  %49 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 3
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %46, %18
  %51 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.st_mysqlnd_time, %struct.st_mysqlnd_time* %9, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @mnd_sprintf(i8** %11, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %54, i32 %56)
  store i64 %57, i64* %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @DBG_INF_FMT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @ZVAL_STRINGL(i32* %60, i8* %61, i64 %62)
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @mnd_sprintf_free(i8* %64)
  %66 = load i32, i32* @DBG_VOID_RETURN, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DBG_ENTER(i8*) #2

declare dso_local i64 @php_mysqlnd_net_field_length(i64**) #2

declare dso_local i64 @sint2korr(i64*) #2

declare dso_local i32 @memset(%struct.st_mysqlnd_time*, i32, i32) #2

declare dso_local i64 @mnd_sprintf(i8**, i32, i8*, i32, i32, i32) #2

declare dso_local i32 @DBG_INF_FMT(i8*, i8*) #2

declare dso_local i32 @ZVAL_STRINGL(i32*, i8*, i64) #2

declare dso_local i32 @mnd_sprintf_free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
