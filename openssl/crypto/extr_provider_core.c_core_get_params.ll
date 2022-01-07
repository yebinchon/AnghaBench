; ModuleID = '/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_core_get_params.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/extr_provider_core.c_core_get_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i8*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"openssl-version\00", align 1
@OPENSSL_VERSION_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"provider-name\00", align 1
@OSSL_PROV_PARAM_MODULE_FILENAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*)* @core_get_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_get_params(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32* @OSSL_PARAM_locate(i32* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* @OPENSSL_VERSION_STR, align 4
  %15 = call i32 @OSSL_PARAM_set_utf8_ptr(i32* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @OSSL_PARAM_locate(i32* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @OSSL_PARAM_set_utf8_ptr(i32* %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %16
  %27 = load i32*, i32** %5, align 8
  %28 = load i8*, i8** @OSSL_PROV_PARAM_MODULE_FILENAME, align 8
  %29 = call i32* @OSSL_PARAM_locate(i32* %27, i8* %28)
  store i32* %29, i32** %7, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %34 = call i32 @ossl_provider_module_path(%struct.TYPE_6__* %33)
  %35 = call i32 @OSSL_PARAM_set_utf8_ptr(i32* %32, i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %73

42:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %69, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @sk_INFOPAIR_num(i32* %47)
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %43
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call %struct.TYPE_7__* @sk_INFOPAIR_value(i32* %53, i32 %54)
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %8, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32* @OSSL_PARAM_locate(i32* %56, i8* %59)
  store i32* %60, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @OSSL_PARAM_set_utf8_ptr(i32* %63, i32 %66)
  br label %68

68:                                               ; preds = %62, %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %43

72:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %41
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32* @OSSL_PARAM_locate(i32*, i8*) #1

declare dso_local i32 @OSSL_PARAM_set_utf8_ptr(i32*, i32) #1

declare dso_local i32 @ossl_provider_module_path(%struct.TYPE_6__*) #1

declare dso_local i32 @sk_INFOPAIR_num(i32*) #1

declare dso_local %struct.TYPE_7__* @sk_INFOPAIR_value(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
