; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/extr_xmlrpc-epi-php.c_php_xmlrpc_callback.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/extr_xmlrpc-epi-php.c_php_xmlrpc_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @php_xmlrpc_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_xmlrpc_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 4
  %15 = call i32 @zval_ptr_dtor(i32* %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = call i32 @zval_ptr_dtor(i32* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @XMLRPC_RequestGetMethodName(i32 %21)
  %23 = call i32 @ZVAL_STRING(i32* %20, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @XMLRPC_RequestGetData(i32 %24)
  %26 = call i32 @XMLRPC_to_PHP(i32 %25, i32* %9)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @Z_ARRVAL(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @Z_STR(i32 %35)
  %37 = call i32* @zend_hash_find(i32 %32, i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @ZVAL_COPY_VALUE(i32* %41, i32* %42)
  br label %44

44:                                               ; preds = %39, %3
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 4
  %48 = call i32 @ZVAL_COPY_VALUE(i32* %45, i32* %47)
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %50 = call i32 @ZVAL_COPY_VALUE(i32* %49, i32* %9)
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = call i32 @ZVAL_COPY_VALUE(i32* %51, i32* %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %60 = call i32 @call_user_function(i32* null, i32* null, i32* %56, i32* %58, i32 3, i32* %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = call i32 @zval_ptr_dtor(i32* %9)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = call i32 @PHP_to_XMLRPC(i32* %65)
  ret i32 %66
}

declare dso_local i32 @zval_ptr_dtor(i32*) #1

declare dso_local i32 @ZVAL_STRING(i32*, i32) #1

declare dso_local i32 @XMLRPC_RequestGetMethodName(i32) #1

declare dso_local i32 @XMLRPC_to_PHP(i32, i32*) #1

declare dso_local i32 @XMLRPC_RequestGetData(i32) #1

declare dso_local i32* @zend_hash_find(i32, i32) #1

declare dso_local i32 @Z_ARRVAL(i32) #1

declare dso_local i32 @Z_STR(i32) #1

declare dso_local i32 @ZVAL_COPY_VALUE(i32*, i32*) #1

declare dso_local i32 @call_user_function(i32*, i32*, i32*, i32*, i32, i32*) #1

declare dso_local i32 @PHP_to_XMLRPC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
