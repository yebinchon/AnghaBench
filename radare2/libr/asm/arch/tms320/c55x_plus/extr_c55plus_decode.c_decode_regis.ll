; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_decode_regis.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_decode_regis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"d(ALLx\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid register! %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dbl(\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c")ALLx\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ACLH\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ACxP\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"ACx\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ADR\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"MA\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"MR\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"RA\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"RL\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"RLP\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"RxP\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"WD\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"WA\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"XR\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"XD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32, i32*, i32*)* @decode_regis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode_regis(i8* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %12, align 1
  store i8* null, i8** %13, align 8
  %16 = load i8, i8* %12, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %222 [
    i32 33, label %18
    i32 100, label %26
    i32 41, label %54
    i32 65, label %82
    i32 68, label %125
    i32 77, label %129
    i32 83, label %144
    i32 82, label %147
    i32 84, label %183
    i32 87, label %187
    i32 88, label %204
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* %9, align 4
  %20 = ashr i32 %19, 1
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 1
  %23 = shl i32 %22, 6
  %24 = or i32 %20, %23
  %25 = call i8* @get_reg_name_1(i32 %24)
  store i8* %25, i8** %13, align 8
  br label %223

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @r_str_ncasecmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32*, i32** %11, align 8
  store i32 -1, i32* %34, align 4
  store i8* null, i8** %6, align 8
  br label %225

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @check_arg(i32 %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32*, i32** %11, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %47

46:                                               ; preds = %40, %35
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i8* [ %45, %44 ], [ null, %46 ]
  store i8* %48, i8** %13, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i8* null, i8** %6, align 8
  br label %225

53:                                               ; preds = %47
  br label %223

54:                                               ; preds = %5
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @r_str_ncasecmp(i8* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* @stderr, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @fprintf(i32 %59, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load i32*, i32** %11, align 8
  store i32 -1, i32* %62, align 4
  store i8* null, i8** %6, align 8
  br label %225

63:                                               ; preds = %54
  %64 = load i32, i32* %9, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @check_arg(i32 %64, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i8* @strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %75

74:                                               ; preds = %68, %63
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i8* [ %73, %72 ], [ null, %74 ]
  store i8* %76, i8** %13, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i8* null, i8** %6, align 8
  br label %225

81:                                               ; preds = %75
  br label %223

82:                                               ; preds = %5
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @r_str_ncasecmp(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 64
  %89 = call i8* @get_reg_name_1(i32 %88)
  store i8* %89, i8** %13, align 8
  br label %115

90:                                               ; preds = %82
  %91 = load i8*, i8** %7, align 8
  %92 = call i32 @r_str_ncasecmp(i8* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  %97 = call i8* @get_reg_name_1(i32 %96)
  store i8* %97, i8** %13, align 8
  br label %114

98:                                               ; preds = %90
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @r_str_ncasecmp(i8* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %98
  %103 = load i8*, i8** %7, align 8
  %104 = call i32 @r_str_ncasecmp(i8* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 3)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @r_str_ncasecmp(i8* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106, %102, %98
  %111 = load i32, i32* %9, align 4
  %112 = call i8* @get_reg_name_1(i32 %111)
  store i8* %112, i8** %13, align 8
  br label %113

113:                                              ; preds = %110, %106
  br label %114

114:                                              ; preds = %113, %94
  br label %115

115:                                              ; preds = %114, %86
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 223
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %119, 224
  br i1 %120, label %121, label %124

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %9, align 4
  %123 = load i32*, i32** %10, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %118
  br label %223

125:                                              ; preds = %5
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 32
  %128 = call i8* @get_reg_name_1(i32 %127)
  store i8* %128, i8** %13, align 8
  br label %223

129:                                              ; preds = %5
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @r_str_ncasecmp(i8* %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 2)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @r_str_ncasecmp(i8* %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 2)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %133, %129
  %138 = load i32, i32* %9, align 4
  %139 = call i8* @get_reg_name_1(i32 %138)
  store i8* %139, i8** %13, align 8
  br label %143

140:                                              ; preds = %133
  %141 = load i32, i32* %9, align 4
  %142 = call i8* @get_reg_name_2(i32 %141)
  store i8* %142, i8** %13, align 8
  br label %143

143:                                              ; preds = %140, %137
  br label %223

144:                                              ; preds = %5
  %145 = load i32, i32* %9, align 4
  %146 = call i8* @get_reg_name_1(i32 %145)
  store i8* %146, i8** %13, align 8
  br label %223

147:                                              ; preds = %5
  %148 = load i8*, i8** %7, align 8
  %149 = call i32 @r_str_ncasecmp(i8* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 2)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @r_str_ncasecmp(i8* %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 2)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %151, %147
  %156 = load i32, i32* %9, align 4
  %157 = call i8* @get_reg_name_1(i32 %156)
  store i8* %157, i8** %13, align 8
  br label %182

158:                                              ; preds = %151
  %159 = load i8*, i8** %7, align 8
  %160 = call i32 @r_str_ncasecmp(i8* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 3)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i8*, i8** %7, align 8
  %164 = call i32 @r_str_ncasecmp(i8* %163, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 3)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %162, %158
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  %169 = call i8* @get_reg_name_1(i32 %168)
  store i8* %169, i8** %13, align 8
  br label %181

170:                                              ; preds = %162
  %171 = load i8*, i8** %7, align 8
  %172 = call i32 @r_str_ncasecmp(i8* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i32 2)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = load i32, i32* %9, align 4
  %176 = call i8* @get_reg_name_1(i32 %175)
  store i8* %176, i8** %13, align 8
  br label %180

177:                                              ; preds = %170
  %178 = load i32, i32* %9, align 4
  %179 = call i8* @get_reg_name_2(i32 %178)
  store i8* %179, i8** %13, align 8
  br label %180

180:                                              ; preds = %177, %174
  br label %181

181:                                              ; preds = %180, %166
  br label %182

182:                                              ; preds = %181, %155
  br label %223

183:                                              ; preds = %5
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 48
  %186 = call i8* @get_reg_name_1(i32 %185)
  store i8* %186, i8** %13, align 8
  br label %223

187:                                              ; preds = %5
  %188 = load i8*, i8** %7, align 8
  %189 = call i32 @r_str_ncasecmp(i8* %188, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32 2)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %187
  %192 = load i32, i32* %9, align 4
  %193 = call i8* @get_reg_name_2(i32 %192)
  store i8* %193, i8** %13, align 8
  br label %203

194:                                              ; preds = %187
  %195 = load i8*, i8** %7, align 8
  %196 = call i32 @r_str_ncasecmp(i8* %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 2)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %194
  %199 = load i32, i32* %9, align 4
  %200 = call i8* @get_reg_name_1(i32 %199)
  store i8* %200, i8** %13, align 8
  br label %202

201:                                              ; preds = %194
  store i8* null, i8** %13, align 8
  br label %202

202:                                              ; preds = %201, %198
  br label %203

203:                                              ; preds = %202, %191
  br label %223

204:                                              ; preds = %5
  %205 = load i8*, i8** %7, align 8
  %206 = call i32 @r_str_ncasecmp(i8* %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 2)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* %9, align 4
  %210 = call i8* @get_reg_name_3(i32 %209)
  store i8* %210, i8** %13, align 8
  br label %221

211:                                              ; preds = %204
  %212 = load i8*, i8** %7, align 8
  %213 = call i32 @r_str_ncasecmp(i8* %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i32 2)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %216, 32
  %218 = call i8* @get_reg_name_2(i32 %217)
  store i8* %218, i8** %13, align 8
  br label %220

219:                                              ; preds = %211
  store i8* null, i8** %13, align 8
  br label %220

220:                                              ; preds = %219, %215
  br label %221

221:                                              ; preds = %220, %208
  br label %223

222:                                              ; preds = %5
  store i8* null, i8** %13, align 8
  br label %223

223:                                              ; preds = %222, %221, %203, %183, %182, %144, %143, %125, %124, %81, %53, %18
  %224 = load i8*, i8** %13, align 8
  store i8* %224, i8** %6, align 8
  br label %225

225:                                              ; preds = %223, %80, %58, %52, %30
  %226 = load i8*, i8** %6, align 8
  ret i8* %226
}

declare dso_local i8* @get_reg_name_1(i32) #1

declare dso_local i32 @r_str_ncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @check_arg(i32, i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @get_reg_name_2(i32) #1

declare dso_local i8* @get_reg_name_3(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
