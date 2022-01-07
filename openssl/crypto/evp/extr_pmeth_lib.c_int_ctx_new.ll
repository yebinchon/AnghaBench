; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_lib.c_int_ctx_new.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_pmeth_lib.c_int_ctx_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i8*, %struct.TYPE_12__*, %struct.TYPE_14__*, i32, i32*, i32* }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_13__*)* }
%struct.TYPE_14__ = type { i32, i32*, i32* }

@EVP_F_INT_CTX_NEW = common dso_local global i32 0, align 4
@ERR_R_ENGINE_LIB = common dso_local global i32 0, align 4
@EVP_R_UNSUPPORTED_ALGORITHM = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@EVP_PKEY_OP_UNDEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (i32*, %struct.TYPE_14__*, i32*, i8*, i8*, i32)* @int_ctx_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @int_ctx_new(i32* %0, %struct.TYPE_14__* %1, i32* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %15, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %17 = icmp eq %struct.TYPE_14__* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %6
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %13, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %110

25:                                               ; preds = %21, %18, %6
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %30 = icmp eq %struct.TYPE_14__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  br label %170

32:                                               ; preds = %28
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i32*, i32** %10, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %11, align 8
  %41 = icmp eq i8* %40, null
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i1 [ true, %36 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @ossl_assert(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  br label %170

48:                                               ; preds = %42
  %49 = load i32*, i32** %10, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %13, align 4
  %53 = call i8* @OBJ_nid2sn(i32 %52)
  store i8* %53, i8** %11, align 8
  br label %54

54:                                               ; preds = %51, %48
  store i8* null, i8** %12, align 8
  store i32* null, i32** %8, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = icmp ne %struct.TYPE_14__* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  br label %73

69:                                               ; preds = %60
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i32* [ %68, %65 ], [ %72, %69 ]
  store i32* %74, i32** %10, align 8
  br label %75

75:                                               ; preds = %73, %57, %54
  %76 = load i32*, i32** %10, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @ENGINE_init(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* @EVP_F_INT_CTX_NEW, align 4
  %84 = load i32, i32* @ERR_R_ENGINE_LIB, align 4
  %85 = call i32 @EVPerr(i32 %83, i32 %84)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  br label %170

86:                                               ; preds = %78
  br label %90

87:                                               ; preds = %75
  %88 = load i32, i32* %13, align 4
  %89 = call i32* @ENGINE_get_pkey_meth_engine(i32 %88)
  store i32* %89, i32** %10, align 8
  br label %90

90:                                               ; preds = %87, %86
  %91 = load i32*, i32** %10, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %13, align 4
  %96 = call %struct.TYPE_12__* @ENGINE_get_pkey_meth(i32* %94, i32 %95)
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %15, align 8
  br label %100

97:                                               ; preds = %90
  %98 = load i32, i32* %13, align 4
  %99 = call %struct.TYPE_12__* @EVP_PKEY_meth_find(i32 %98)
  store %struct.TYPE_12__* %99, %struct.TYPE_12__** %15, align 8
  br label %100

100:                                              ; preds = %97, %93
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %102 = icmp eq %struct.TYPE_12__* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @ENGINE_finish(i32* %104)
  %106 = load i32, i32* @EVP_F_INT_CTX_NEW, align 4
  %107 = load i32, i32* @EVP_R_UNSUPPORTED_ALGORITHM, align 4
  %108 = call i32 @EVPerr(i32 %106, i32 %107)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  br label %170

109:                                              ; preds = %100
  br label %110

110:                                              ; preds = %109, %24
  %111 = call %struct.TYPE_13__* @OPENSSL_zalloc(i32 56)
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %14, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %113 = icmp eq %struct.TYPE_13__* %112, null
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @ENGINE_finish(i32* %115)
  %117 = load i32, i32* @EVP_F_INT_CTX_NEW, align 4
  %118 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %119 = call i32 @EVPerr(i32 %117, i32 %118)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  br label %170

120:                                              ; preds = %110
  %121 = load i32*, i32** %8, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 6
  store i32* %121, i32** %123, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 5
  store i32* %130, i32** %132, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 2
  store %struct.TYPE_12__* %133, %struct.TYPE_12__** %135, align 8
  %136 = load i32, i32* @EVP_PKEY_OP_UNDEFINED, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 3
  store %struct.TYPE_14__* %139, %struct.TYPE_14__** %141, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %143 = icmp ne %struct.TYPE_14__* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %120
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %146 = call i32 @EVP_PKEY_up_ref(%struct.TYPE_14__* %145)
  br label %147

147:                                              ; preds = %144, %120
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %149 = icmp ne %struct.TYPE_12__* %148, null
  br i1 %149, label %150, label %168

150:                                              ; preds = %147
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %152, align 8
  %154 = icmp ne i64 (%struct.TYPE_13__*)* %153, null
  br i1 %154, label %155, label %168

155:                                              ; preds = %150
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %160 = call i64 %158(%struct.TYPE_13__* %159)
  %161 = icmp sle i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %155
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %164, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %166 = call i32 @EVP_PKEY_CTX_free(%struct.TYPE_13__* %165)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %7, align 8
  br label %170

167:                                              ; preds = %155
  br label %168

168:                                              ; preds = %167, %150, %147
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %169, %struct.TYPE_13__** %7, align 8
  br label %170

170:                                              ; preds = %168, %162, %114, %103, %82, %47, %31
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  ret %struct.TYPE_13__* %171
}

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i32 @ENGINE_init(i32*) #1

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32* @ENGINE_get_pkey_meth_engine(i32) #1

declare dso_local %struct.TYPE_12__* @ENGINE_get_pkey_meth(i32*, i32) #1

declare dso_local %struct.TYPE_12__* @EVP_PKEY_meth_find(i32) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local %struct.TYPE_13__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @EVP_PKEY_up_ref(%struct.TYPE_14__*) #1

declare dso_local i32 @EVP_PKEY_CTX_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
