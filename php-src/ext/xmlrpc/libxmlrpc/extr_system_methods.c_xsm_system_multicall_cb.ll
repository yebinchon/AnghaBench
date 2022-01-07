; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_system_methods.c_xsm_system_multicall_cb.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_system_methods.c_xsm_system_multicall_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xmlrpc_vector_array = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"methodName\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@xmlrpc_request_call = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xsm_system_multicall_cb(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @XMLRPC_RequestGetData(i64 %14)
  %16 = call i64 @XMLRPC_VectorRewind(i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i32, i32* @xmlrpc_vector_array, align 4
  %18 = call i64 @XMLRPC_CreateVector(i32 0, i32 %17)
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %69

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = call i64 @XMLRPC_VectorRewind(i64 %22)
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %65, %21
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %24
  %28 = call i64 (...) @XMLRPC_RequestNew()
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  %33 = call i8* @XMLRPC_VectorGetStringWithID(i64 %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %11, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i64 @XMLRPC_VectorGetValueWithID(i64 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i64 %35, i64* %12, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %62

38:                                               ; preds = %31
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i32, i32* @xmlrpc_vector_array, align 4
  %43 = call i64 @XMLRPC_CreateVector(i32 0, i32 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @XMLRPC_RequestSetMethodName(i64 %44, i8* %45)
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @XMLRPC_RequestSetData(i64 %47, i64 %48)
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* @xmlrpc_request_call, align 4
  %52 = call i32 @XMLRPC_RequestSetRequestType(i64 %50, i32 %51)
  %53 = load i64, i64* %13, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i64, i64* %10, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i64 @XMLRPC_ServerCallMethod(i32 %54, i64 %55, i8* %56)
  %58 = call i32 @XMLRPC_AddValueToVector(i64 %53, i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @XMLRPC_AddValueToVector(i64 %59, i64 %60)
  br label %62

62:                                               ; preds = %41, %38, %31
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @XMLRPC_RequestFree(i64 %63, i32 1)
  br label %65

65:                                               ; preds = %62, %27
  %66 = load i64, i64* %7, align 8
  %67 = call i64 @XMLRPC_VectorNext(i64 %66)
  store i64 %67, i64* %9, align 8
  br label %24

68:                                               ; preds = %24
  br label %69

69:                                               ; preds = %68, %3
  %70 = load i64, i64* %8, align 8
  ret i64 %70
}

declare dso_local i64 @XMLRPC_VectorRewind(i64) #1

declare dso_local i64 @XMLRPC_RequestGetData(i64) #1

declare dso_local i64 @XMLRPC_CreateVector(i32, i32) #1

declare dso_local i64 @XMLRPC_RequestNew(...) #1

declare dso_local i8* @XMLRPC_VectorGetStringWithID(i64, i8*) #1

declare dso_local i64 @XMLRPC_VectorGetValueWithID(i64, i8*) #1

declare dso_local i32 @XMLRPC_RequestSetMethodName(i64, i8*) #1

declare dso_local i32 @XMLRPC_RequestSetData(i64, i64) #1

declare dso_local i32 @XMLRPC_RequestSetRequestType(i64, i32) #1

declare dso_local i32 @XMLRPC_AddValueToVector(i64, i64) #1

declare dso_local i64 @XMLRPC_ServerCallMethod(i32, i64, i8*) #1

declare dso_local i32 @XMLRPC_RequestFree(i64, i32) #1

declare dso_local i64 @XMLRPC_VectorNext(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
