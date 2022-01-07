; ModuleID = '/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_plpymodule.c_PLy_add_exceptions.c'
source_filename = "/home/carl/AnghaBench/postgres/src/pl/plpython/extr_plpy_plpymodule.c_PLy_add_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"spiexceptions\00", align 1
@PLy_exc_methods = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"could not create the spiexceptions module\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"could not add the spiexceptions module\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"plpy.Error\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@PLy_exc_error = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"plpy.Fatal\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Fatal\00", align 1
@PLy_exc_fatal = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"plpy.SPIError\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"SPIError\00", align 1
@PLy_exc_spi_error = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"PL/Python SPI exceptions\00", align 1
@HASH_ELEM = common dso_local global i32 0, align 4
@HASH_BLOBS = common dso_local global i32 0, align 4
@PLy_spi_exceptions = common dso_local global i32 0, align 4
@PLy_exc_module = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @PLy_add_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PLy_add_exceptions(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @PLy_exc_methods, align 4
  %6 = call i32* @Py_InitModule(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ERROR, align 4
  %11 = call i32 @PLy_elog(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @Py_INCREF(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @PyModule_AddObject(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 @PLy_elog(i32 %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %12
  %23 = load i32*, i32** %2, align 8
  %24 = call i8* @PLy_create_exception(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* null, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32* %23)
  store i8* %24, i8** @PLy_exc_error, align 8
  %25 = load i32*, i32** %2, align 8
  %26 = call i8* @PLy_create_exception(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* null, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32* %25)
  store i8* %26, i8** @PLy_exc_fatal, align 8
  %27 = load i32*, i32** %2, align 8
  %28 = call i8* @PLy_create_exception(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32* %27)
  store i8* %28, i8** @PLy_exc_spi_error, align 8
  %29 = call i32 @memset(%struct.TYPE_4__* %4, i32 0, i32 8)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 4, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32 4, i32* %31, align 4
  %32 = load i32, i32* @HASH_ELEM, align 4
  %33 = load i32, i32* @HASH_BLOBS, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @hash_create(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 256, %struct.TYPE_4__* %4, i32 %34)
  store i32 %35, i32* @PLy_spi_exceptions, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** @PLy_exc_spi_error, align 8
  %38 = call i32 @PLy_generate_spi_exceptions(i32* %36, i8* %37)
  ret void
}

declare dso_local i32* @Py_InitModule(i8*, i32) #1

declare dso_local i32 @PLy_elog(i32, i8*) #1

declare dso_local i32 @Py_INCREF(i32*) #1

declare dso_local i64 @PyModule_AddObject(i32*, i8*, i32*) #1

declare dso_local i8* @PLy_create_exception(i8*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @hash_create(i8*, i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @PLy_generate_spi_exceptions(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
