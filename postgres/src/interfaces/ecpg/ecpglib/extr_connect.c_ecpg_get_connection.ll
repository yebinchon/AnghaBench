; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_connect.c_ecpg_get_connection.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_connect.c_ecpg_get_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"CURRENT\00", align 1
@actual_connection = common dso_local global %struct.connection* null, align 8
@actual_connection_key = common dso_local global i32 0, align 4
@connections_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.connection* @ecpg_get_connection(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.connection*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.connection* null, %struct.connection** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @strcmp(i8* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6, %1
  %11 = load %struct.connection*, %struct.connection** @actual_connection, align 8
  store %struct.connection* %11, %struct.connection** %3, align 8
  br label %15

12:                                               ; preds = %6
  %13 = load i8*, i8** %2, align 8
  %14 = call %struct.connection* @ecpg_get_connection_nr(i8* %13)
  store %struct.connection* %14, %struct.connection** %3, align 8
  br label %15

15:                                               ; preds = %12, %10
  %16 = load %struct.connection*, %struct.connection** %3, align 8
  ret %struct.connection* %16
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.connection* @ecpg_get_connection_nr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
