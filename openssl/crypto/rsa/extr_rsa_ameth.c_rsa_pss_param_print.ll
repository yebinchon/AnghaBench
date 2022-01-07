; ModuleID = '/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_pss_param_print.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_pss_param_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_11__*, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"No PSS parameter restrictions\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PSS parameter restrictions:\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"(INVALID PSS PARAMETERS)\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Hash Algorithm: \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"sha1 (default)\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Mask Algorithm: \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" with \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"INVALID\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"mgf1 with sha1 (default)\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"%s Salt Length: 0x\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Minimum\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"14 (default)\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Trailer Field: 0x\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"BC (default)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_10__*, i32)* @rsa_pss_param_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_pss_param_print(i32* %0, i32 %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %11, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @BIO_indent(i32* %12, i32 %13, i32 128)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %228

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = icmp eq %struct.TYPE_10__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @BIO_puts(i32* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = icmp sle i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %232

28:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %232

29:                                               ; preds = %20
  %30 = load i32*, i32** %6, align 8
  %31 = call i64 @BIO_puts(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp sle i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %232

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  br label %46

36:                                               ; preds = %17
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = icmp eq %struct.TYPE_10__* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @BIO_puts(i32* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %232

44:                                               ; preds = %39
  store i32 1, i32* %5, align 4
  br label %232

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @BIO_puts(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %228

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @BIO_indent(i32* %58, i32 %59, i32 128)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  br label %228

63:                                               ; preds = %57
  %64 = load i32*, i32** %6, align 8
  %65 = call i64 @BIO_puts(i32* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp sle i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %228

68:                                               ; preds = %63
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = icmp ne %struct.TYPE_8__* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32*, i32** %6, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @i2a_ASN1_OBJECT(i32* %74, i32 %79)
  %81 = icmp sle i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %228

83:                                               ; preds = %73
  br label %90

84:                                               ; preds = %68
  %85 = load i32*, i32** %6, align 8
  %86 = call i64 @BIO_puts(i32* %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %87 = icmp sle i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %228

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %83
  %91 = load i32*, i32** %6, align 8
  %92 = call i64 @BIO_puts(i32* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %93 = icmp sle i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %228

95:                                               ; preds = %90
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @BIO_indent(i32* %96, i32 %97, i32 128)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  br label %228

101:                                              ; preds = %95
  %102 = load i32*, i32** %6, align 8
  %103 = call i64 @BIO_puts(i32* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %104 = icmp sle i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  br label %228

106:                                              ; preds = %101
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  %110 = icmp ne %struct.TYPE_11__* %109, null
  br i1 %110, label %111, label %149

111:                                              ; preds = %106
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @i2a_ASN1_OBJECT(i32* %112, i32 %117)
  %119 = icmp sle i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  br label %228

121:                                              ; preds = %111
  %122 = load i32*, i32** %6, align 8
  %123 = call i64 @BIO_puts(i32* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %124 = icmp sle i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %228

126:                                              ; preds = %121
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  %130 = call %struct.TYPE_9__* @rsa_mgf1_decode(%struct.TYPE_11__* %129)
  store %struct.TYPE_9__* %130, %struct.TYPE_9__** %11, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %132 = icmp ne %struct.TYPE_9__* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %126
  %134 = load i32*, i32** %6, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @i2a_ASN1_OBJECT(i32* %134, i32 %137)
  %139 = icmp sle i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %228

141:                                              ; preds = %133
  br label %148

142:                                              ; preds = %126
  %143 = load i32*, i32** %6, align 8
  %144 = call i64 @BIO_puts(i32* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %145 = icmp sle i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  br label %228

147:                                              ; preds = %142
  br label %148

148:                                              ; preds = %147, %141
  br label %155

149:                                              ; preds = %106
  %150 = load i32*, i32** %6, align 8
  %151 = call i64 @BIO_puts(i32* %150, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %152 = icmp sle i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %228

154:                                              ; preds = %149
  br label %155

155:                                              ; preds = %154, %148
  %156 = load i32*, i32** %6, align 8
  %157 = call i64 @BIO_puts(i32* %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @BIO_indent(i32* %158, i32 %159, i32 128)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %155
  br label %228

163:                                              ; preds = %155
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)
  %169 = call i64 @BIO_printf(i32* %164, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i8* %168)
  %170 = icmp sle i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %228

172:                                              ; preds = %163
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %172
  %178 = load i32*, i32** %6, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i64 @i2a_ASN1_INTEGER(i32* %178, i64 %181)
  %183 = icmp sle i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  br label %228

185:                                              ; preds = %177
  br label %192

186:                                              ; preds = %172
  %187 = load i32*, i32** %6, align 8
  %188 = call i64 @BIO_puts(i32* %187, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  %189 = icmp sle i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  br label %228

191:                                              ; preds = %186
  br label %192

192:                                              ; preds = %191, %185
  %193 = load i32*, i32** %6, align 8
  %194 = call i64 @BIO_puts(i32* %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %195 = load i32*, i32** %6, align 8
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @BIO_indent(i32* %195, i32 %196, i32 128)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %192
  br label %228

200:                                              ; preds = %192
  %201 = load i32*, i32** %6, align 8
  %202 = call i64 @BIO_puts(i32* %201, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %203 = icmp sle i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  br label %228

205:                                              ; preds = %200
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %205
  %211 = load i32*, i32** %6, align 8
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i64 @i2a_ASN1_INTEGER(i32* %211, i64 %214)
  %216 = icmp sle i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  br label %228

218:                                              ; preds = %210
  br label %225

219:                                              ; preds = %205
  %220 = load i32*, i32** %6, align 8
  %221 = call i64 @BIO_puts(i32* %220, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %222 = icmp sle i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  br label %228

224:                                              ; preds = %219
  br label %225

225:                                              ; preds = %224, %218
  %226 = load i32*, i32** %6, align 8
  %227 = call i64 @BIO_puts(i32* %226, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %228

228:                                              ; preds = %225, %223, %217, %204, %199, %190, %184, %171, %162, %153, %146, %140, %125, %120, %105, %100, %94, %88, %82, %67, %62, %50, %16
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %230 = call i32 @X509_ALGOR_free(%struct.TYPE_9__* %229)
  %231 = load i32, i32* %10, align 4
  store i32 %231, i32* %5, align 4
  br label %232

232:                                              ; preds = %228, %44, %43, %33, %28, %27
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

declare dso_local i32 @BIO_indent(i32*, i32, i32) #1

declare dso_local i64 @BIO_puts(i32*, i8*) #1

declare dso_local i64 @i2a_ASN1_OBJECT(i32*, i32) #1

declare dso_local %struct.TYPE_9__* @rsa_mgf1_decode(%struct.TYPE_11__*) #1

declare dso_local i64 @BIO_printf(i32*, i8*, i8*) #1

declare dso_local i64 @i2a_ASN1_INTEGER(i32*, i64) #1

declare dso_local i32 @X509_ALGOR_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
