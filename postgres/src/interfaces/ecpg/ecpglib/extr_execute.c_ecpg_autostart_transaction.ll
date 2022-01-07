; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_ecpg_autostart_transaction.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_ecpg_autostart_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statement = type { i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PQTRANS_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"begin transaction\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecpg_autostart_transaction(%struct.statement* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.statement*, align 8
  store %struct.statement* %0, %struct.statement** %3, align 8
  %4 = load %struct.statement*, %struct.statement** %3, align 8
  %5 = getelementptr inbounds %struct.statement, %struct.statement* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @PQtransactionStatus(i32 %8)
  %10 = load i64, i64* @PQTRANS_IDLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %54

12:                                               ; preds = %1
  %13 = load %struct.statement*, %struct.statement** %3, align 8
  %14 = getelementptr inbounds %struct.statement, %struct.statement* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %54, label %19

19:                                               ; preds = %12
  %20 = load %struct.statement*, %struct.statement** %3, align 8
  %21 = getelementptr inbounds %struct.statement, %struct.statement* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* @PQexec(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.statement*, %struct.statement** %3, align 8
  %27 = getelementptr inbounds %struct.statement, %struct.statement* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.statement*, %struct.statement** %3, align 8
  %29 = getelementptr inbounds %struct.statement, %struct.statement* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.statement*, %struct.statement** %3, align 8
  %32 = getelementptr inbounds %struct.statement, %struct.statement* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.statement*, %struct.statement** %3, align 8
  %35 = getelementptr inbounds %struct.statement, %struct.statement* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.statement*, %struct.statement** %3, align 8
  %40 = getelementptr inbounds %struct.statement, %struct.statement* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ecpg_check_PQresult(i32* %30, i32 %33, i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %19
  %45 = load %struct.statement*, %struct.statement** %3, align 8
  %46 = call i32 @ecpg_free_params(%struct.statement* %45, i32 0)
  store i32 0, i32* %2, align 4
  br label %55

47:                                               ; preds = %19
  %48 = load %struct.statement*, %struct.statement** %3, align 8
  %49 = getelementptr inbounds %struct.statement, %struct.statement* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @PQclear(i32* %50)
  %52 = load %struct.statement*, %struct.statement** %3, align 8
  %53 = getelementptr inbounds %struct.statement, %struct.statement* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %47, %12, %1
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %44
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i64 @PQtransactionStatus(i32) #1

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i32 @ecpg_check_PQresult(i32*, i32, i32, i32) #1

declare dso_local i32 @ecpg_free_params(%struct.statement*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
