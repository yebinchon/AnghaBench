; ModuleID = '/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c__soap_server_exception.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/soap/extr_soap.c__soap_server_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@exception = common dso_local global i32 0, align 4
@soap_fault_class_entry = common dso_local global i32 0, align 4
@zend_ce_error = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Internal Error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32*)* @_soap_server_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_soap_server_exception(%struct.TYPE_3__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @exception, align 4
  %11 = call i32 @EG(i32 %10)
  %12 = call i32 @ZVAL_OBJ(i32* %7, i32 %11)
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @Z_OBJCE(i32 %13)
  %15 = load i32, i32* @soap_fault_class_entry, align 4
  %16 = call i64 @instanceof_function(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @soap_server_fault_ex(i32 %19, i32* %7, i32* null)
  br label %49

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @Z_OBJCE(i32 %22)
  %24 = load i32, i32* @zend_ce_error, align 4
  %25 = call i64 @instanceof_function(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i32, i32* @zend_ce_error, align 4
  %34 = call i32 @zend_read_property(i32 %33, i32* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7, i32 0, i32* %8)
  %35 = call i32* @zval_get_string(i32 %34)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i8* @ZSTR_VAL(i32* %37)
  %39 = call i32 @add_soap_fault_ex(i32* %7, i32* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32* null, i32* null)
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @zend_string_release_ex(i32* %40, i32 0)
  br label %45

42:                                               ; preds = %27
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @add_soap_fault_ex(i32* %7, i32* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* null)
  br label %45

45:                                               ; preds = %42, %32
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @soap_server_fault_ex(i32 %46, i32* %7, i32* null)
  br label %48

48:                                               ; preds = %45, %21
  br label %49

49:                                               ; preds = %48, %18
  ret void
}

declare dso_local i32 @ZVAL_OBJ(i32*, i32) #1

declare dso_local i32 @EG(i32) #1

declare dso_local i64 @instanceof_function(i32, i32) #1

declare dso_local i32 @Z_OBJCE(i32) #1

declare dso_local i32 @soap_server_fault_ex(i32, i32*, i32*) #1

declare dso_local i32* @zval_get_string(i32) #1

declare dso_local i32 @zend_read_property(i32, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @add_soap_fault_ex(i32*, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i8* @ZSTR_VAL(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
