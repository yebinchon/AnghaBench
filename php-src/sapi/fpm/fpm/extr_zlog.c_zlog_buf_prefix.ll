; ModuleID = '/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_buf_prefix.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/fpm/fpm/extr_zlog.c_zlog_buf_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i32 }

@fpm_globals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@zlog_level = common dso_local global i64 0, align 8
@ZLOG_DEBUG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: pid %d, %s(), line %d: \00", align 1
@level_names = common dso_local global i8** null, align 8
@ZLOG_LEVEL_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: %s(), line %d: \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32, i32, i8*, i64, i32)* @zlog_buf_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zlog_buf_prefix(i8* %0, i32 %1, i32 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %6
  %18 = call i32 @gettimeofday(%struct.timeval* %13, i32 0)
  %19 = load i8*, i8** %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @zlog_print_time(%struct.timeval* %13, i8* %19, i64 %20)
  store i64 %21, i64* %14, align 8
  br label %22

22:                                               ; preds = %17, %6
  %23 = load i64, i64* @zlog_level, align 8
  %24 = load i64, i64* @ZLOG_DEBUG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %69

26:                                               ; preds = %22
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fpm_globals, i32 0, i32 0), align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %26
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %14, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* %14, align 8
  %35 = sub i64 %33, %34
  %36 = load i8**, i8*** @level_names, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @ZLOG_LEVEL_MASK, align 4
  %39 = and i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %36, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (...) @getpid()
  %44 = load i8*, i8** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i64 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %32, i64 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43, i8* %44, i32 %45)
  %47 = load i64, i64* %14, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %14, align 8
  br label %68

49:                                               ; preds = %26
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %14, align 8
  %55 = sub i64 %53, %54
  %56 = load i8**, i8*** @level_names, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ZLOG_LEVEL_MASK, align 4
  %59 = and i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %56, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i64 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %52, i64 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %63, i32 %64)
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %49, %29
  br label %86

69:                                               ; preds = %22
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* %14, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %14, align 8
  %75 = sub i64 %73, %74
  %76 = load i8**, i8*** @level_names, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @ZLOG_LEVEL_MASK, align 4
  %79 = and i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %76, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %72, i64 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = load i64, i64* %14, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %14, align 8
  br label %86

86:                                               ; preds = %69, %68
  %87 = load i64, i64* %14, align 8
  ret i64 %87
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

declare dso_local i64 @zlog_print_time(%struct.timeval*, i8*, i64) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i8*, ...) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
