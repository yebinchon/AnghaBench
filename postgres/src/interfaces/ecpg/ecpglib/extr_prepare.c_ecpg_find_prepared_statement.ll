; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_ecpg_find_prepared_statement.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_prepare.c_ecpg_find_prepared_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prepared_statement = type { i32, %struct.prepared_statement* }
%struct.connection = type { %struct.prepared_statement* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.prepared_statement* @ecpg_find_prepared_statement(i8* %0, %struct.connection* %1, %struct.prepared_statement** %2) #0 {
  %4 = alloca %struct.prepared_statement*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.connection*, align 8
  %7 = alloca %struct.prepared_statement**, align 8
  %8 = alloca %struct.prepared_statement*, align 8
  %9 = alloca %struct.prepared_statement*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.connection* %1, %struct.connection** %6, align 8
  store %struct.prepared_statement** %2, %struct.prepared_statement*** %7, align 8
  %10 = load %struct.connection*, %struct.connection** %6, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 0
  %12 = load %struct.prepared_statement*, %struct.prepared_statement** %11, align 8
  store %struct.prepared_statement* %12, %struct.prepared_statement** %8, align 8
  store %struct.prepared_statement* null, %struct.prepared_statement** %9, align 8
  br label %13

13:                                               ; preds = %32, %3
  %14 = load %struct.prepared_statement*, %struct.prepared_statement** %8, align 8
  %15 = icmp ne %struct.prepared_statement* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %13
  %17 = load %struct.prepared_statement*, %struct.prepared_statement** %8, align 8
  %18 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i32 %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.prepared_statement**, %struct.prepared_statement*** %7, align 8
  %25 = icmp ne %struct.prepared_statement** %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.prepared_statement*, %struct.prepared_statement** %9, align 8
  %28 = load %struct.prepared_statement**, %struct.prepared_statement*** %7, align 8
  store %struct.prepared_statement* %27, %struct.prepared_statement** %28, align 8
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.prepared_statement*, %struct.prepared_statement** %8, align 8
  store %struct.prepared_statement* %30, %struct.prepared_statement** %4, align 8
  br label %38

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.prepared_statement*, %struct.prepared_statement** %8, align 8
  store %struct.prepared_statement* %33, %struct.prepared_statement** %9, align 8
  %34 = load %struct.prepared_statement*, %struct.prepared_statement** %8, align 8
  %35 = getelementptr inbounds %struct.prepared_statement, %struct.prepared_statement* %34, i32 0, i32 1
  %36 = load %struct.prepared_statement*, %struct.prepared_statement** %35, align 8
  store %struct.prepared_statement* %36, %struct.prepared_statement** %8, align 8
  br label %13

37:                                               ; preds = %13
  store %struct.prepared_statement* null, %struct.prepared_statement** %4, align 8
  br label %38

38:                                               ; preds = %37, %29
  %39 = load %struct.prepared_statement*, %struct.prepared_statement** %4, align 8
  ret %struct.prepared_statement* %39
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
