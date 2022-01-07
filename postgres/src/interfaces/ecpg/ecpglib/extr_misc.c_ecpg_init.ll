; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_misc.c_ecpg_init.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_misc.c_ecpg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.sqlca_t = type { i32 }

@ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@ECPG_NO_CONN = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_CONNECTION_DOES_NOT_EXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecpg_init(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sqlca_t*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call %struct.sqlca_t* (...) @ECPGget_sqlca()
  store %struct.sqlca_t* %9, %struct.sqlca_t** %8, align 8
  %10 = load %struct.sqlca_t*, %struct.sqlca_t** %8, align 8
  %11 = icmp eq %struct.sqlca_t* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @ECPG_OUT_OF_MEMORY, align 4
  %15 = load i32, i32* @ECPG_SQLSTATE_ECPG_OUT_OF_MEMORY, align 4
  %16 = call i32 @ecpg_raise(i32 %13, i32 %14, i32 %15, i8* null)
  store i32 0, i32* %4, align 4
  br label %36

17:                                               ; preds = %3
  %18 = load %struct.sqlca_t*, %struct.sqlca_t** %8, align 8
  %19 = call i32 @ecpg_init_sqlca(%struct.sqlca_t* %18)
  %20 = load %struct.connection*, %struct.connection** %5, align 8
  %21 = icmp eq %struct.connection* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @ECPG_NO_CONN, align 4
  %25 = load i32, i32* @ECPG_SQLSTATE_CONNECTION_DOES_NOT_EXIST, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i8*, i8** %6, align 8
  br label %32

30:                                               ; preds = %22
  %31 = call i8* @ecpg_gettext(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i8* [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @ecpg_raise(i32 %23, i32 %24, i32 %25, i8* %33)
  store i32 0, i32* %4, align 4
  br label %36

35:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %32, %12
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.sqlca_t* @ECPGget_sqlca(...) #1

declare dso_local i32 @ecpg_raise(i32, i32, i32, i8*) #1

declare dso_local i32 @ecpg_init_sqlca(%struct.sqlca_t*) #1

declare dso_local i8* @ecpg_gettext(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
