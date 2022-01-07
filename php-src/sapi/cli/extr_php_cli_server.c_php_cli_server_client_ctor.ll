; ModuleID = '/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_client_ctor.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/cli/extr_php_cli_server.c_php_cli_server_client_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i64, i64, i32*, i64, i64, i32*, i32, i64, i32, i32, i32, i32, %struct.sockaddr*, i32, i32* }
%struct.sockaddr = type { i32 }

@PHP_HTTP_REQUEST = common dso_local global i32 0, align 4
@HEADER_NONE = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, %struct.sockaddr*, i32)* @php_cli_server_client_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_cli_server_client_ctor(%struct.TYPE_3__* %0, i32* %1, i32 %2, %struct.sockaddr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 17
  store i32* %13, i32** %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 16
  store i32 %16, i32* %18, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 15
  store %struct.sockaddr* %19, %struct.sockaddr** %21, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 14
  store i32 %22, i32* %24, align 4
  store i32* null, i32** %12, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @php_network_populate_name_from_sockaddr(%struct.sockaddr* %25, i32 %26, i32** %12, i32* null, i32 0)
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @ZSTR_VAL(i32* %28)
  %30 = load i32*, i32** %12, align 8
  %31 = call i32 @ZSTR_LEN(i32* %30)
  %32 = call i32 @pestrndup(i32 %29, i32 %31, i32 1)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 13
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @ZSTR_LEN(i32* %35)
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 12
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @zend_string_release_ex(i32* %39, i32 0)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 11
  %43 = load i32, i32* @PHP_HTTP_REQUEST, align 4
  %44 = call i32 @php_http_parser_init(i32* %42, i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 10
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @HEADER_NONE, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 8
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 7
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 5
  store i32* null, i32** %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load i64, i64* @FAILURE, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = call i64 @php_cli_server_request_ctor(i32* %64)
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %5
  %68 = load i64, i64* @FAILURE, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  br label %76

70:                                               ; preds = %5
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  %75 = load i32, i32* @SUCCESS, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @php_network_populate_name_from_sockaddr(%struct.sockaddr*, i32, i32**, i32*, i32) #1

declare dso_local i32 @pestrndup(i32, i32, i32) #1

declare dso_local i32 @ZSTR_VAL(i32*) #1

declare dso_local i32 @ZSTR_LEN(i32*) #1

declare dso_local i32 @zend_string_release_ex(i32*, i32) #1

declare dso_local i32 @php_http_parser_init(i32*, i32) #1

declare dso_local i64 @php_cli_server_request_ctor(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
