; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_dec.c_asn1_check_tlen.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_dec.c_asn1_check_tlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, i32 }

@ASN1_F_ASN1_CHECK_TLEN = common dso_local global i32 0, align 4
@ASN1_R_TOO_LONG = common dso_local global i32 0, align 4
@ASN1_R_BAD_OBJECT_HEADER = common dso_local global i32 0, align 4
@ASN1_R_WRONG_TAG = common dso_local global i32 0, align 4
@V_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32*, i8*, i8*, i8*, i8**, i64, i32, i32, i8, %struct.TYPE_4__*)* @asn1_check_tlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_check_tlen(i64* %0, i32* %1, i8* %2, i8* %3, i8* %4, i8** %5, i64 %6, i32 %7, i32 %8, i8 signext %9, %struct.TYPE_4__* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  %23 = alloca %struct.TYPE_4__*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store i64* %0, i64** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8** %5, i8*** %18, align 8
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i8 %9, i8* %22, align 1
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %23, align 8
  %30 = load i8**, i8*** %18, align 8
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %28, align 8
  %32 = load i8*, i8** %28, align 8
  store i8* %32, i8** %29, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %11
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %24, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %27, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %26, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %25, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %28, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %28, align 8
  br label %107

59:                                               ; preds = %35, %11
  %60 = load i64, i64* %19, align 8
  %61 = call i32 @ASN1_get_object(i8** %28, i64* %27, i32* %25, i32* %26, i64 %60)
  store i32 %61, i32* %24, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %63 = icmp ne %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %106

64:                                               ; preds = %59
  %65 = load i32, i32* %24, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i64, i64* %27, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* %26, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %25, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load i8*, i8** %28, align 8
  %78 = load i8*, i8** %29, align 8
  %79 = ptrtoint i8* %77 to i64
  %80 = ptrtoint i8* %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load i32, i32* %24, align 4
  %88 = and i32 %87, 129
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %105, label %90

90:                                               ; preds = %64
  %91 = load i64, i64* %27, align 8
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %91, %95
  %97 = load i64, i64* %19, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %90
  %100 = load i32, i32* @ASN1_F_ASN1_CHECK_TLEN, align 4
  %101 = load i32, i32* @ASN1_R_TOO_LONG, align 4
  %102 = call i32 @ASN1err(i32 %100, i32 %101)
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %104 = call i32 @asn1_tlc_clear(%struct.TYPE_4__* %103)
  store i32 0, i32* %12, align 4
  br label %192

105:                                              ; preds = %90, %64
  br label %106

106:                                              ; preds = %105, %59
  br label %107

107:                                              ; preds = %106, %40
  %108 = load i32, i32* %24, align 4
  %109 = and i32 %108, 128
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i32, i32* @ASN1_F_ASN1_CHECK_TLEN, align 4
  %113 = load i32, i32* @ASN1_R_BAD_OBJECT_HEADER, align 4
  %114 = call i32 @ASN1err(i32 %112, i32 %113)
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %116 = call i32 @asn1_tlc_clear(%struct.TYPE_4__* %115)
  store i32 0, i32* %12, align 4
  br label %192

117:                                              ; preds = %107
  %118 = load i32, i32* %20, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %141

120:                                              ; preds = %117
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* %25, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %26, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %124, %120
  %129 = load i8, i8* %22, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 -1, i32* %12, align 4
  br label %192

132:                                              ; preds = %128
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %134 = call i32 @asn1_tlc_clear(%struct.TYPE_4__* %133)
  %135 = load i32, i32* @ASN1_F_ASN1_CHECK_TLEN, align 4
  %136 = load i32, i32* @ASN1_R_WRONG_TAG, align 4
  %137 = call i32 @ASN1err(i32 %135, i32 %136)
  store i32 0, i32* %12, align 4
  br label %192

138:                                              ; preds = %124
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %140 = call i32 @asn1_tlc_clear(%struct.TYPE_4__* %139)
  br label %141

141:                                              ; preds = %138, %117
  %142 = load i32, i32* %24, align 4
  %143 = and i32 %142, 1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load i64, i64* %19, align 8
  %147 = load i8*, i8** %28, align 8
  %148 = load i8*, i8** %29, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sub nsw i64 %146, %151
  store i64 %152, i64* %27, align 8
  br label %153

153:                                              ; preds = %145, %141
  %154 = load i8*, i8** %16, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load i32, i32* %24, align 4
  %158 = and i32 %157, 1
  %159 = trunc i32 %158 to i8
  %160 = load i8*, i8** %16, align 8
  store i8 %159, i8* %160, align 1
  br label %161

161:                                              ; preds = %156, %153
  %162 = load i8*, i8** %17, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %170

164:                                              ; preds = %161
  %165 = load i32, i32* %24, align 4
  %166 = load i32, i32* @V_ASN1_CONSTRUCTED, align 4
  %167 = and i32 %165, %166
  %168 = trunc i32 %167 to i8
  %169 = load i8*, i8** %17, align 8
  store i8 %168, i8* %169, align 1
  br label %170

170:                                              ; preds = %164, %161
  %171 = load i64*, i64** %13, align 8
  %172 = icmp ne i64* %171, null
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i64, i64* %27, align 8
  %175 = load i64*, i64** %13, align 8
  store i64 %174, i64* %175, align 8
  br label %176

176:                                              ; preds = %173, %170
  %177 = load i8*, i8** %15, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load i32, i32* %26, align 4
  %181 = trunc i32 %180 to i8
  %182 = load i8*, i8** %15, align 8
  store i8 %181, i8* %182, align 1
  br label %183

183:                                              ; preds = %179, %176
  %184 = load i32*, i32** %14, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* %25, align 4
  %188 = load i32*, i32** %14, align 8
  store i32 %187, i32* %188, align 4
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i8*, i8** %28, align 8
  %191 = load i8**, i8*** %18, align 8
  store i8* %190, i8** %191, align 8
  store i32 1, i32* %12, align 4
  br label %192

192:                                              ; preds = %189, %132, %131, %111, %99
  %193 = load i32, i32* %12, align 4
  ret i32 %193
}

declare dso_local i32 @ASN1_get_object(i8**, i64*, i32*, i32*, i64) #1

declare dso_local i32 @ASN1err(i32, i32) #1

declare dso_local i32 @asn1_tlc_clear(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
