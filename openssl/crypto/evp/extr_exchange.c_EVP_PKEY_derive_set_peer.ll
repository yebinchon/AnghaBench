; ModuleID = '/home/carl/AnghaBench/openssl/crypto/evp/extr_exchange.c_EVP_PKEY_derive_set_peer.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/evp/extr_exchange.c_EVP_PKEY_derive_set_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_26__*, %struct.TYPE_24__*, %struct.TYPE_20__*, %struct.TYPE_23__, i32 }
%struct.TYPE_24__ = type { i32 (%struct.TYPE_25__*, i32, i32, %struct.TYPE_26__*)*, i32*, i32*, i32* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (i32*, i8*)* }
%struct.TYPE_26__ = type { i64 }

@EVP_F_EVP_PKEY_DERIVE_SET_PEER = common dso_local global i32 0, align 4
@EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EVP_PKEY_OP_DERIVE = common dso_local global i64 0, align 8
@EVP_PKEY_OP_ENCRYPT = common dso_local global i64 0, align 8
@EVP_PKEY_OP_DECRYPT = common dso_local global i64 0, align 8
@EVP_R_OPERATON_NOT_INITIALIZED = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_PEER_KEY = common dso_local global i32 0, align 4
@EVP_R_NO_KEY_SET = common dso_local global i32 0, align 4
@EVP_R_DIFFERENT_KEY_TYPES = common dso_local global i32 0, align 4
@EVP_R_DIFFERENT_PARAMETERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EVP_PKEY_derive_set_peer(%struct.TYPE_25__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  store i8* null, i8** %7, align 8
  %8 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %9 = icmp eq %struct.TYPE_25__* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %12 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %13 = call i32 @EVPerr(i32 %11, i32 %12)
  store i32 -2, i32* %3, align 4
  br label %207

14:                                               ; preds = %2
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %16 = call i32 @EVP_PKEY_CTX_IS_DERIVE_OP(%struct.TYPE_25__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %14
  br label %66

26:                                               ; preds = %18
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %32, align 8
  %34 = icmp eq i32 (i32*, i8*)* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %37 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %38 = call i32 @EVPerr(i32 %36, i32 %37)
  store i32 -2, i32* %3, align 4
  br label %207

39:                                               ; preds = %26
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @evp_keymgmt_export_to_provider(%struct.TYPE_26__* %40, i32 %43, i32 0)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %49 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %50 = call i32 @EVPerr(i32 %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %207

51:                                               ; preds = %39
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %57, align 8
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 %58(i32* %63, i8* %64)
  store i32 %65, i32* %3, align 4
  br label %207

66:                                               ; preds = %25
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %68, align 8
  %70 = icmp eq %struct.TYPE_24__* %69, null
  br i1 %70, label %99, label %71

71:                                               ; preds = %66
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %92, label %78

78:                                               ; preds = %71
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %85, %78, %71
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_25__*, i32, i32, %struct.TYPE_26__*)*, i32 (%struct.TYPE_25__*, i32, i32, %struct.TYPE_26__*)** %96, align 8
  %98 = icmp eq i32 (%struct.TYPE_25__*, i32, i32, %struct.TYPE_26__*)* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %92, %85, %66
  %100 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %101 = load i32, i32* @EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE, align 4
  %102 = call i32 @EVPerr(i32 %100, i32 %101)
  store i32 -2, i32* %3, align 4
  br label %207

103:                                              ; preds = %92
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @EVP_PKEY_OP_DERIVE, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %103
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @EVP_PKEY_OP_ENCRYPT, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @EVP_PKEY_OP_DECRYPT, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %123 = load i32, i32* @EVP_R_OPERATON_NOT_INITIALIZED, align 4
  %124 = call i32 @EVPerr(i32 %122, i32 %123)
  store i32 -1, i32* %3, align 4
  br label %207

125:                                              ; preds = %115, %109, %103
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i32 (%struct.TYPE_25__*, i32, i32, %struct.TYPE_26__*)*, i32 (%struct.TYPE_25__*, i32, i32, %struct.TYPE_26__*)** %129, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %132 = load i32, i32* @EVP_PKEY_CTRL_PEER_KEY, align 4
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %134 = call i32 %130(%struct.TYPE_25__* %131, i32 %132, i32 0, %struct.TYPE_26__* %133)
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %6, align 4
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %125
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %3, align 4
  br label %207

139:                                              ; preds = %125
  %140 = load i32, i32* %6, align 4
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  store i32 1, i32* %3, align 4
  br label %207

143:                                              ; preds = %139
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 3
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %145, align 8
  %147 = icmp eq %struct.TYPE_20__* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %150 = load i32, i32* @EVP_R_NO_KEY_SET, align 4
  %151 = call i32 @EVPerr(i32 %149, i32 %150)
  store i32 -1, i32* %3, align 4
  br label %207

152:                                              ; preds = %143
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %157, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %152
  %163 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %164 = load i32, i32* @EVP_R_DIFFERENT_KEY_TYPES, align 4
  %165 = call i32 @EVPerr(i32 %163, i32 %164)
  store i32 -1, i32* %3, align 4
  br label %207

166:                                              ; preds = %152
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %168 = call i32 @EVP_PKEY_missing_parameters(%struct.TYPE_26__* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %166
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %172, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %175 = call i32 @EVP_PKEY_cmp_parameters(%struct.TYPE_20__* %173, %struct.TYPE_26__* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %170
  %178 = load i32, i32* @EVP_F_EVP_PKEY_DERIVE_SET_PEER, align 4
  %179 = load i32, i32* @EVP_R_DIFFERENT_PARAMETERS, align 4
  %180 = call i32 @EVPerr(i32 %178, i32 %179)
  store i32 -1, i32* %3, align 4
  br label %207

181:                                              ; preds = %170, %166
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %183, align 8
  %185 = call i32 @EVP_PKEY_free(%struct.TYPE_26__* %184)
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 1
  store %struct.TYPE_26__* %186, %struct.TYPE_26__** %188, align 8
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 0
  %193 = load i32 (%struct.TYPE_25__*, i32, i32, %struct.TYPE_26__*)*, i32 (%struct.TYPE_25__*, i32, i32, %struct.TYPE_26__*)** %192, align 8
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %195 = load i32, i32* @EVP_PKEY_CTRL_PEER_KEY, align 4
  %196 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %197 = call i32 %193(%struct.TYPE_25__* %194, i32 %195, i32 1, %struct.TYPE_26__* %196)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = icmp sle i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %181
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 1
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %202, align 8
  %203 = load i32, i32* %6, align 4
  store i32 %203, i32* %3, align 4
  br label %207

204:                                              ; preds = %181
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %206 = call i32 @EVP_PKEY_up_ref(%struct.TYPE_26__* %205)
  store i32 1, i32* %3, align 4
  br label %207

207:                                              ; preds = %204, %200, %177, %162, %148, %142, %137, %121, %99, %51, %47, %35, %10
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @EVPerr(i32, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_IS_DERIVE_OP(%struct.TYPE_25__*) #1

declare dso_local i8* @evp_keymgmt_export_to_provider(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @EVP_PKEY_missing_parameters(%struct.TYPE_26__*) #1

declare dso_local i32 @EVP_PKEY_cmp_parameters(%struct.TYPE_20__*, %struct.TYPE_26__*) #1

declare dso_local i32 @EVP_PKEY_free(%struct.TYPE_26__*) #1

declare dso_local i32 @EVP_PKEY_up_ref(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
