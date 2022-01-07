; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_prn.c_asn1_primitive_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_tasn_prn.c_asn1_primitive_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (i32*, i32**, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i32, i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }

@ASN1_ITYPE_MSTRING = common dso_local global i64 0, align 8
@V_ASN1_NEG = common dso_local global i64 0, align 8
@V_ASN1_ANY = common dso_local global i64 0, align 8
@ASN1_PCTX_FLAGS_NO_ANY_TYPE = common dso_local global i32 0, align 4
@ASN1_PCTX_FLAGS_SHOW_TYPE = common dso_local global i32 0, align 4
@V_ASN1_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, %struct.TYPE_22__*, i32, i8*, i8*, %struct.TYPE_21__*)* @asn1_primitive_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asn1_primitive_print(i32* %0, i32** %1, %struct.TYPE_22__* %2, i32 %3, i8* %4, i8* %5, %struct.TYPE_21__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_20__*, align 8
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32** %1, i32*** %10, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.TYPE_21__* %6, %struct.TYPE_21__** %15, align 8
  store i32 1, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %21, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load i8*, i8** %13, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %32 = call i32 @asn1_print_fsname(i32* %27, i32 %28, i8* %29, i8* %30, %struct.TYPE_21__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %223

35:                                               ; preds = %7
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %37 = icmp ne %struct.TYPE_20__* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32 (i32*, i32**, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)*, i32 (i32*, i32**, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)** %40, align 8
  %42 = icmp ne i32 (i32*, i32**, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i32 (i32*, i32**, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)*, i32 (i32*, i32**, %struct.TYPE_22__*, i32, %struct.TYPE_21__*)** %45, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32**, i32*** %10, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %52 = call i32 %46(i32* %47, i32** %48, %struct.TYPE_22__* %49, i32 %50, %struct.TYPE_21__* %51)
  store i32 %52, i32* %8, align 4
  br label %223

53:                                               ; preds = %38, %35
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ASN1_ITYPE_MSTRING, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load i32**, i32*** %10, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %17, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @V_ASN1_NEG, align 8
  %67 = xor i64 %66, -1
  %68 = and i64 %65, %67
  store i64 %68, i64* %16, align 8
  br label %81

69:                                               ; preds = %53
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  %74 = icmp eq i64 %73, 137
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %17, align 8
  br label %80

76:                                               ; preds = %69
  %77 = load i32**, i32*** %10, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = bitcast i32* %78 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %79, %struct.TYPE_19__** %17, align 8
  br label %80

80:                                               ; preds = %76, %75
  br label %81

81:                                               ; preds = %80, %59
  %82 = load i64, i64* %16, align 8
  %83 = load i64, i64* @V_ASN1_ANY, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %110

85:                                               ; preds = %81
  %86 = load i32**, i32*** %10, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = bitcast i32* %87 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %88, %struct.TYPE_18__** %22, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %16, align 8
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = bitcast i32* %94 to i32**
  store i32** %95, i32*** %10, align 8
  %96 = load i32**, i32*** %10, align 8
  %97 = load i32*, i32** %96, align 8
  %98 = bitcast i32* %97 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %98, %struct.TYPE_19__** %17, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @ASN1_PCTX_FLAGS_NO_ANY_TYPE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %85
  store i8* null, i8** %20, align 8
  br label %109

106:                                              ; preds = %85
  %107 = load i64, i64* %16, align 8
  %108 = call i8* @ASN1_tag2str(i64 %107)
  store i8* %108, i8** %20, align 8
  br label %109

109:                                              ; preds = %106, %105
  br label %122

110:                                              ; preds = %81
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ASN1_PCTX_FLAGS_SHOW_TYPE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i64, i64* %16, align 8
  %119 = call i8* @ASN1_tag2str(i64 %118)
  store i8* %119, i8** %20, align 8
  br label %121

120:                                              ; preds = %110
  store i8* null, i8** %20, align 8
  br label %121

121:                                              ; preds = %120, %117
  br label %122

122:                                              ; preds = %121, %109
  %123 = load i64, i64* %16, align 8
  %124 = load i64, i64* @V_ASN1_NULL, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %122
  %127 = load i32*, i32** %9, align 8
  %128 = call i64 @BIO_puts(i32* %127, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %129 = icmp sle i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 0, i32* %8, align 4
  br label %223

131:                                              ; preds = %126
  store i32 1, i32* %8, align 4
  br label %223

132:                                              ; preds = %122
  %133 = load i8*, i8** %20, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %147

135:                                              ; preds = %132
  %136 = load i32*, i32** %9, align 8
  %137 = load i8*, i8** %20, align 8
  %138 = call i64 @BIO_puts(i32* %136, i8* %137)
  %139 = icmp sle i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 0, i32* %8, align 4
  br label %223

141:                                              ; preds = %135
  %142 = load i32*, i32** %9, align 8
  %143 = call i64 @BIO_puts(i32* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %144 = icmp sle i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i32 0, i32* %8, align 4
  br label %223

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146, %132
  %148 = load i64, i64* %16, align 8
  switch i64 %148, label %203 [
    i64 137, label %149
    i64 134, label %163
    i64 136, label %163
    i64 128, label %167
    i64 135, label %171
    i64 133, label %175
    i64 132, label %180
    i64 138, label %180
    i64 130, label %185
    i64 129, label %185
    i64 131, label %185
  ]

149:                                              ; preds = %147
  %150 = load i32**, i32*** %10, align 8
  %151 = bitcast i32** %150 to i32*
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %23, align 4
  %153 = load i32, i32* %23, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %23, align 4
  br label %159

159:                                              ; preds = %155, %149
  %160 = load i32*, i32** %9, align 8
  %161 = load i32, i32* %23, align 4
  %162 = call i32 @asn1_print_boolean(i32* %160, i32 %161)
  store i32 %162, i32* %18, align 4
  br label %210

163:                                              ; preds = %147, %147
  %164 = load i32*, i32** %9, align 8
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %166 = call i32 @asn1_print_integer(i32* %164, %struct.TYPE_19__* %165)
  store i32 %166, i32* %18, align 4
  br label %210

167:                                              ; preds = %147
  %168 = load i32*, i32** %9, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %170 = call i32 @ASN1_UTCTIME_print(i32* %168, %struct.TYPE_19__* %169)
  store i32 %170, i32* %18, align 4
  br label %210

171:                                              ; preds = %147
  %172 = load i32*, i32** %9, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %174 = call i32 @ASN1_GENERALIZEDTIME_print(i32* %172, %struct.TYPE_19__* %173)
  store i32 %174, i32* %18, align 4
  br label %210

175:                                              ; preds = %147
  %176 = load i32*, i32** %9, align 8
  %177 = load i32**, i32*** %10, align 8
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @asn1_print_oid(i32* %176, i32* %178)
  store i32 %179, i32* %18, align 4
  br label %210

180:                                              ; preds = %147, %147
  %181 = load i32*, i32** %9, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %183 = load i32, i32* %12, align 4
  %184 = call i32 @asn1_print_obstring(i32* %181, %struct.TYPE_19__* %182, i32 %183)
  store i32 %184, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %210

185:                                              ; preds = %147, %147, %147
  %186 = load i32*, i32** %9, align 8
  %187 = call i64 @BIO_puts(i32* %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %188 = icmp sle i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  store i32 0, i32* %8, align 4
  br label %223

190:                                              ; preds = %185
  %191 = load i32*, i32** %9, align 8
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @ASN1_parse_dump(i32* %191, i32 %194, i32 %197, i32 %198, i32 0)
  %200 = icmp sle i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %190
  store i32 0, i32* %18, align 4
  br label %202

202:                                              ; preds = %201, %190
  store i32 0, i32* %19, align 4
  br label %210

203:                                              ; preds = %147
  %204 = load i32*, i32** %9, align 8
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %206 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @ASN1_STRING_print_ex(i32* %204, %struct.TYPE_19__* %205, i32 %208)
  store i32 %209, i32* %18, align 4
  br label %210

210:                                              ; preds = %203, %202, %180, %175, %171, %167, %163, %159
  %211 = load i32, i32* %18, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  store i32 0, i32* %8, align 4
  br label %223

214:                                              ; preds = %210
  %215 = load i32, i32* %19, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load i32*, i32** %9, align 8
  %219 = call i64 @BIO_puts(i32* %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %220 = icmp sle i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %217
  store i32 0, i32* %8, align 4
  br label %223

222:                                              ; preds = %217, %214
  store i32 1, i32* %8, align 4
  br label %223

223:                                              ; preds = %222, %221, %213, %189, %145, %140, %131, %130, %43, %34
  %224 = load i32, i32* %8, align 4
  ret i32 %224
}

declare dso_local i32 @asn1_print_fsname(i32*, i32, i8*, i8*, %struct.TYPE_21__*) #1

declare dso_local i8* @ASN1_tag2str(i64) #1

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i32 @asn1_print_boolean(i32*, i32) #1

declare dso_local i32 @asn1_print_integer(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @ASN1_UTCTIME_print(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @ASN1_GENERALIZEDTIME_print(i32*, %struct.TYPE_19__*) #1

declare dso_local i32 @asn1_print_oid(i32*, i32*) #1

declare dso_local i32 @asn1_print_obstring(i32*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ASN1_parse_dump(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ASN1_STRING_print_ex(i32*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
