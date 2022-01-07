; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_ECPGdeallocate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_ECPGdeallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.prepared_statement = type { i32 }

@ECPG_INVALID_STMT = common dso_local global i32 0, align 4
@ECPG_SQLSTATE_INVALID_SQL_STATEMENT_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ECPGdeallocate(i32 %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.connection*, align 8
  %11 = alloca %struct.prepared_statement*, align 8
  %12 = alloca %struct.prepared_statement*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call %struct.connection* @ecpg_get_connection(i8* %13)
  store %struct.connection* %14, %struct.connection** %10, align 8
  %15 = load %struct.connection*, %struct.connection** %10, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ecpg_init(%struct.connection* %15, i8* %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.connection*, %struct.connection** %10, align 8
  %24 = call %struct.prepared_statement* @ecpg_find_prepared_statement(i8* %22, %struct.connection* %23, %struct.prepared_statement** %12)
  store %struct.prepared_statement* %24, %struct.prepared_statement** %11, align 8
  %25 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  %26 = icmp ne %struct.prepared_statement* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.connection*, %struct.connection** %10, align 8
  %31 = load %struct.prepared_statement*, %struct.prepared_statement** %12, align 8
  %32 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  %33 = call i32 @deallocate_one(i32 %28, i32 %29, %struct.connection* %30, %struct.prepared_statement* %31, %struct.prepared_statement* %32)
  store i32 %33, i32* %5, align 4
  br label %45

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @INFORMIX_MODE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %45

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ECPG_INVALID_STMT, align 4
  %42 = load i32, i32* @ECPG_SQLSTATE_INVALID_SQL_STATEMENT_NAME, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @ecpg_raise(i32 %40, i32 %41, i32 %42, i8* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %38, %27, %20
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.connection* @ecpg_get_connection(i8*) #1

declare dso_local i32 @ecpg_init(%struct.connection*, i8*, i32) #1

declare dso_local %struct.prepared_statement* @ecpg_find_prepared_statement(i8*, %struct.connection*, %struct.prepared_statement**) #1

declare dso_local i32 @deallocate_one(i32, i32, %struct.connection*, %struct.prepared_statement*, %struct.prepared_statement*) #1

declare dso_local i64 @INFORMIX_MODE(i32) #1

declare dso_local i32 @ecpg_raise(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
