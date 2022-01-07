; ModuleID = '/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_from_zval_write_fd_array_aux.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/sockets/extr_conversions.c_from_zval_write_fd_array_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@IS_RESOURCE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"resource is not a stream or a socket\00", align 1
@PHP_STREAM_AS_FD = common dso_local global i32 0, align 4
@REPORT_ERRORS = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"cast stream to file descriptor failed\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"expected a resource variable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8**, i32*)* @from_zval_write_fd_array_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @from_zval_write_fd_array_aux(i32* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @Z_TYPE_P(i32* %16)
  %18 = load i64, i64* @IS_RESOURCE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %63

20:                                               ; preds = %4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 (...) @php_sockets_le_socket()
  %23 = call i64 @zend_fetch_resource_ex(i32* %21, i32* null, i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %24, %struct.TYPE_2__** %11, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  br label %66

35:                                               ; preds = %20
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 (...) @php_file_le_stream()
  %38 = call i32 (...) @php_file_le_pstream()
  %39 = call i64 @zend_fetch_resource2_ex(i32* %36, i32* null, i32 %37, i32 %38)
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32*, i32** %8, align 8
  %45 = call i32 @do_from_zval_err(i32* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %66

46:                                               ; preds = %35
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @PHP_STREAM_AS_FD, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = bitcast i32* %53 to i8**
  %55 = load i32, i32* @REPORT_ERRORS, align 4
  %56 = call i64 @php_stream_cast(i32* %47, i32 %48, i8** %54, i32 %55)
  %57 = load i64, i64* @FAILURE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @do_from_zval_err(i32* %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %66

62:                                               ; preds = %46
  br label %66

63:                                               ; preds = %4
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @do_from_zval_err(i32* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %27, %43, %59, %63, %62
  ret void
}

declare dso_local i64 @Z_TYPE_P(i32*) #1

declare dso_local i64 @zend_fetch_resource_ex(i32*, i32*, i32) #1

declare dso_local i32 @php_sockets_le_socket(...) #1

declare dso_local i64 @zend_fetch_resource2_ex(i32*, i32*, i32, i32) #1

declare dso_local i32 @php_file_le_stream(...) #1

declare dso_local i32 @php_file_le_pstream(...) #1

declare dso_local i32 @do_from_zval_err(i32*, i8*) #1

declare dso_local i64 @php_stream_cast(i32*, i32, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
