; ModuleID = '/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_sign.c_ts_RESP_create_tst_info.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/ts/extr_ts_rsp_sign.c_ts_RESP_create_tst_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__*, i32, i32, i32, i32, i32, i32 (%struct.TYPE_14__*, i32, i64*, i64*)*, i32, i32* (%struct.TYPE_14__*, i32)* }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }

@TS_ORDERING = common dso_local global i32 0, align 4
@TS_TSA_NAME = common dso_local global i32 0, align 4
@GEN_DIRNAME = common dso_local global i32 0, align 4
@TS_F_TS_RESP_CREATE_TST_INFO = common dso_local global i32 0, align 4
@TS_R_TST_INFO_SETUP_ERROR = common dso_local global i32 0, align 4
@TS_STATUS_REJECTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error during TSTInfo generation.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, i32*)* @ts_RESP_create_tst_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ts_RESP_create_tst_info(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %11, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %13, align 8
  %14 = call i32* (...) @TS_TST_INFO_new()
  store i32* %14, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %207

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @TS_TST_INFO_set_version(i32* %18, i32 1)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %207

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @TS_TST_INFO_set_policy_id(i32* %23, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %207

28:                                               ; preds = %22
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @TS_TST_INFO_set_msg_imprint(i32* %29, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %28
  br label %207

38:                                               ; preds = %28
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 10
  %41 = load i32* (%struct.TYPE_14__*, i32)*, i32* (%struct.TYPE_14__*, i32)** %40, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 8
  %46 = call i32* %41(%struct.TYPE_14__* %42, i32 %45)
  store i32* %46, i32** %7, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %38
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @TS_TST_INFO_set_serial(i32* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %38
  br label %207

54:                                               ; preds = %48
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 8
  %57 = load i32 (%struct.TYPE_14__*, i32, i64*, i64*)*, i32 (%struct.TYPE_14__*, i32, i64*, i64*)** %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = call i32 %57(%struct.TYPE_14__* %58, i32 %61, i64* %9, i64* %10)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %54
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  %70 = call i32* @TS_RESP_set_genTime_with_precision(i32* null, i64 %65, i64 %66, i32 %69)
  store i32* %70, i32** %8, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %64
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @TS_TST_INFO_set_time(i32* %73, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72, %64, %54
  br label %207

78:                                               ; preds = %72
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88, %83, %78
  %94 = call i32* (...) @TS_ACCURACY_new()
  store i32* %94, i32** %11, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %207

97:                                               ; preds = %93, %88
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %97
  %103 = load i32*, i32** %11, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @TS_ACCURACY_set_seconds(i32* %103, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %102
  br label %207

110:                                              ; preds = %102, %97
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i32*, i32** %11, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @TS_ACCURACY_set_millis(i32* %116, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  br label %207

123:                                              ; preds = %115, %110
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load i32*, i32** %11, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @TS_ACCURACY_set_micros(i32* %129, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %128
  br label %207

136:                                              ; preds = %128, %123
  %137 = load i32*, i32** %11, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32*, i32** %6, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @TS_TST_INFO_set_accuracy(i32* %140, i32* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  br label %207

145:                                              ; preds = %139, %136
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @TS_ORDERING, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %145
  %153 = load i32*, i32** %6, align 8
  %154 = call i32 @TS_TST_INFO_set_ordering(i32* %153, i32 1)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %152
  br label %207

157:                                              ; preds = %152, %145
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  store i32* %162, i32** %12, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %157
  %165 = load i32*, i32** %6, align 8
  %166 = load i32*, i32** %12, align 8
  %167 = call i32 @TS_TST_INFO_set_nonce(i32* %165, i32* %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %164
  br label %207

170:                                              ; preds = %164, %157
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @TS_TSA_NAME, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %206

177:                                              ; preds = %170
  %178 = call %struct.TYPE_15__* (...) @GENERAL_NAME_new()
  store %struct.TYPE_15__* %178, %struct.TYPE_15__** %13, align 8
  %179 = icmp eq %struct.TYPE_15__* %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %207

181:                                              ; preds = %177
  %182 = load i32, i32* @GEN_DIRNAME, align 4
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @X509_get_subject_name(i32 %187)
  %189 = call i32 @X509_NAME_dup(i32 %188)
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 4
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %181
  br label %207

199:                                              ; preds = %181
  %200 = load i32*, i32** %6, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %202 = call i32 @TS_TST_INFO_set_tsa(i32* %200, %struct.TYPE_15__* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %199
  br label %207

205:                                              ; preds = %199
  br label %206

206:                                              ; preds = %205, %170
  store i32 1, i32* %5, align 4
  br label %207

207:                                              ; preds = %206, %204, %198, %180, %169, %156, %144, %135, %122, %109, %96, %77, %53, %37, %27, %21, %16
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %207
  %211 = load i32*, i32** %6, align 8
  %212 = call i32 @TS_TST_INFO_free(i32* %211)
  store i32* null, i32** %6, align 8
  %213 = load i32, i32* @TS_F_TS_RESP_CREATE_TST_INFO, align 4
  %214 = load i32, i32* @TS_R_TST_INFO_SETUP_ERROR, align 4
  %215 = call i32 @TSerr(i32 %213, i32 %214)
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %217 = load i32, i32* @TS_STATUS_REJECTION, align 4
  %218 = call i32 @TS_RESP_CTX_set_status_info_cond(%struct.TYPE_14__* %216, i32 %217, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %219

219:                                              ; preds = %210, %207
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %221 = call i32 @GENERAL_NAME_free(%struct.TYPE_15__* %220)
  %222 = load i32*, i32** %11, align 8
  %223 = call i32 @TS_ACCURACY_free(i32* %222)
  %224 = load i32*, i32** %8, align 8
  %225 = call i32 @ASN1_GENERALIZEDTIME_free(i32* %224)
  %226 = load i32*, i32** %7, align 8
  %227 = call i32 @ASN1_INTEGER_free(i32* %226)
  %228 = load i32*, i32** %6, align 8
  ret i32* %228
}

declare dso_local i32* @TS_TST_INFO_new(...) #1

declare dso_local i32 @TS_TST_INFO_set_version(i32*, i32) #1

declare dso_local i32 @TS_TST_INFO_set_policy_id(i32*, i32*) #1

declare dso_local i32 @TS_TST_INFO_set_msg_imprint(i32*, i32) #1

declare dso_local i32 @TS_TST_INFO_set_serial(i32*, i32*) #1

declare dso_local i32* @TS_RESP_set_genTime_with_precision(i32*, i64, i64, i32) #1

declare dso_local i32 @TS_TST_INFO_set_time(i32*, i32*) #1

declare dso_local i32* @TS_ACCURACY_new(...) #1

declare dso_local i32 @TS_ACCURACY_set_seconds(i32*, i32) #1

declare dso_local i32 @TS_ACCURACY_set_millis(i32*, i32) #1

declare dso_local i32 @TS_ACCURACY_set_micros(i32*, i32) #1

declare dso_local i32 @TS_TST_INFO_set_accuracy(i32*, i32*) #1

declare dso_local i32 @TS_TST_INFO_set_ordering(i32*, i32) #1

declare dso_local i32 @TS_TST_INFO_set_nonce(i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @GENERAL_NAME_new(...) #1

declare dso_local i32 @X509_NAME_dup(i32) #1

declare dso_local i32 @X509_get_subject_name(i32) #1

declare dso_local i32 @TS_TST_INFO_set_tsa(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @TS_TST_INFO_free(i32*) #1

declare dso_local i32 @TSerr(i32, i32) #1

declare dso_local i32 @TS_RESP_CTX_set_status_info_cond(%struct.TYPE_14__*, i32, i8*) #1

declare dso_local i32 @GENERAL_NAME_free(%struct.TYPE_15__*) #1

declare dso_local i32 @TS_ACCURACY_free(i32*) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_free(i32*) #1

declare dso_local i32 @ASN1_INTEGER_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
