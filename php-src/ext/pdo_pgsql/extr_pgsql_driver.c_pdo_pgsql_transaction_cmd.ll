; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pdo_pgsql_transaction_cmd.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pdo_pgsql_transaction_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@PGRES_COMMAND_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*)* @pdo_pgsql_transaction_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdo_pgsql_transaction_cmd(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  store i32 1, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i32* @PQexec(i32 %14, i8* %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i64 @PQresultStatus(i32* %17)
  %19 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i64 @PQresultStatus(i32* %23)
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @pdo_pgsql_sqlstate(i32* %25)
  %27 = call i32 @pdo_pgsql_error(%struct.TYPE_6__* %22, i64 %24, i32 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %21, %2
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @PQclear(i32* %29)
  %31 = load i32, i32* %7, align 4
  ret i32 %31
}

declare dso_local i32* @PQexec(i32, i8*) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @pdo_pgsql_error(%struct.TYPE_6__*, i64, i32) #1

declare dso_local i32 @pdo_pgsql_sqlstate(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
