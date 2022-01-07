; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_find_child_status.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapilib.c_find_child_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@g_prefork_server = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32)* @find_child_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @find_child_status(i32 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_prefork_server, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %8, %struct.TYPE_4__** %4, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_prefork_server, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %5, align 8
  br label %12

12:                                               ; preds = %36, %1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = icmp ult %struct.TYPE_4__* %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_prefork_server, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp ugt %struct.TYPE_4__* %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @g_prefork_server, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %33, align 8
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %2, align 8
  br label %40

36:                                               ; preds = %16
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 1
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %4, align 8
  br label %12

39:                                               ; preds = %12
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
