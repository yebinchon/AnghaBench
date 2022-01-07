; ModuleID = '/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_auth.c_mysqlnd_native_auth_get_auth_data.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/mysqlnd/extr_mysqlnd_auth.c_mysqlnd_native_auth_get_auth_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_mysqlnd_authentication_plugin = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"mysqlnd_native_auth_get_auth_data\00", align 1
@SCRAMBLE_LENGTH = common dso_local global i64 0, align 8
@CR_MALFORMED_PACKET = common dso_local global i32 0, align 4
@UNKNOWN_SQLSTATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"The server sent wrong length for scramble\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"The server sent wrong length for scramble %u. Expected %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.st_mysqlnd_authentication_plugin*, i64*, %struct.TYPE_3__*, i8*, i8*, i64, i32*, i64, i32*, i32*, i32)* @mysqlnd_native_auth_get_auth_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @mysqlnd_native_auth_get_auth_data(%struct.st_mysqlnd_authentication_plugin* %0, i64* %1, %struct.TYPE_3__* %2, i8* %3, i8* %4, i64 %5, i32* %6, i64 %7, i32* %8, i32* %9, i32 %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca %struct.st_mysqlnd_authentication_plugin*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store %struct.st_mysqlnd_authentication_plugin* %0, %struct.st_mysqlnd_authentication_plugin** %13, align 8
  store i64* %1, i64** %14, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i64 %5, i64* %18, align 8
  store i32* %6, i32** %19, align 8
  store i64 %7, i64* %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32* null, i32** %24, align 8
  %25 = call i32 @DBG_ENTER(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %26 = load i64*, i64** %14, align 8
  store i64 0, i64* %26, align 8
  %27 = load i64, i64* %20, align 8
  %28 = load i64, i64* @SCRAMBLE_LENGTH, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %11
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CR_MALFORMED_PACKET, align 4
  %35 = load i32, i32* @UNKNOWN_SQLSTATE, align 4
  %36 = call i32 @SET_CLIENT_ERROR(i32 %33, i32 %34, i32 %35, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* %20, align 8
  %38 = load i64, i64* @SCRAMBLE_LENGTH, align 8
  %39 = call i32 @DBG_ERR_FMT(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i64 %37, i64 %38)
  %40 = call i32 @DBG_RETURN(i32* null)
  br label %41

41:                                               ; preds = %30, %11
  %42 = load i8*, i8** %17, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load i64, i64* %18, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  %48 = load i64, i64* @SCRAMBLE_LENGTH, align 8
  %49 = call i32* @malloc(i64 %48)
  store i32* %49, i32** %24, align 8
  %50 = load i64, i64* @SCRAMBLE_LENGTH, align 8
  %51 = load i64*, i64** %14, align 8
  store i64 %50, i64* %51, align 8
  %52 = load i32*, i32** %24, align 8
  %53 = load i32*, i32** %19, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = bitcast i8* %54 to i32*
  %56 = load i64, i64* %18, align 8
  %57 = call i32 @php_mysqlnd_scramble(i32* %52, i32* %53, i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %47, %44, %41
  %59 = load i32*, i32** %24, align 8
  %60 = call i32 @DBG_RETURN(i32* %59)
  %61 = load i32*, i32** %12, align 8
  ret i32* %61
}

declare dso_local i32 @DBG_ENTER(i8*) #1

declare dso_local i32 @SET_CLIENT_ERROR(i32, i32, i32, i8*) #1

declare dso_local i32 @DBG_ERR_FMT(i8*, i64, i64) #1

declare dso_local i32 @DBG_RETURN(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @php_mysqlnd_scramble(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
