; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_server.c_stop_postmaster.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_server.c_stop_postmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i32, i32 }

@os_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@old_cluster = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@new_cluster = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SERVER_STOP_LOG_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"\22%s/pg_ctl\22 -w -D \22%s\22 -o \22%s\22 %s stop\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"-m fast\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"-m smart\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_postmaster(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @os_info, i32 0, i32 0), align 8
  %5 = icmp eq %struct.TYPE_5__* %4, @old_cluster
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct.TYPE_5__* @old_cluster, %struct.TYPE_5__** %3, align 8
  br label %13

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @os_info, i32 0, i32 0), align 8
  %9 = icmp eq %struct.TYPE_5__* %8, @new_cluster
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store %struct.TYPE_5__* @new_cluster, %struct.TYPE_5__** %3, align 8
  br label %12

11:                                               ; preds = %7
  br label %45

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %12, %6
  %14 = load i32, i32* @SERVER_STOP_LOG_FILE, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %13
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %13
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %37 ]
  %40 = load i32, i32* %2, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %44 = call i32 @exec_prog(i32 %14, i32* null, i32 %18, i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i8* %39, i8* %43)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @os_info, i32 0, i32 0), align 8
  br label %45

45:                                               ; preds = %38, %11
  ret void
}

declare dso_local i32 @exec_prog(i32, i32*, i32, i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
