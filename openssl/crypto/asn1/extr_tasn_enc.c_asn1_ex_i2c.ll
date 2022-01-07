; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_enc.c_asn1_ex_i2c.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_enc.c_asn1_ex_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { {}* }
%struct.TYPE_11__ = type { i32, i32, i8*, i32 }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@ASN1_ITYPE_PRIMITIVE = common dso_local global i64 0, align 8
@ASN1_ITYPE_MSTRING = common dso_local global i64 0, align 8
@V_ASN1_ANY = common dso_local global i64 0, align 8
@ASN1_TFLG_NDEF = common dso_local global i32 0, align 4
@ASN1_STRING_FLAG_NDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i32*, %struct.TYPE_14__*)* @asn1_ex_i2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_ex_i2c(i32** %0, i8* %1, i32* %2, %struct.TYPE_14__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_10__*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %9, align 8
  store i32* null, i32** %10, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  store %struct.TYPE_12__* %21, %struct.TYPE_12__** %17, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %23 = icmp ne %struct.TYPE_12__* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (i32**, i8*, i32*, %struct.TYPE_14__*)**
  %28 = load i32 (i32**, i8*, i32*, %struct.TYPE_14__*)*, i32 (i32**, i8*, i32*, %struct.TYPE_14__*)** %27, align 8
  %29 = icmp ne i32 (i32**, i8*, i32*, %struct.TYPE_14__*)* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (i32**, i8*, i32*, %struct.TYPE_14__*)**
  %34 = load i32 (i32**, i8*, i32*, %struct.TYPE_14__*)*, i32 (i32**, i8*, i32*, %struct.TYPE_14__*)** %33, align 8
  %35 = load i32**, i32*** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %39 = call i32 %34(i32** %35, i8* %36, i32* %37, %struct.TYPE_14__* %38)
  store i32 %39, i32* %5, align 4
  br label %220

40:                                               ; preds = %24, %4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ASN1_ITYPE_PRIMITIVE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 147
  br i1 %50, label %51, label %57

51:                                               ; preds = %46, %40
  %52 = load i32**, i32*** %6, align 8
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %220

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %46
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ASN1_ITYPE_MSTRING, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i32**, i32*** %6, align 8
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %11, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32*, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  br label %95

72:                                               ; preds = %57
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @V_ASN1_ANY, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load i32**, i32*** %6, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = bitcast i32* %80 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %18, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32*, i32** %8, align 8
  store i32 %85, i32* %86, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = bitcast i32* %89 to i32**
  store i32** %90, i32*** %6, align 8
  br label %94

91:                                               ; preds = %72
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %91, %78
  br label %95

95:                                               ; preds = %94, %63
  %96 = load i32, i32* %13, align 4
  switch i32 %96, label %174 [
    i32 138, label %97
    i32 140, label %114
    i32 147, label %115
    i32 149, label %153
    i32 141, label %163
    i32 146, label %163
    i32 137, label %173
    i32 139, label %173
    i32 136, label %173
    i32 133, label %173
    i32 129, label %173
    i32 142, label %173
    i32 131, label %173
    i32 145, label %173
    i32 143, label %173
    i32 128, label %173
    i32 144, label %173
    i32 132, label %173
    i32 148, label %173
    i32 130, label %173
    i32 135, label %173
    i32 134, label %173
  ]

97:                                               ; preds = %95
  %98 = load i32**, i32*** %6, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = bitcast i32* %99 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %12, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %14, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  store i32 %106, i32* %16, align 4
  %107 = load i8*, i8** %14, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %16, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %97
  store i32 -1, i32* %5, align 4
  br label %220

113:                                              ; preds = %109
  br label %207

114:                                              ; preds = %95
  store i8* null, i8** %14, align 8
  store i32 0, i32* %16, align 4
  br label %207

115:                                              ; preds = %95
  %116 = load i32**, i32*** %6, align 8
  %117 = bitcast i32** %116 to i32*
  store i32* %117, i32** %10, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 -1, i32* %5, align 4
  br label %220

122:                                              ; preds = %115
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @V_ASN1_ANY, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %149

128:                                              ; preds = %122
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  store i32 -1, i32* %5, align 4
  br label %220

138:                                              ; preds = %132, %128
  %139 = load i32*, i32** %10, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %138
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  store i32 -1, i32* %5, align 4
  br label %220

148:                                              ; preds = %142, %138
  br label %149

149:                                              ; preds = %148, %122
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* %150, align 4
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %15, align 1
  store i8* %15, i8** %14, align 8
  store i32 1, i32* %16, align 4
  br label %207

153:                                              ; preds = %95
  %154 = load i32**, i32*** %6, align 8
  %155 = load i32*, i32** %154, align 8
  %156 = load i8*, i8** %7, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %160

159:                                              ; preds = %153
  br label %160

160:                                              ; preds = %159, %158
  %161 = phi i8** [ %7, %158 ], [ null, %159 ]
  %162 = call i32 @i2c_ASN1_BIT_STRING(i32* %155, i8** %161)
  store i32 %162, i32* %5, align 4
  br label %220

163:                                              ; preds = %95, %95
  %164 = load i32**, i32*** %6, align 8
  %165 = load i32*, i32** %164, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %170

169:                                              ; preds = %163
  br label %170

170:                                              ; preds = %169, %168
  %171 = phi i8** [ %7, %168 ], [ null, %169 ]
  %172 = call i32 @i2c_ASN1_INTEGER(i32* %165, i8** %171)
  store i32 %172, i32* %5, align 4
  br label %220

173:                                              ; preds = %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95, %95
  br label %174

174:                                              ; preds = %95, %173
  %175 = load i32**, i32*** %6, align 8
  %176 = load i32*, i32** %175, align 8
  %177 = bitcast i32* %176 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %177, %struct.TYPE_11__** %11, align 8
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @ASN1_TFLG_NDEF, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %200

183:                                              ; preds = %174
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @ASN1_STRING_FLAG_NDEF, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %183
  %191 = load i8*, i8** %7, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %199

193:                                              ; preds = %190
  %194 = load i8*, i8** %7, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 3
  store i32 0, i32* %198, align 8
  br label %199

199:                                              ; preds = %193, %190
  store i32 -2, i32* %5, align 4
  br label %220

200:                                              ; preds = %183, %174
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i8*, i8** %202, align 8
  store i8* %203, i8** %14, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %16, align 4
  br label %207

207:                                              ; preds = %200, %149, %114, %113
  %208 = load i8*, i8** %7, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %218

210:                                              ; preds = %207
  %211 = load i32, i32* %16, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load i8*, i8** %7, align 8
  %215 = load i8*, i8** %14, align 8
  %216 = load i32, i32* %16, align 4
  %217 = call i32 @memcpy(i8* %214, i8* %215, i32 %216)
  br label %218

218:                                              ; preds = %213, %210, %207
  %219 = load i32, i32* %16, align 4
  store i32 %219, i32* %5, align 4
  br label %220

220:                                              ; preds = %218, %199, %170, %160, %147, %137, %121, %112, %55, %30
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local i32 @i2c_ASN1_BIT_STRING(i32*, i8**) #1

declare dso_local i32 @i2c_ASN1_INTEGER(i32*, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
