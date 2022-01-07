; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_connect.c_ecpg_get_connection_nr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_connect.c_ecpg_get_connection_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i8*, %struct.connection* }

@.str = private unnamed_addr constant [8 x i8] c"CURRENT\00", align 1
@actual_connection = common dso_local global %struct.connection* null, align 8
@all_connections = common dso_local global %struct.connection* null, align 8
@actual_connection_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.connection* (i8*)* @ecpg_get_connection_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.connection* @ecpg_get_connection_nr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.connection*, align 8
  %4 = alloca %struct.connection*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.connection* null, %struct.connection** %3, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = call i64 @strcmp(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %1
  %12 = load %struct.connection*, %struct.connection** @actual_connection, align 8
  store %struct.connection* %12, %struct.connection** %3, align 8
  br label %33

13:                                               ; preds = %7
  %14 = load %struct.connection*, %struct.connection** @all_connections, align 8
  store %struct.connection* %14, %struct.connection** %4, align 8
  br label %15

15:                                               ; preds = %27, %13
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = icmp ne %struct.connection* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i8*, i8** %2, align 8
  %20 = load %struct.connection*, %struct.connection** %4, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strcmp(i8* %19, i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %31

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.connection*, %struct.connection** %4, align 8
  %29 = getelementptr inbounds %struct.connection, %struct.connection* %28, i32 0, i32 1
  %30 = load %struct.connection*, %struct.connection** %29, align 8
  store %struct.connection* %30, %struct.connection** %4, align 8
  br label %15

31:                                               ; preds = %25, %15
  %32 = load %struct.connection*, %struct.connection** %4, align 8
  store %struct.connection* %32, %struct.connection** %3, align 8
  br label %33

33:                                               ; preds = %31, %11
  %34 = load %struct.connection*, %struct.connection** %3, align 8
  ret %struct.connection* %34
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
