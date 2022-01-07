; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc_introspection.c_describeValue_worker.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_xmlrpc_introspection.c_describeValue_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xmlrpc_vector_struct = common dso_local global i32 0, align 4
@xi_token_name = common dso_local global i32 0, align 4
@xi_token_type = common dso_local global i32 0, align 4
@xi_token_description = common dso_local global i32 0, align 4
@xi_token_optional = common dso_local global i32 0, align 4
@xi_token_default = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i8*, i32, i8*, i32*)* @describeValue_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @describeValue_worker(i8* %0, i8* %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = load i8*, i8** %9, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %56

19:                                               ; preds = %16, %6
  %20 = load i32, i32* @xmlrpc_vector_struct, align 4
  %21 = call i32* @XMLRPC_CreateVector(i32* null, i32 %20)
  store i32* %21, i32** %13, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* @xi_token_name, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @XMLRPC_VectorAppendString(i32* %22, i32 %23, i8* %24, i32 0)
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* @xi_token_type, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @XMLRPC_VectorAppendString(i32* %26, i32 %27, i8* %28, i32 0)
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* @xi_token_description, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @XMLRPC_VectorAppendString(i32* %30, i32 %31, i8* %32, i32 0)
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 2
  br i1 %35, label %36, label %41

36:                                               ; preds = %19
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* @xi_token_optional, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @XMLRPC_VectorAppendInt(i32* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %19
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* @xi_token_default, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @XMLRPC_VectorAppendString(i32* %48, i32 %49, i8* %50, i32 0)
  br label %52

52:                                               ; preds = %47, %44, %41
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @XMLRPC_AddValueToVector(i32* %53, i32* %54)
  br label %56

56:                                               ; preds = %52, %16
  %57 = load i32*, i32** %13, align 8
  ret i32* %57
}

declare dso_local i32* @XMLRPC_CreateVector(i32*, i32) #1

declare dso_local i32 @XMLRPC_VectorAppendString(i32*, i32, i8*, i32) #1

declare dso_local i32 @XMLRPC_VectorAppendInt(i32*, i32, i32) #1

declare dso_local i32 @XMLRPC_AddValueToVector(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
