; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/ipv4/extr_ip_addr.c_ipaddr_aton.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lwip/core/ipv4/extr_ip_addr.c_ipaddr_aton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"unhandled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipaddr_aton(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x i64], align 16
  %13 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  store i64* %14, i64** %13, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %8, align 1
  br label %17

17:                                               ; preds = %152, %2
  %18 = load i8, i8* %8, align 1
  %19 = call i64 @isdigit(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %249

22:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  store i64 10, i64* %7, align 8
  %23 = load i8, i8* %8, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 48
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %8, align 1
  %30 = load i8, i8* %8, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 120
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 88
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %26
  store i64 16, i64* %7, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  %40 = load i8, i8* %39, align 1
  store i8 %40, i8* %8, align 1
  br label %42

41:                                               ; preds = %33
  store i64 8, i64* %7, align 8
  br label %42

42:                                               ; preds = %41, %37
  br label %43

43:                                               ; preds = %42, %22
  %44 = load i64, i64* %7, align 8
  %45 = udiv i64 4294967295, %44
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %7, align 8
  %47 = urem i64 4294967295, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %133, %43
  %50 = load i8, i8* %8, align 1
  %51 = call i64 @isdigit(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %49
  %54 = load i8, i8* %8, align 1
  %55 = sext i8 %54 to i32
  %56 = sub nsw i32 %55, 48
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %9, align 1
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %70, label %61

61:                                               ; preds = %53
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i8, i8* %9, align 1
  %67 = sext i8 %66 to i32
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %53
  store i32 0, i32* %3, align 4
  br label %249

71:                                               ; preds = %65, %61
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = mul i64 %72, %73
  %75 = load i8, i8* %8, align 1
  %76 = sext i8 %75 to i32
  %77 = sub nsw i32 %76, 48
  %78 = sext i32 %77 to i64
  %79 = add i64 %74, %78
  store i64 %79, i64* %6, align 8
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %4, align 8
  %82 = load i8, i8* %81, align 1
  store i8 %82, i8* %8, align 1
  br label %133

83:                                               ; preds = %49
  %84 = load i64, i64* %7, align 8
  %85 = icmp eq i64 %84, 16
  br i1 %85, label %86, label %131

86:                                               ; preds = %83
  %87 = load i8, i8* %8, align 1
  %88 = call i64 @isxdigit(i8 signext %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %131

90:                                               ; preds = %86
  %91 = load i8, i8* %8, align 1
  %92 = sext i8 %91 to i32
  %93 = add nsw i32 %92, 10
  %94 = load i8, i8* %8, align 1
  %95 = call i64 @islower(i8 signext %94)
  %96 = icmp ne i64 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 97, i32 65
  %99 = sub nsw i32 %93, %98
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %9, align 1
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp ugt i64 %101, %102
  br i1 %103, label %113, label %104

104:                                              ; preds = %90
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* %10, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %104
  %109 = load i8, i8* %9, align 1
  %110 = sext i8 %109 to i32
  %111 = load i32, i32* %11, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108, %90
  store i32 0, i32* %3, align 4
  br label %249

114:                                              ; preds = %108, %104
  %115 = load i64, i64* %6, align 8
  %116 = shl i64 %115, 4
  %117 = load i8, i8* %8, align 1
  %118 = sext i8 %117 to i32
  %119 = add nsw i32 %118, 10
  %120 = load i8, i8* %8, align 1
  %121 = call i64 @islower(i8 signext %120)
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 97, i32 65
  %125 = sub nsw i32 %119, %124
  %126 = sext i32 %125 to i64
  %127 = or i64 %116, %126
  store i64 %127, i64* %6, align 8
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %4, align 8
  %130 = load i8, i8* %129, align 1
  store i8 %130, i8* %8, align 1
  br label %132

131:                                              ; preds = %86, %83
  br label %134

132:                                              ; preds = %114
  br label %133

133:                                              ; preds = %132, %71
  br label %49

134:                                              ; preds = %131
  %135 = load i8, i8* %8, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 46
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = load i64*, i64** %13, align 8
  %140 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %141 = getelementptr inbounds i64, i64* %140, i64 3
  %142 = icmp uge i64* %139, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %249

144:                                              ; preds = %138
  %145 = load i64, i64* %6, align 8
  %146 = load i64*, i64** %13, align 8
  %147 = getelementptr inbounds i64, i64* %146, i32 1
  store i64* %147, i64** %13, align 8
  store i64 %145, i64* %146, align 8
  %148 = load i8*, i8** %4, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %4, align 8
  %150 = load i8, i8* %149, align 1
  store i8 %150, i8* %8, align 1
  br label %152

151:                                              ; preds = %134
  br label %153

152:                                              ; preds = %144
  br label %17

153:                                              ; preds = %151
  %154 = load i8, i8* %8, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i8, i8* %8, align 1
  %159 = call i32 @isspace(i8 signext %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %157
  store i32 0, i32* %3, align 4
  br label %249

162:                                              ; preds = %157, %153
  %163 = load i64*, i64** %13, align 8
  %164 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %165 = ptrtoint i64* %163 to i64
  %166 = ptrtoint i64* %164 to i64
  %167 = sub i64 %165, %166
  %168 = sdiv exact i64 %167, 8
  %169 = add nsw i64 %168, 1
  switch i64 %169, label %238 [
    i64 0, label %170
    i64 1, label %171
    i64 2, label %172
    i64 3, label %186
    i64 4, label %208
  ]

170:                                              ; preds = %162
  store i32 0, i32* %3, align 4
  br label %249

171:                                              ; preds = %162
  br label %240

172:                                              ; preds = %162
  %173 = load i64, i64* %6, align 8
  %174 = icmp ugt i64 %173, 16777215
  br i1 %174, label %179, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %177 = load i64, i64* %176, align 16
  %178 = icmp ugt i64 %177, 255
  br i1 %178, label %179, label %180

179:                                              ; preds = %175, %172
  store i32 0, i32* %3, align 4
  br label %249

180:                                              ; preds = %175
  %181 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %182 = load i64, i64* %181, align 16
  %183 = shl i64 %182, 24
  %184 = load i64, i64* %6, align 8
  %185 = or i64 %184, %183
  store i64 %185, i64* %6, align 8
  br label %240

186:                                              ; preds = %162
  %187 = load i64, i64* %6, align 8
  %188 = icmp ugt i64 %187, 65535
  br i1 %188, label %197, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %191 = load i64, i64* %190, align 16
  %192 = icmp ugt i64 %191, 255
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ugt i64 %195, 255
  br i1 %196, label %197, label %198

197:                                              ; preds = %193, %189, %186
  store i32 0, i32* %3, align 4
  br label %249

198:                                              ; preds = %193
  %199 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %200 = load i64, i64* %199, align 16
  %201 = shl i64 %200, 24
  %202 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %203 = load i64, i64* %202, align 8
  %204 = shl i64 %203, 16
  %205 = or i64 %201, %204
  %206 = load i64, i64* %6, align 8
  %207 = or i64 %206, %205
  store i64 %207, i64* %6, align 8
  br label %240

208:                                              ; preds = %162
  %209 = load i64, i64* %6, align 8
  %210 = icmp ugt i64 %209, 255
  br i1 %210, label %223, label %211

211:                                              ; preds = %208
  %212 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %213 = load i64, i64* %212, align 16
  %214 = icmp ugt i64 %213, 255
  br i1 %214, label %223, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp ugt i64 %217, 255
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  %221 = load i64, i64* %220, align 16
  %222 = icmp ugt i64 %221, 255
  br i1 %222, label %223, label %224

223:                                              ; preds = %219, %215, %211, %208
  store i32 0, i32* %3, align 4
  br label %249

224:                                              ; preds = %219
  %225 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 0
  %226 = load i64, i64* %225, align 16
  %227 = shl i64 %226, 24
  %228 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 1
  %229 = load i64, i64* %228, align 8
  %230 = shl i64 %229, 16
  %231 = or i64 %227, %230
  %232 = getelementptr inbounds [4 x i64], [4 x i64]* %12, i64 0, i64 2
  %233 = load i64, i64* %232, align 16
  %234 = shl i64 %233, 8
  %235 = or i64 %231, %234
  %236 = load i64, i64* %6, align 8
  %237 = or i64 %236, %235
  store i64 %237, i64* %6, align 8
  br label %240

238:                                              ; preds = %162
  %239 = call i32 @LWIP_ASSERT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %240

240:                                              ; preds = %238, %224, %198, %180, %171
  %241 = load i32*, i32** %5, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = load i32*, i32** %5, align 8
  %245 = load i64, i64* %6, align 8
  %246 = call i32 @htonl(i64 %245)
  %247 = call i32 @ip4_addr_set_u32(i32* %244, i32 %246)
  br label %248

248:                                              ; preds = %243, %240
  store i32 1, i32* %3, align 4
  br label %249

249:                                              ; preds = %248, %223, %197, %179, %170, %161, %143, %113, %70, %21
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @isxdigit(i8 signext) #1

declare dso_local i64 @islower(i8 signext) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i32 @LWIP_ASSERT(i8*, i32) #1

declare dso_local i32 @ip4_addr_set_u32(i32*, i32) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
