; ModuleID = '/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_mod.c_module_add.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/conf/extr_conf_mod.c_module_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32*, i32*, i32* }

@supported_modules = common dso_local global i32* null, align 8
@CONF_F_MODULE_ADD = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32*, i8*, i32*, i32*)* @module_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @module_add(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %11 = load i32*, i32** @supported_modules, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = call i32* (...) @sk_CONF_MODULE_new_null()
  store i32* %14, i32** @supported_modules, align 8
  br label %15

15:                                               ; preds = %13, %4
  %16 = load i32*, i32** @supported_modules, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %61

19:                                               ; preds = %15
  %20 = call %struct.TYPE_7__* @OPENSSL_zalloc(i32 32)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %10, align 8
  %21 = icmp eq %struct.TYPE_7__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @CONF_F_MODULE_ADD, align 4
  %24 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %25 = call i32 @CONFerr(i32 %23, i32 %24)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %61

26:                                               ; preds = %19
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  store i32* %27, i32** %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call %struct.TYPE_7__* @OPENSSL_strdup(i8* %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %33, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = icmp eq %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %26
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %46 = call i32 @OPENSSL_free(%struct.TYPE_7__* %45)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %61

47:                                               ; preds = %26
  %48 = load i32*, i32** @supported_modules, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %50 = call i32 @sk_CONF_MODULE_push(i32* %48, %struct.TYPE_7__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = call i32 @OPENSSL_free(%struct.TYPE_7__* %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %58 = call i32 @OPENSSL_free(%struct.TYPE_7__* %57)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  br label %61

59:                                               ; preds = %47
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %5, align 8
  br label %61

61:                                               ; preds = %59, %52, %44, %22, %18
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  ret %struct.TYPE_7__* %62
}

declare dso_local i32* @sk_CONF_MODULE_new_null(...) #1

declare dso_local %struct.TYPE_7__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @CONFerr(i32, i32) #1

declare dso_local %struct.TYPE_7__* @OPENSSL_strdup(i8*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_7__*) #1

declare dso_local i32 @sk_CONF_MODULE_push(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
