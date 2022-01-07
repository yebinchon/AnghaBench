; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_decode_funcs.c_get_AR_regs_class2.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_decode_funcs.c_get_AR_regs_class2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"*ar%ld(short(#0x%lx))\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"*ar%ld\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"@#0x%lx\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"*sp(#0x%lx)\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"*ar%ld-\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"*ar%ld+\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"*ar%ld(t0)\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"*ar%ld(t1)\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"*(ar%ld-t0)\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"*(ar%ld-t1)\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"*(ar%ld+t0)\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"*(ar%ld+t1)\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"*-ar%ld\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"*+ar%ld\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"*ar%ld(t2)\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"*ar%ld(t3)\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"*(ar%ld-t2)\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"*(ar%ld-t3)\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"*(ar%ld+t2)\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"*(ar%ld+t3)\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"*(ar%ld-t0b)\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"*(ar%ld+t0b)\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"*ar%ld(t0<<#1)\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"*ar%ld(t1<<#1)\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"*ar%ld(xar15)\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"*ar%ld(#%ld)\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"*+ar%ld(#%ld)\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"*abs16(#0x%lx)\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"*port(#0x%lx)\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"*ar%ld(#0x%lx)\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"*+ar%ld(#0x%lx)\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"*(#0x%lx)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_AR_regs_class2(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 6
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 3
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 2
  %21 = and i32 %20, 15
  store i32 %21, i32* %12, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32*, i32** %7, align 8
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %4
  %27 = call i8* @malloc(i32 50)
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i8* null, i8** %5, align 8
  br label %279

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i8*, i8** %14, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %42, %44
  %46 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %45)
  br label %52

47:                                               ; preds = %34
  %48 = load i8*, i8** %14, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  br label %52

52:                                               ; preds = %47, %37
  br label %277

53:                                               ; preds = %31
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %54, 3
  %56 = load i32, i32* %11, align 4
  %57 = mul nsw i32 2, %56
  %58 = or i32 %55, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, 6
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = load i8*, i8** %14, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, 7
  %68 = mul nsw i32 16, %67
  %69 = or i32 %65, %68
  %70 = sext i32 %69 to i64
  %71 = mul nsw i64 %64, %70
  %72 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %71)
  br label %276

73:                                               ; preds = %53
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 7
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load i8*, i8** %14, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, 7
  %83 = mul nsw i32 16, %82
  %84 = or i32 %80, %83
  %85 = sext i32 %84 to i64
  %86 = mul nsw i64 %79, %85
  %87 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %77, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %86)
  br label %275

88:                                               ; preds = %73
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = mul nsw i32 16, %90
  %92 = or i32 %89, %91
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  switch i32 %93, label %274 [
    i32 0, label %94
    i32 1, label %99
    i32 2, label %104
    i32 3, label %109
    i32 4, label %114
    i32 5, label %119
    i32 6, label %124
    i32 7, label %129
    i32 8, label %134
    i32 9, label %139
    i32 10, label %144
    i32 11, label %149
    i32 12, label %154
    i32 13, label %159
    i32 14, label %164
    i32 15, label %169
    i32 16, label %174
    i32 17, label %179
    i32 18, label %184
    i32 19, label %189
    i32 23, label %194
    i32 24, label %199
    i32 25, label %199
    i32 26, label %199
    i32 27, label %199
    i32 28, label %239
    i32 29, label %239
    i32 30, label %239
  ]

94:                                               ; preds = %88
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %97)
  br label %274

99:                                               ; preds = %88
  %100 = load i8*, i8** %14, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %102)
  br label %274

104:                                              ; preds = %88
  %105 = load i8*, i8** %14, align 8
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i64 %107)
  br label %274

109:                                              ; preds = %88
  %110 = load i8*, i8** %14, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i64 %112)
  br label %274

114:                                              ; preds = %88
  %115 = load i8*, i8** %14, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i64 %117)
  br label %274

119:                                              ; preds = %88
  %120 = load i8*, i8** %14, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i64 %122)
  br label %274

124:                                              ; preds = %88
  %125 = load i8*, i8** %14, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %127)
  br label %274

129:                                              ; preds = %88
  %130 = load i8*, i8** %14, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i64 %132)
  br label %274

134:                                              ; preds = %88
  %135 = load i8*, i8** %14, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i64 %137)
  br label %274

139:                                              ; preds = %88
  %140 = load i8*, i8** %14, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i64 %142)
  br label %274

144:                                              ; preds = %88
  %145 = load i8*, i8** %14, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %145, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 %147)
  br label %274

149:                                              ; preds = %88
  %150 = load i8*, i8** %14, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %150, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i64 %152)
  br label %274

154:                                              ; preds = %88
  %155 = load i8*, i8** %14, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i64 %157)
  br label %274

159:                                              ; preds = %88
  %160 = load i8*, i8** %14, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i64 %162)
  br label %274

164:                                              ; preds = %88
  %165 = load i8*, i8** %14, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %165, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i64 %167)
  br label %274

169:                                              ; preds = %88
  %170 = load i8*, i8** %14, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sext i32 %171 to i64
  %173 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %170, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i64 %172)
  br label %274

174:                                              ; preds = %88
  %175 = load i8*, i8** %14, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i64 %177)
  br label %274

179:                                              ; preds = %88
  %180 = load i8*, i8** %14, align 8
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %180, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i64 %182)
  br label %274

184:                                              ; preds = %88
  %185 = load i8*, i8** %14, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i64 %187)
  br label %274

189:                                              ; preds = %88
  %190 = load i8*, i8** %14, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %190, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i64 %192)
  br label %274

194:                                              ; preds = %88
  %195 = load i8*, i8** %14, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i64 %197)
  br label %274

199:                                              ; preds = %88, %88, %88, %88
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @get_ins_part(i32 %200, i32 2)
  store i32 %201, i32* %9, align 4
  %202 = load i32*, i32** %7, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %206

204:                                              ; preds = %199
  %205 = load i32*, i32** %7, align 8
  store i32 2, i32* %205, align 4
  br label %206

206:                                              ; preds = %204, %199
  %207 = load i32, i32* %13, align 4
  switch i32 %207, label %233 [
    i32 24, label %208
    i32 25, label %218
    i32 26, label %228
  ]

208:                                              ; preds = %206
  %209 = load i8*, i8** %14, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = mul nsw i64 %213, %215
  %217 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %209, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i64 %211, i64 %216)
  br label %238

218:                                              ; preds = %206
  %219 = load i8*, i8** %14, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = mul nsw i64 %223, %225
  %227 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %219, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0), i64 %221, i64 %226)
  br label %238

228:                                              ; preds = %206
  %229 = load i8*, i8** %14, align 8
  %230 = load i32, i32* %9, align 4
  %231 = sext i32 %230 to i64
  %232 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %229, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i64 %231)
  br label %238

233:                                              ; preds = %206
  %234 = load i8*, i8** %14, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %234, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), i64 %236)
  br label %238

238:                                              ; preds = %233, %228, %218, %208
  br label %274

239:                                              ; preds = %88, %88, %88
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @get_ins_part(i32 %240, i32 3)
  store i32 %241, i32* %9, align 4
  %242 = load i32*, i32** %7, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = load i32*, i32** %7, align 8
  store i32 3, i32* %245, align 4
  br label %246

246:                                              ; preds = %244, %239
  %247 = load i32, i32* %13, align 4
  switch i32 %247, label %268 [
    i32 28, label %248
    i32 29, label %258
  ]

248:                                              ; preds = %246
  %249 = load i8*, i8** %14, align 8
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = load i32, i32* %9, align 4
  %253 = sext i32 %252 to i64
  %254 = load i32, i32* %10, align 4
  %255 = sext i32 %254 to i64
  %256 = mul nsw i64 %253, %255
  %257 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %249, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i64 %251, i64 %256)
  br label %273

258:                                              ; preds = %246
  %259 = load i8*, i8** %14, align 8
  %260 = load i32, i32* %12, align 4
  %261 = sext i32 %260 to i64
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = load i32, i32* %10, align 4
  %265 = sext i32 %264 to i64
  %266 = mul nsw i64 %263, %265
  %267 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %259, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i64 %261, i64 %266)
  br label %273

268:                                              ; preds = %246
  %269 = load i8*, i8** %14, align 8
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %269, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0), i64 %271)
  br label %273

273:                                              ; preds = %268, %258, %248
  br label %274

274:                                              ; preds = %88, %273, %238, %194, %189, %184, %179, %174, %169, %164, %159, %154, %149, %144, %139, %134, %129, %124, %119, %114, %109, %104, %99, %94
  br label %275

275:                                              ; preds = %274, %76
  br label %276

276:                                              ; preds = %275, %61
  br label %277

277:                                              ; preds = %276, %52
  %278 = load i8*, i8** %14, align 8
  store i8* %278, i8** %5, align 8
  br label %279

279:                                              ; preds = %277, %30
  %280 = load i8*, i8** %5, align 8
  ret i8* %280
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

declare dso_local i32 @get_ins_part(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
