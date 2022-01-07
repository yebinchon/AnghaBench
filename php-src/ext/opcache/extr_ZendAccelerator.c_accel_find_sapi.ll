; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/extr_ZendAccelerator.c_accel_find_sapi.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/extr_ZendAccelerator.c_accel_find_sapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@accel_find_sapi.supported_sapis = internal global [10 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [7 x i8] c"apache\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"fastcgi\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cli-server\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"cgi-fcgi\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"fpm-fcgi\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"fpmi-fcgi\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"apache2handler\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"litespeed\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"uwsgi\00", align 1
@sapi_module = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@SUCCESS = common dso_local global i32 0, align 4
@accel_directives = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"cli\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"phpdbg\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @accel_find_sapi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @accel_find_sapi() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sapi_module, i32 0, i32 0), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %0
  store i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @accel_find_sapi.supported_sapis, i64 0, i64 0), i8*** %2, align 8
  br label %7

7:                                                ; preds = %20, %6
  %8 = load i8**, i8*** %2, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sapi_module, i32 0, i32 0), align 8
  %13 = load i8**, i8*** %2, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @strcmp(i64 %12, i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @SUCCESS, align 4
  store i32 %18, i32* %1, align 4
  br label %43

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load i8**, i8*** %2, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %2, align 8
  br label %7

23:                                               ; preds = %7
  %24 = load i32, i32* @accel_directives, align 4
  %25 = call i64 @ZCG(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sapi_module, i32 0, i32 0), align 8
  %32 = call i64 @strcmp(i64 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sapi_module, i32 0, i32 0), align 8
  %36 = call i64 @strcmp(i64 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34, %30
  %39 = load i32, i32* @SUCCESS, align 4
  store i32 %39, i32* %1, align 4
  br label %43

40:                                               ; preds = %34, %23
  br label %41

41:                                               ; preds = %40, %0
  %42 = load i32, i32* @FAILURE, align 4
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %41, %38, %17
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i64 @ZCG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
