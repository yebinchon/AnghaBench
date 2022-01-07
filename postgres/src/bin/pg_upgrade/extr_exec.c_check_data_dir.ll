; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_exec.c_check_data_dir.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_exec.c_check_data_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"pg_multixact\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"pg_subtrans\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"pg_tblspc\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"pg_twophase\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"pg_xlog\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"pg_wal\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"pg_clog\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"pg_xact\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @check_data_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_data_dir(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  store i8* %6, i8** %3, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = call i32 @get_major_server_version(%struct.TYPE_4__* %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @check_single_dir(i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @check_single_dir(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @check_single_dir(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @check_single_dir(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @check_single_dir(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @check_single_dir(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @check_single_dir(i8* %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @GET_MAJOR_VERSION(i32 %27)
  %29 = icmp slt i32 %28, 1000
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @check_single_dir(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %36

33:                                               ; preds = %1
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @check_single_dir(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %30
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @GET_MAJOR_VERSION(i32 %39)
  %41 = icmp slt i32 %40, 1000
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @check_single_dir(i8* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %48

45:                                               ; preds = %36
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @check_single_dir(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  ret void
}

declare dso_local i32 @get_major_server_version(%struct.TYPE_4__*) #1

declare dso_local i32 @check_single_dir(i8*, i8*) #1

declare dso_local i32 @GET_MAJOR_VERSION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
