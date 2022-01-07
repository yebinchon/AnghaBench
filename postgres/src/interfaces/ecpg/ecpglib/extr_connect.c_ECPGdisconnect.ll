; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_connect.c_ECPGdisconnect.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_connect.c_ECPGdisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.connection* }
%struct.sqlca_t = type { i32 }

@ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@all_connections = common dso_local global %struct.connection* null, align 8
@connections_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECPGdisconnect(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sqlca_t*, align 8
  %7 = alloca %struct.connection*, align 8
  %8 = alloca %struct.connection*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = call %struct.sqlca_t* (...) @ECPGget_sqlca()
  store %struct.sqlca_t* %9, %struct.sqlca_t** %6, align 8
  %10 = load %struct.sqlca_t*, %struct.sqlca_t** %6, align 8
  %11 = icmp eq %struct.sqlca_t* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ECPG_OUT_OF_MEMORY, align 4
  %15 = load i32, i32* @ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, align 4
  %16 = call i32 @ecpg_raise(i32 %13, i32 %14, i32 %15, i32* null)
  store i32 0, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.sqlca_t*, %struct.sqlca_t** %6, align 8
  %23 = call i32 @ecpg_init_sqlca(%struct.sqlca_t* %22)
  %24 = load %struct.connection*, %struct.connection** @all_connections, align 8
  store %struct.connection* %24, %struct.connection** %7, align 8
  br label %25

25:                                               ; preds = %28, %21
  %26 = load %struct.connection*, %struct.connection** %7, align 8
  %27 = icmp ne %struct.connection* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.connection*, %struct.connection** %7, align 8
  store %struct.connection* %29, %struct.connection** %8, align 8
  %30 = load %struct.connection*, %struct.connection** %7, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 0
  %32 = load %struct.connection*, %struct.connection** %31, align 8
  store %struct.connection* %32, %struct.connection** %7, align 8
  %33 = load %struct.connection*, %struct.connection** %8, align 8
  %34 = call i32 @ecpg_finish(%struct.connection* %33)
  br label %25

35:                                               ; preds = %25
  br label %49

36:                                               ; preds = %17
  %37 = load i8*, i8** %5, align 8
  %38 = call %struct.connection* @ecpg_get_connection_nr(i8* %37)
  store %struct.connection* %38, %struct.connection** %7, align 8
  %39 = load %struct.connection*, %struct.connection** %7, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ecpg_init(%struct.connection* %39, i8* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load %struct.connection*, %struct.connection** %7, align 8
  %47 = call i32 @ecpg_finish(%struct.connection* %46)
  br label %48

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %48, %35
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %44, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.sqlca_t* @ECPGget_sqlca(...) #1

declare dso_local i32 @ecpg_raise(i32, i32, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ecpg_init_sqlca(%struct.sqlca_t*) #1

declare dso_local i32 @ecpg_finish(%struct.connection*) #1

declare dso_local %struct.connection* @ecpg_get_connection_nr(i8*) #1

declare dso_local i32 @ecpg_init(%struct.connection*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
