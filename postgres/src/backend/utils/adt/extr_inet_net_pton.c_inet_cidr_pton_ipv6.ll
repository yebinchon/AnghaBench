; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_inet_net_pton.c_inet_cidr_pton_ipv6.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_inet_net_pton.c_inet_cidr_pton_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_cidr_pton_ipv6.xdigits_l = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@inet_cidr_pton_ipv6.xdigits_u = internal constant [17 x i8] c"0123456789ABCDEF\00", align 16
@NS_IN6ADDRSZ = common dso_local global i32 0, align 4
@NS_INT16SZ = common dso_local global i32 0, align 4
@NS_INADDRSZ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i64)* @inet_cidr_pton_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_cidr_pton_ipv6(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %24 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %8, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %9, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %236

33:                                               ; preds = %3
  store i32* %27, i32** %10, align 8
  %34 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %35 = call i32 @memset(i32* %27, i8 signext 0, i32 %34)
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 58
  br i1 %43, label %44, label %52

44:                                               ; preds = %33
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 58
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %234

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i8*, i8** %5, align 8
  store i8* %53, i8** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  br label %54

54:                                               ; preds = %115, %98, %86, %52
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  %57 = load i8, i8* %55, align 1
  %58 = sext i8 %57 to i32
  store i32 %58, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %154

60:                                               ; preds = %54
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_cidr_pton_ipv6.xdigits_l, i64 0, i64 0), i8** %13, align 8
  %61 = load i32, i32* %15, align 4
  %62 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_cidr_pton_ipv6.xdigits_l, i64 0, i64 0), i32 %61)
  store i8* %62, i8** %20, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_cidr_pton_ipv6.xdigits_u, i64 0, i64 0), i8** %13, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i8* @strchr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @inet_cidr_pton_ipv6.xdigits_u, i64 0, i64 0), i32 %65)
  store i8* %66, i8** %20, align 8
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i8*, i8** %20, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %67
  %71 = load i32, i32* %17, align 4
  %72 = shl i32 %71, 4
  store i32 %72, i32* %17, align 4
  %73 = load i8*, i8** %20, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = or i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %18, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %18, align 4
  %84 = icmp sgt i32 %83, 4
  br i1 %84, label %85, label %86

85:                                               ; preds = %70
  br label %234

86:                                               ; preds = %70
  store i32 1, i32* %16, align 4
  br label %54

87:                                               ; preds = %67
  %88 = load i32, i32* %15, align 4
  %89 = icmp eq i32 %88, 58
  br i1 %89, label %90, label %125

90:                                               ; preds = %87
  %91 = load i8*, i8** %5, align 8
  store i8* %91, i8** %14, align 8
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %90
  %95 = load i32*, i32** %12, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %234

98:                                               ; preds = %94
  %99 = load i32*, i32** %10, align 8
  store i32* %99, i32** %12, align 8
  br label %54

100:                                              ; preds = %90
  %101 = load i8*, i8** %5, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %234

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106
  %108 = load i32*, i32** %10, align 8
  %109 = load i32, i32* @NS_INT16SZ, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32*, i32** %11, align 8
  %113 = icmp ugt i32* %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %234

115:                                              ; preds = %107
  %116 = load i32, i32* %17, align 4
  %117 = ashr i32 %116, 8
  %118 = and i32 %117, 255
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %10, align 8
  store i32 %118, i32* %119, align 4
  %121 = load i32, i32* %17, align 4
  %122 = and i32 %121, 255
  %123 = load i32*, i32** %10, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %10, align 8
  store i32 %122, i32* %123, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %54

125:                                              ; preds = %87
  %126 = load i32, i32* %15, align 4
  %127 = icmp eq i32 %126, 46
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = load i32*, i32** %10, align 8
  %130 = load i32, i32* @NS_INADDRSZ, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32*, i32** %11, align 8
  %134 = icmp ule i32* %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %128
  %136 = load i8*, i8** %14, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = call i64 @getv4(i8* %136, i32* %137, i32* %19)
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i32, i32* @NS_INADDRSZ, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32* %144, i32** %10, align 8
  store i32 0, i32* %16, align 4
  br label %154

145:                                              ; preds = %135, %128, %125
  %146 = load i32, i32* %15, align 4
  %147 = icmp eq i32 %146, 47
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i8*, i8** %5, align 8
  %150 = call i64 @getbits(i8* %149, i32* %19)
  %151 = icmp sgt i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  br label %154

153:                                              ; preds = %148, %145
  br label %234

154:                                              ; preds = %152, %140, %54
  %155 = load i32, i32* %16, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %175

157:                                              ; preds = %154
  %158 = load i32*, i32** %10, align 8
  %159 = load i32, i32* @NS_INT16SZ, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32*, i32** %11, align 8
  %163 = icmp ugt i32* %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %234

165:                                              ; preds = %157
  %166 = load i32, i32* %17, align 4
  %167 = ashr i32 %166, 8
  %168 = and i32 %167, 255
  %169 = load i32*, i32** %10, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %10, align 8
  store i32 %168, i32* %169, align 4
  %171 = load i32, i32* %17, align 4
  %172 = and i32 %171, 255
  %173 = load i32*, i32** %10, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %10, align 8
  store i32 %172, i32* %173, align 4
  br label %175

175:                                              ; preds = %165, %154
  %176 = load i32, i32* %19, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 128, i32* %19, align 4
  br label %179

179:                                              ; preds = %178, %175
  %180 = getelementptr inbounds i32, i32* %27, i64 16
  store i32* %180, i32** %11, align 8
  %181 = load i32*, i32** %12, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %224

183:                                              ; preds = %179
  %184 = load i32*, i32** %10, align 8
  %185 = load i32*, i32** %12, align 8
  %186 = ptrtoint i32* %184 to i64
  %187 = ptrtoint i32* %185 to i64
  %188 = sub i64 %186, %187
  %189 = sdiv exact i64 %188, 4
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %21, align 4
  %191 = load i32*, i32** %10, align 8
  %192 = load i32*, i32** %11, align 8
  %193 = icmp eq i32* %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %183
  br label %234

195:                                              ; preds = %183
  store i32 1, i32* %22, align 4
  br label %196

196:                                              ; preds = %219, %195
  %197 = load i32, i32* %22, align 4
  %198 = load i32, i32* %21, align 4
  %199 = icmp sle i32 %197, %198
  br i1 %199, label %200, label %222

200:                                              ; preds = %196
  %201 = load i32*, i32** %12, align 8
  %202 = load i32, i32* %21, align 4
  %203 = load i32, i32* %22, align 4
  %204 = sub nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %201, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %11, align 8
  %209 = load i32, i32* %22, align 4
  %210 = sub nsw i32 0, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  store i32 %207, i32* %212, align 4
  %213 = load i32*, i32** %12, align 8
  %214 = load i32, i32* %21, align 4
  %215 = load i32, i32* %22, align 4
  %216 = sub nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %213, i64 %217
  store i32 0, i32* %218, align 4
  br label %219

219:                                              ; preds = %200
  %220 = load i32, i32* %22, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %22, align 4
  br label %196

222:                                              ; preds = %196
  %223 = load i32*, i32** %11, align 8
  store i32* %223, i32** %10, align 8
  br label %224

224:                                              ; preds = %222, %179
  %225 = load i32*, i32** %10, align 8
  %226 = load i32*, i32** %11, align 8
  %227 = icmp ne i32* %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  br label %234

229:                                              ; preds = %224
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* @NS_IN6ADDRSZ, align 4
  %232 = call i32 @memcpy(i32* %230, i32* %27, i32 %231)
  %233 = load i32, i32* %19, align 4
  store i32 %233, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %238

234:                                              ; preds = %228, %194, %164, %153, %114, %105, %97, %85, %50
  %235 = load i32, i32* @ENOENT, align 4
  store i32 %235, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %238

236:                                              ; preds = %32
  %237 = load i32, i32* @EMSGSIZE, align 4
  store i32 %237, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %23, align 4
  br label %238

238:                                              ; preds = %236, %234, %229
  %239 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %239)
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #2

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i64 @getv4(i8*, i32*, i32*) #2

declare dso_local i64 @getbits(i8*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
