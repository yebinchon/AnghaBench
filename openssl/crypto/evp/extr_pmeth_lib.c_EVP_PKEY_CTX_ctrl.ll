; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_CTX_ctrl.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_lib.c_EVP_PKEY_CTX_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*, i32, i32, i8*)*, i32, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }

@EVP_F_EVP_PKEY_CTX_CTRL = common dso_local global i32 0, align 4
@EVP_R_COMMAND_NOT_SUPPORTED = common dso_local global i32 0, align 4
@EVP_PKEY_OP_UNDEFINED = common dso_local global i32 0, align 4
@EVP_R_NO_OPERATION_SET = common dso_local global i32 0, align 4
@EVP_R_INVALID_OPERATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_CTX_ctrl(%struct.TYPE_15__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %16 = icmp eq %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %6
  %18 = load i32, i32* @EVP_F_EVP_PKEY_CTX_CTRL, align 4
  %19 = load i32, i32* @EVP_R_COMMAND_NOT_SUPPORTED, align 4
  %20 = call i32 @EVPerr(i32 %18, i32 %19)
  store i32 -2, i32* %7, align 4
  br label %131

21:                                               ; preds = %6
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %23 = call i64 @EVP_PKEY_CTX_IS_DERIVE_OP(%struct.TYPE_15__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %25, %21
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %34 = call i64 @EVP_PKEY_CTX_IS_SIGNATURE_OP(%struct.TYPE_15__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %36, %25
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @legacy_ctrl_to_param(%struct.TYPE_15__* %44, i32 %45, i32 %46, i32 %47, i32 %48, i8* %49)
  store i32 %50, i32* %7, align 4
  br label %131

51:                                               ; preds = %36, %32
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  %55 = icmp eq %struct.TYPE_14__* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_15__*, i32, i32, i8*)*, i32 (%struct.TYPE_15__*, i32, i32, i8*)** %60, align 8
  %62 = icmp eq i32 (%struct.TYPE_15__*, i32, i32, i8*)* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %56, %51
  %64 = load i32, i32* @EVP_F_EVP_PKEY_CTX_CTRL, align 4
  %65 = load i32, i32* @EVP_R_COMMAND_NOT_SUPPORTED, align 4
  %66 = call i32 @EVPerr(i32 %64, i32 %65)
  store i32 -2, i32* %7, align 4
  br label %131

67:                                               ; preds = %56
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %79

70:                                               ; preds = %67
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 -1, i32* %7, align 4
  br label %131

79:                                               ; preds = %70, %67
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %112

87:                                               ; preds = %79
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @EVP_PKEY_OP_UNDEFINED, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load i32, i32* @EVP_F_EVP_PKEY_CTX_CTRL, align 4
  %95 = load i32, i32* @EVP_R_NO_OPERATION_SET, align 4
  %96 = call i32 @EVPerr(i32 %94, i32 %95)
  store i32 -1, i32* %7, align 4
  br label %131

97:                                               ; preds = %87
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %111

100:                                              ; preds = %97
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %100
  %108 = load i32, i32* @EVP_F_EVP_PKEY_CTX_CTRL, align 4
  %109 = load i32, i32* @EVP_R_INVALID_OPERATION, align 4
  %110 = call i32 @EVPerr(i32 %108, i32 %109)
  store i32 -1, i32* %7, align 4
  br label %131

111:                                              ; preds = %100, %97
  br label %112

112:                                              ; preds = %111, %86
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32 (%struct.TYPE_15__*, i32, i32, i8*)*, i32 (%struct.TYPE_15__*, i32, i32, i8*)** %116, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i8*, i8** %13, align 8
  %122 = call i32 %117(%struct.TYPE_15__* %118, i32 %119, i32 %120, i8* %121)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp eq i32 %123, -2
  br i1 %124, label %125, label %129

125:                                              ; preds = %112
  %126 = load i32, i32* @EVP_F_EVP_PKEY_CTX_CTRL, align 4
  %127 = load i32, i32* @EVP_R_COMMAND_NOT_SUPPORTED, align 4
  %128 = call i32 @EVPerr(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %112
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %7, align 4
  br label %131

131:                                              ; preds = %129, %107, %93, %78, %63, %43, %17
  %132 = load i32, i32* %7, align 4
  ret i32 %132
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i64 @EVP_PKEY_CTX_IS_DERIVE_OP(%struct.TYPE_15__*) #1

declare dso_local i64 @EVP_PKEY_CTX_IS_SIGNATURE_OP(%struct.TYPE_15__*) #1

declare dso_local i32 @legacy_ctrl_to_param(%struct.TYPE_15__*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
