; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_CTX_ctrl_str.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_CTX_ctrl_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { {}* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_15__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_15__ = type { i32* }

@EVP_F_EVP_PKEY_CTX_CTRL_STR = common dso_local global i32 0, align 4
@EVP_R_COMMAND_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@EVP_PKEY_OP_TYPE_SIG = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_MD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_CTX_ctrl_str(%struct.TYPE_16__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %9 = icmp eq %struct.TYPE_16__* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* @EVP_F_EVP_PKEY_CTX_CTRL_STR, align 4
  %12 = load i32, i32* @EVP_R_COMMAND_NOT_SUPPORTED, align 4
  %13 = call i32 @EVPerr(i32 %11, i32 %12)
  store i32 -2, i32* %4, align 4
  br label %82

14:                                               ; preds = %3
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = call i64 @EVP_PKEY_CTX_IS_DERIVE_OP(%struct.TYPE_16__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %18, %14
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = call i64 @EVP_PKEY_CTX_IS_SIGNATURE_OP(%struct.TYPE_16__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %29, %18
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @legacy_ctrl_str_to_param(%struct.TYPE_16__* %37, i8* %38, i8* %39)
  store i32 %40, i32* %4, align 4
  br label %82

41:                                               ; preds = %29, %25
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = icmp ne %struct.TYPE_16__* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %46, align 8
  %48 = icmp ne %struct.TYPE_14__* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32 (%struct.TYPE_16__*, i8*, i8*)**
  %55 = load i32 (%struct.TYPE_16__*, i8*, i8*)*, i32 (%struct.TYPE_16__*, i8*, i8*)** %54, align 8
  %56 = icmp ne i32 (%struct.TYPE_16__*, i8*, i8*)* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %49, %44, %41
  %58 = load i32, i32* @EVP_F_EVP_PKEY_CTX_CTRL_STR, align 4
  %59 = load i32, i32* @EVP_R_COMMAND_NOT_SUPPORTED, align 4
  %60 = call i32 @EVPerr(i32 %58, i32 %59)
  store i32 -2, i32* %4, align 4
  br label %82

61:                                               ; preds = %49
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = load i32, i32* @EVP_PKEY_OP_TYPE_SIG, align 4
  %68 = load i32, i32* @EVP_PKEY_CTRL_MD, align 4
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @EVP_PKEY_CTX_md(%struct.TYPE_16__* %66, i32 %67, i32 %68, i8* %69)
  store i32 %70, i32* %4, align 4
  br label %82

71:                                               ; preds = %61
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = bitcast {}** %75 to i32 (%struct.TYPE_16__*, i8*, i8*)**
  %77 = load i32 (%struct.TYPE_16__*, i8*, i8*)*, i32 (%struct.TYPE_16__*, i8*, i8*)** %76, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 %77(%struct.TYPE_16__* %78, i8* %79, i8* %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %71, %65, %57, %36, %10
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_IS_DERIVE_OP(%struct.TYPE_16__*) #1

declare dso_local i64 @EVP_PKEY_CTX_IS_SIGNATURE_OP(%struct.TYPE_16__*) #1

declare dso_local i32 @legacy_ctrl_str_to_param(%struct.TYPE_16__*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @EVP_PKEY_CTX_md(%struct.TYPE_16__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
