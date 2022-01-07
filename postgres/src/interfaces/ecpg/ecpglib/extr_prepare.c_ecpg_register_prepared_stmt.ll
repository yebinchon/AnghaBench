; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_ecpg_register_prepared_stmt.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_ecpg_register_prepared_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statement = type { i32, i8*, i32*, i32, i8*, %struct.connection* }
%struct.connection = type { %struct.prepared_statement* }
%struct.prepared_statement = type { i32, %struct.prepared_statement*, %struct.statement*, i8* }

@ECPG_COMPAT_PGSQL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecpg_register_prepared_stmt(%struct.statement* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.statement*, align 8
  %4 = alloca %struct.statement*, align 8
  %5 = alloca %struct.prepared_statement*, align 8
  %6 = alloca %struct.connection*, align 8
  %7 = alloca %struct.prepared_statement*, align 8
  %8 = alloca i32, align 4
  store %struct.statement* %0, %struct.statement** %3, align 8
  %9 = load %struct.statement*, %struct.statement** %3, align 8
  %10 = getelementptr inbounds %struct.statement, %struct.statement* %9, i32 0, i32 5
  %11 = load %struct.connection*, %struct.connection** %10, align 8
  store %struct.connection* %11, %struct.connection** %6, align 8
  store %struct.prepared_statement* null, %struct.prepared_statement** %7, align 8
  %12 = load %struct.statement*, %struct.statement** %3, align 8
  %13 = getelementptr inbounds %struct.statement, %struct.statement* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.statement*, %struct.statement** %3, align 8
  %16 = getelementptr inbounds %struct.statement, %struct.statement* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.connection*, %struct.connection** %6, align 8
  %19 = call %struct.prepared_statement* @ecpg_find_prepared_statement(i8* %17, %struct.connection* %18, %struct.prepared_statement** %7)
  store %struct.prepared_statement* %19, %struct.prepared_statement** %5, align 8
  %20 = load %struct.prepared_statement*, %struct.prepared_statement** %5, align 8
  %21 = icmp ne %struct.prepared_statement* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ECPG_COMPAT_PGSQL, align 4
  %25 = load %struct.connection*, %struct.connection** %6, align 8
  %26 = load %struct.prepared_statement*, %struct.prepared_statement** %7, align 8
  %27 = load %struct.prepared_statement*, %struct.prepared_statement** %5, align 8
  %28 = call i32 @deallocate_one(i32 %23, i32 %24, %struct.connection* %25, %struct.prepared_statement* %26, %struct.prepared_statement* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %96

31:                                               ; preds = %22, %1
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @ecpg_alloc(i32 32, i32 %32)
  %34 = inttoptr i64 %33 to %struct.prepared_statement*
  store %struct.prepared_statement* %34, %struct.prepared_statement** %5, align 8
  %35 = load %struct.prepared_statement*, %struct.prepared_statement** %5, align 8
  %36 = icmp ne %struct.prepared_statement* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %96

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @ecpg_alloc(i32 48, i32 %39)
  %41 = inttoptr i64 %40 to %struct.statement*
  store %struct.statement* %41, %struct.statement** %4, align 8
  %42 = load %struct.statement*, %struct.statement** %4, align 8
  %43 = icmp ne %struct.statement* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load %struct.prepared_statement*, %struct.prepared_statement** %5, align 8
  %46 = call i32 @ecpg_free(%struct.prepared_statement* %45)
  store i32 0, i32* %2, align 4
  br label %96

47:                                               ; preds = %38
  %48 = load %struct.statement*, %struct.statement** %4, align 8
  %49 = call i32 @memset(%struct.statement* %48, i32 0, i32 48)
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.statement*, %struct.statement** %4, align 8
  %52 = getelementptr inbounds %struct.statement, %struct.statement* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.connection*, %struct.connection** %6, align 8
  %54 = load %struct.statement*, %struct.statement** %4, align 8
  %55 = getelementptr inbounds %struct.statement, %struct.statement* %54, i32 0, i32 5
  store %struct.connection* %53, %struct.connection** %55, align 8
  %56 = load %struct.statement*, %struct.statement** %3, align 8
  %57 = getelementptr inbounds %struct.statement, %struct.statement* %56, i32 0, i32 4
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i8* @ecpg_strdup(i8* %58, i32 %59)
  %61 = load %struct.statement*, %struct.statement** %4, align 8
  %62 = getelementptr inbounds %struct.statement, %struct.statement* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.statement*, %struct.statement** %4, align 8
  %64 = getelementptr inbounds %struct.statement, %struct.statement* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.statement*, %struct.statement** %4, align 8
  %66 = getelementptr inbounds %struct.statement, %struct.statement* %65, i32 0, i32 3
  store i32 0, i32* %66, align 8
  %67 = load %struct.statement*, %struct.statement** %3, align 8
  %68 = getelementptr inbounds %struct.statement, %struct.statement* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i8* @ecpg_strdup(i8* %69, i32 %70)
  %72 = load %struct.prepared_statement*, %struct.prepared_statement** %5, align 8
  %73 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = load %struct.statement*, %struct.statement** %4, align 8
  %75 = load %struct.prepared_statement*, %struct.prepared_statement** %5, align 8
  %76 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %75, i32 0, i32 2
  store %struct.statement* %74, %struct.statement** %76, align 8
  %77 = load %struct.prepared_statement*, %struct.prepared_statement** %5, align 8
  %78 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.connection*, %struct.connection** %6, align 8
  %80 = getelementptr inbounds %struct.connection, %struct.connection* %79, i32 0, i32 0
  %81 = load %struct.prepared_statement*, %struct.prepared_statement** %80, align 8
  %82 = icmp eq %struct.prepared_statement* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %47
  %84 = load %struct.prepared_statement*, %struct.prepared_statement** %5, align 8
  %85 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %84, i32 0, i32 1
  store %struct.prepared_statement* null, %struct.prepared_statement** %85, align 8
  br label %92

86:                                               ; preds = %47
  %87 = load %struct.connection*, %struct.connection** %6, align 8
  %88 = getelementptr inbounds %struct.connection, %struct.connection* %87, i32 0, i32 0
  %89 = load %struct.prepared_statement*, %struct.prepared_statement** %88, align 8
  %90 = load %struct.prepared_statement*, %struct.prepared_statement** %5, align 8
  %91 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %90, i32 0, i32 1
  store %struct.prepared_statement* %89, %struct.prepared_statement** %91, align 8
  br label %92

92:                                               ; preds = %86, %83
  %93 = load %struct.prepared_statement*, %struct.prepared_statement** %5, align 8
  %94 = load %struct.connection*, %struct.connection** %6, align 8
  %95 = getelementptr inbounds %struct.connection, %struct.connection* %94, i32 0, i32 0
  store %struct.prepared_statement* %93, %struct.prepared_statement** %95, align 8
  store i32 1, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %44, %37, %30
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.prepared_statement* @ecpg_find_prepared_statement(i8*, %struct.connection*, %struct.prepared_statement**) #1

declare dso_local i32 @deallocate_one(i32, i32, %struct.connection*, %struct.prepared_statement*, %struct.prepared_statement*) #1

declare dso_local i64 @ecpg_alloc(i32, i32) #1

declare dso_local i32 @ecpg_free(%struct.prepared_statement*) #1

declare dso_local i32 @memset(%struct.statement*, i32, i32) #1

declare dso_local i8* @ecpg_strdup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
