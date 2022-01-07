; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_exchange.c_EVP_PKEY_derive_init.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_exchange.c_EVP_PKEY_derive_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i8*, %struct.TYPE_15__*, %struct.TYPE_14__, i32*, i32*, i32, i32, i32*, i32* }
%struct.TYPE_15__ = type { {}*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (i32*, i8*)*, i32, i32* (i32)* }

@EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE = common dso_local global i32 0, align 4
@EVP_PKEY_OP_DERIVE = common dso_local global i8* null, align 8
@EVP_R_INITIALIZATION_ERROR = common dso_local global i32 0, align 4
@EVP_PKEY_OP_UNDEFINED = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_derive_init(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i8* null, i8** %5, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = icmp eq %struct.TYPE_16__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %12 = call i32 @EVPerr(i32 0, i32 %11)
  store i32 -2, i32* %2, align 4
  br label %188

13:                                               ; preds = %1
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = call i32 @evp_pkey_ctx_free_old_ops(%struct.TYPE_16__* %14)
  %16 = load i8*, i8** @EVP_PKEY_OP_DERIVE, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 8
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %13
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %13
  br label %144

29:                                               ; preds = %23
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 7
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_17__* @EVP_KEYEXCH_fetch(i32 %32, i32* %35, i32 %38)
  store %struct.TYPE_17__* %39, %struct.TYPE_17__** %6, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %41 = icmp ne %struct.TYPE_17__* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %29
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = call i32 @EVP_KEYEXCH_number(%struct.TYPE_17__* %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32* @evp_keymgmt_fetch_by_number(i32 %52, i32 %53, i32 %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 3
  store i32* %57, i32** %59, align 8
  br label %60

60:                                               ; preds = %47, %42, %29
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %76, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = icmp eq %struct.TYPE_17__* %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i64 @EVP_KEYMGMT_provider(i32* %71)
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = call i64 @EVP_KEYEXCH_provider(%struct.TYPE_17__* %73)
  %75 = icmp ne i64 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %68, %65, %60
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %78 = call i32 @EVP_KEYEXCH_free(%struct.TYPE_17__* %77)
  br label %144

79:                                               ; preds = %68
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  store %struct.TYPE_17__* %80, %struct.TYPE_17__** %84, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %103

89:                                               ; preds = %79
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = call i8* @evp_keymgmt_export_to_provider(i32* %92, i32* %95, i32 0)
  store i8* %96, i8** %5, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %101 = call i32 @EVPerr(i32 0, i32 %100)
  br label %140

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %79
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = load i32* (i32)*, i32* (i32)** %105, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @ossl_provider_ctx(i32 %109)
  %111 = call i32* %106(i32 %110)
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  store i32* %111, i32** %115, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %103
  %123 = load i32, i32* @EVP_R_INITIALIZATION_ERROR, align 4
  %124 = call i32 @EVPerr(i32 0, i32 %123)
  br label %140

125:                                              ; preds = %103
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %127, align 8
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = load i8*, i8** %5, align 8
  %135 = call i32 %128(i32* %133, i8* %134)
  store i32 %135, i32* %4, align 4
  %136 = load i32, i32* %4, align 4
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 1, i32 0
  store i32 %139, i32* %2, align 4
  br label %188

140:                                              ; preds = %122, %99
  %141 = load i8*, i8** @EVP_PKEY_OP_UNDEFINED, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  store i32 0, i32* %2, align 4
  br label %188

144:                                              ; preds = %76, %28
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %146 = icmp eq %struct.TYPE_16__* %145, null
  br i1 %146, label %159, label %147

147:                                              ; preds = %144
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %149, align 8
  %151 = icmp eq %struct.TYPE_15__* %150, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %152, %147, %144
  %160 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %161 = call i32 @EVPerr(i32 0, i32 %160)
  store i32 -2, i32* %2, align 4
  br label %188

162:                                              ; preds = %152
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = bitcast {}** %166 to i32 (%struct.TYPE_16__*)**
  %168 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %167, align 8
  %169 = icmp eq i32 (%struct.TYPE_16__*)* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %162
  store i32 1, i32* %2, align 4
  br label %188

171:                                              ; preds = %162
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = bitcast {}** %175 to i32 (%struct.TYPE_16__*)**
  %177 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %176, align 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %179 = call i32 %177(%struct.TYPE_16__* %178)
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  %181 = icmp sle i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %171
  %183 = load i8*, i8** @EVP_PKEY_OP_UNDEFINED, align 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %182, %171
  %187 = load i32, i32* %4, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %186, %170, %159, %140, %125, %10
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @evp_pkey_ctx_free_old_ops(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @EVP_KEYEXCH_fetch(i32, i32*, i32) #1

declare dso_local i32 @EVP_KEYEXCH_number(%struct.TYPE_17__*) #1

declare dso_local i32* @evp_keymgmt_fetch_by_number(i32, i32, i32) #1

declare dso_local i64 @EVP_KEYMGMT_provider(i32*) #1

declare dso_local i64 @EVP_KEYEXCH_provider(%struct.TYPE_17__*) #1

declare dso_local i32 @EVP_KEYEXCH_free(%struct.TYPE_17__*) #1

declare dso_local i8* @evp_keymgmt_export_to_provider(i32*, i32*, i32) #1

declare dso_local i32 @ossl_provider_ctx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
