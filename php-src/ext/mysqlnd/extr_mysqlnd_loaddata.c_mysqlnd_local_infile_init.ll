; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_loaddata.c_mysqlnd_local_infile_init.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_loaddata.c_mysqlnd_local_infile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i64, i32* }

@.str = private unnamed_addr constant [26 x i8] c"mysqlnd_local_infile_init\00", align 1
@open_basedir = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"open_basedir restriction in effect. Unable to open file\00", align 1
@CR_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't find file '%-.64s'.\00", align 1
@MYSQLND_EE_FILENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @mysqlnd_local_infile_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqlnd_local_infile_init(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %7, align 8
  %8 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = call i64 @mnd_ecalloc(i32 1, i32 32)
  %10 = inttoptr i64 %9 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %10, %struct.TYPE_2__** %6, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = call i32 @DBG_RETURN(i32 1)
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %17 = bitcast %struct.TYPE_2__* %16 to i8*
  %18 = load i8**, i8*** %4, align 8
  store i8* %17, i8** %18, align 8
  %19 = load i32, i32* @open_basedir, align 4
  %20 = call i64 @PG(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %15
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @php_check_open_basedir_ex(i8* %23, i32 0)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @strcpy(i64 %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @CR_UNKNOWN_ERROR, align 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = call i32 @DBG_RETURN(i32 1)
  br label %35

35:                                               ; preds = %26, %22
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32* @php_stream_open_wrapper_ex(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0, i32* null, i32* %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %60

49:                                               ; preds = %36
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @snprintf(i8* %53, i32 8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @MYSQLND_EE_FILENOTFOUND, align 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = call i32 @DBG_RETURN(i32 1)
  br label %60

60:                                               ; preds = %49, %36
  %61 = call i32 @DBG_RETURN(i32 0)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i64 @mnd_ecalloc(i32, i32) #1

declare dso_local i32 @DBG_RETURN(i32) #1

declare dso_local i64 @PG(i32) #1

declare dso_local i32 @php_check_open_basedir_ex(i8*, i32) #1

declare dso_local i32 @strcpy(i64, i8*) #1

declare dso_local i32* @php_stream_open_wrapper_ex(i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
