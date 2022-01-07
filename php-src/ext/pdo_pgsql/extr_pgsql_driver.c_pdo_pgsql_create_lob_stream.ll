; ModuleID = '/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pdo_pgsql_create_lob_stream.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pdo_pgsql/extr_pgsql_driver.c_pdo_pgsql_create_lob_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdo_pgsql_lob_self = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@pdo_pgsql_lob_stream_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"r+b\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pdo_pgsql_create_lob_stream(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pdo_pgsql_lob_self*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call %struct.pdo_pgsql_lob_self* @ecalloc(i32 1, i32 16)
  store %struct.pdo_pgsql_lob_self* %11, %struct.pdo_pgsql_lob_self** %9, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_4__* @Z_PDO_DBH_P(i32* %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %10, align 8
  %17 = load %struct.pdo_pgsql_lob_self*, %struct.pdo_pgsql_lob_self** %9, align 8
  %18 = getelementptr inbounds %struct.pdo_pgsql_lob_self, %struct.pdo_pgsql_lob_self* %17, i32 0, i32 3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @ZVAL_COPY_VALUE(i32* %18, i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.pdo_pgsql_lob_self*, %struct.pdo_pgsql_lob_self** %9, align 8
  %23 = getelementptr inbounds %struct.pdo_pgsql_lob_self, %struct.pdo_pgsql_lob_self* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.pdo_pgsql_lob_self*, %struct.pdo_pgsql_lob_self** %9, align 8
  %26 = getelementptr inbounds %struct.pdo_pgsql_lob_self, %struct.pdo_pgsql_lob_self* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pdo_pgsql_lob_self*, %struct.pdo_pgsql_lob_self** %9, align 8
  %31 = getelementptr inbounds %struct.pdo_pgsql_lob_self, %struct.pdo_pgsql_lob_self* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pdo_pgsql_lob_self*, %struct.pdo_pgsql_lob_self** %9, align 8
  %33 = call i32* @php_stream_alloc(i32* @pdo_pgsql_lob_stream_ops, %struct.pdo_pgsql_lob_self* %32, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @Z_ADDREF_P(i32* %37)
  %39 = load i32*, i32** %8, align 8
  store i32* %39, i32** %4, align 8
  br label %43

40:                                               ; preds = %3
  %41 = load %struct.pdo_pgsql_lob_self*, %struct.pdo_pgsql_lob_self** %9, align 8
  %42 = call i32 @efree(%struct.pdo_pgsql_lob_self* %41)
  store i32* null, i32** %4, align 8
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

declare dso_local %struct.pdo_pgsql_lob_self* @ecalloc(i32, i32) #1

declare dso_local %struct.TYPE_4__* @Z_PDO_DBH_P(i32*) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i32* @php_stream_alloc(i32*, %struct.pdo_pgsql_lob_self*, i32, i8*) #1

declare dso_local i32 @Z_ADDREF_P(i32*) #1

declare dso_local i32 @efree(%struct.pdo_pgsql_lob_self*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
