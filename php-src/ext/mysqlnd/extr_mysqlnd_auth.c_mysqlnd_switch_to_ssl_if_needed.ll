; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_auth.c_mysqlnd_switch_to_ssl_if_needed.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_auth.c_mysqlnd_switch_to_ssl_if_needed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, i64, i64, i32)* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mysqlnd_switch_to_ssl_if_needed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i64, %struct.TYPE_10__*, i64)* @mysqlnd_switch_to_ssl_if_needed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysqlnd_switch_to_ssl_if_needed(%struct.TYPE_11__* %0, i32 %1, i64 %2, %struct.TYPE_10__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* @FAIL, align 4
  store i32 %15, i32* %12, align 4
  %16 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %5
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.TYPE_12__* @mysqlnd_find_charset_name(i64 %24)
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %13, align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %21, %5
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %14, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_11__*, i64, i64, i32)*, i32 (%struct.TYPE_11__*, i64, i64, i32)** %36, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = load i64, i64* %14, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 %37(%struct.TYPE_11__* %38, i64 %39, i64 %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @DBG_RETURN(i32 %43)
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local %struct.TYPE_12__* @mysqlnd_find_charset_name(i64) #1

declare dso_local i32 @DBG_RETURN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
