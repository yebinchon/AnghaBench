; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass64.c_arm64ass.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/arm/extr_armass64.c_arm64ass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"mov\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ldrb\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ldrh\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"ldrsh\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ldrsw\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"ldrsb\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"strb\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"strh\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ldr\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"stur\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"ldur\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"stp\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"ldp\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"add x\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"add w\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"adr x\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"adrp x\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"isb\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"nop\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"msr \00", align 1
@UT32_MAX = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"mrs \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"orr \00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"svc \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"hvc \00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"smc \00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"brk \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"hlt \00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"b \00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"b.eq \00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"b.hs \00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"bl \00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"br x\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"blr x\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"dmb \00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"dsb \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm64ass(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_19__, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = bitcast %struct.TYPE_19__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @parseOpcode(i8* %10, %struct.TYPE_19__* %8)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %482

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strncmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %14
  %19 = call i32 @mov(%struct.TYPE_19__* %8)
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, -1
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %482

25:                                               ; preds = %14
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strncmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = call i32 @cmp(%struct.TYPE_19__* %8)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, -1
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %482

36:                                               ; preds = %25
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strncmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = call i32 @bytelsop(%struct.TYPE_19__* %8, i32 16441)
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, -1
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %4, align 4
  br label %482

47:                                               ; preds = %36
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strncmp(i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %47
  %52 = call i32 @bytelsop(%struct.TYPE_19__* %8, i32 16504)
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, -1
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %4, align 4
  br label %482

58:                                               ; preds = %47
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @strncmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %58
  %63 = call i32 @bytelsop(%struct.TYPE_19__* %8, i32 49272)
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, -1
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %4, align 4
  br label %482

69:                                               ; preds = %58
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @strncmp(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = call i32 @bytelsop(%struct.TYPE_19__* %8, i32 32952)
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, -1
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %482

80:                                               ; preds = %69
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @strncmp(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = call i32 @bytelsop(%struct.TYPE_19__* %8, i32 49209)
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, -1
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %482

91:                                               ; preds = %80
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @strncmp(i8* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %91
  %96 = call i32 @bytelsop(%struct.TYPE_19__* %8, i32 57)
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, -1
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %4, align 4
  br label %482

102:                                              ; preds = %91
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @strncmp(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 4)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = call i32 @bytelsop(%struct.TYPE_19__* %8, i32 120)
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, -1
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %482

113:                                              ; preds = %102
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 @strncmp(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %113
  %118 = call i32 @reglsop(%struct.TYPE_19__* %8, i32 16632)
  %119 = load i32*, i32** %7, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, -1
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %4, align 4
  br label %482

124:                                              ; preds = %113
  %125 = load i8*, i8** %5, align 8
  %126 = call i32 @strncmp(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %124
  %129 = call i32 @regsluop(%struct.TYPE_19__* %8, i32 248)
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, -1
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %4, align 4
  br label %482

135:                                              ; preds = %124
  %136 = load i8*, i8** %5, align 8
  %137 = call i32 @strncmp(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %135
  %140 = call i32 @regsluop(%struct.TYPE_19__* %8, i32 16632)
  %141 = load i32*, i32** %7, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32*, i32** %7, align 8
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, -1
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %4, align 4
  br label %482

146:                                              ; preds = %135
  %147 = load i8*, i8** %5, align 8
  %148 = call i32 @strncmp(i8* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 3)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %146
  %151 = call i32 @reglsop(%struct.TYPE_19__* %8, i32 248)
  %152 = load i32*, i32** %7, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32*, i32** %7, align 8
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, -1
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %4, align 4
  br label %482

157:                                              ; preds = %146
  %158 = load i8*, i8** %5, align 8
  %159 = call i32 @strncmp(i8* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i32 3)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %157
  %162 = call i32 @stp(%struct.TYPE_19__* %8, i32 169)
  %163 = load i32*, i32** %7, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32*, i32** %7, align 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, -1
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %4, align 4
  br label %482

168:                                              ; preds = %157
  %169 = load i8*, i8** %5, align 8
  %170 = call i32 @strncmp(i8* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 3)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %168
  %173 = call i32 @stp(%struct.TYPE_19__* %8, i32 16553)
  %174 = load i32*, i32** %7, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32*, i32** %7, align 8
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, -1
  %178 = zext i1 %177 to i32
  store i32 %178, i32* %4, align 4
  br label %482

179:                                              ; preds = %168
  %180 = load i8*, i8** %5, align 8
  %181 = call i32 @strncmp(i8* %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i32 3)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %179
  %184 = call i32 @arithmetic(%struct.TYPE_19__* %8, i32 209)
  %185 = load i32*, i32** %7, align 8
  store i32 %184, i32* %185, align 4
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, -1
  %189 = zext i1 %188 to i32
  store i32 %189, i32* %4, align 4
  br label %482

190:                                              ; preds = %179
  %191 = load i8*, i8** %5, align 8
  %192 = call i32 @strncmp(i8* %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 5)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %190
  %195 = call i32 @arithmetic(%struct.TYPE_19__* %8, i32 145)
  %196 = load i32*, i32** %7, align 8
  store i32 %195, i32* %196, align 4
  %197 = load i32*, i32** %7, align 8
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, -1
  %200 = zext i1 %199 to i32
  store i32 %200, i32* %4, align 4
  br label %482

201:                                              ; preds = %190
  %202 = load i8*, i8** %5, align 8
  %203 = call i32 @strncmp(i8* %202, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 5)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %212, label %205

205:                                              ; preds = %201
  %206 = call i32 @arithmetic(%struct.TYPE_19__* %8, i32 17)
  %207 = load i32*, i32** %7, align 8
  store i32 %206, i32* %207, align 4
  %208 = load i32*, i32** %7, align 8
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, -1
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %4, align 4
  br label %482

212:                                              ; preds = %201
  %213 = load i8*, i8** %5, align 8
  %214 = call i32 @strncmp(i8* %213, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i32 5)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %224, label %216

216:                                              ; preds = %212
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @adr(%struct.TYPE_19__* %8, i32 %217)
  %219 = load i32*, i32** %7, align 8
  store i32 %218, i32* %219, align 4
  %220 = load i32*, i32** %7, align 8
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, -1
  %223 = zext i1 %222 to i32
  store i32 %223, i32* %4, align 4
  br label %482

224:                                              ; preds = %212
  %225 = load i8*, i8** %5, align 8
  %226 = call i32 @strncmp(i8* %225, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 6)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %236, label %228

228:                                              ; preds = %224
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @adrp(%struct.TYPE_19__* %8, i32 %229, i32 144)
  %231 = load i32*, i32** %7, align 8
  store i32 %230, i32* %231, align 4
  %232 = load i32*, i32** %7, align 8
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, -1
  %235 = zext i1 %234 to i32
  store i32 %235, i32* %4, align 4
  br label %482

236:                                              ; preds = %224
  %237 = load i8*, i8** %5, align 8
  %238 = call i32 @strncmp(i8* %237, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 3)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %236
  %241 = call i32 @neg(%struct.TYPE_19__* %8)
  %242 = load i32*, i32** %7, align 8
  store i32 %241, i32* %242, align 4
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* %243, align 4
  %245 = icmp ne i32 %244, -1
  %246 = zext i1 %245 to i32
  store i32 %246, i32* %4, align 4
  br label %482

247:                                              ; preds = %236
  %248 = load i8*, i8** %5, align 8
  %249 = call i32 @strcmp(i8* %248, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %257, label %251

251:                                              ; preds = %247
  %252 = load i32*, i32** %7, align 8
  store i32 -549518379, i32* %252, align 4
  %253 = load i32*, i32** %7, align 8
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, -1
  %256 = zext i1 %255 to i32
  store i32 %256, i32* %4, align 4
  br label %482

257:                                              ; preds = %247
  %258 = load i32*, i32** %7, align 8
  %259 = load i8*, i8** %5, align 8
  %260 = call i64 @handlePAC(i32* %258, i8* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %257
  store i32 1, i32* %4, align 4
  br label %482

263:                                              ; preds = %257
  %264 = load i8*, i8** %5, align 8
  %265 = call i32 @strcmp(i8* %264, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %273, label %267

267:                                              ; preds = %263
  %268 = load i32*, i32** %7, align 8
  store i32 522191829, i32* %268, align 4
  %269 = load i32*, i32** %7, align 8
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, -1
  %272 = zext i1 %271 to i32
  store i32 %272, i32* %4, align 4
  br label %482

273:                                              ; preds = %263
  %274 = load i8*, i8** %5, align 8
  %275 = call i32 @strcmp(i8* %274, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %279, label %277

277:                                              ; preds = %273
  %278 = load i32*, i32** %7, align 8
  store i32 -1073520682, i32* %278, align 4
  store i32 1, i32* %4, align 4
  br label %482

279:                                              ; preds = %273
  %280 = load i8*, i8** %5, align 8
  %281 = call i32 @strncmp(i8* %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i32 4)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %292, label %283

283:                                              ; preds = %279
  %284 = call i32 @msr(%struct.TYPE_19__* %8, i32 0)
  %285 = load i32*, i32** %7, align 8
  store i32 %284, i32* %285, align 4
  %286 = load i32*, i32** %7, align 8
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* @UT32_MAX, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %283
  store i32 1, i32* %4, align 4
  br label %482

291:                                              ; preds = %283
  br label %292

292:                                              ; preds = %291, %279
  %293 = load i8*, i8** %5, align 8
  %294 = call i32 @strncmp(i8* %293, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 4)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %305, label %296

296:                                              ; preds = %292
  %297 = call i32 @msr(%struct.TYPE_19__* %8, i32 1)
  %298 = load i32*, i32** %7, align 8
  store i32 %297, i32* %298, align 4
  %299 = load i32*, i32** %7, align 8
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @UT32_MAX, align 4
  %302 = icmp ne i32 %300, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %296
  store i32 1, i32* %4, align 4
  br label %482

304:                                              ; preds = %296
  br label %305

305:                                              ; preds = %304, %292
  %306 = load i8*, i8** %5, align 8
  %307 = call i32 @strncmp(i8* %306, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0), i32 4)
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %318, label %309

309:                                              ; preds = %305
  %310 = load i32, i32* %6, align 4
  %311 = call i32 @orr(%struct.TYPE_19__* %8, i32 %310)
  %312 = load i32*, i32** %7, align 8
  store i32 %311, i32* %312, align 4
  %313 = load i32*, i32** %7, align 8
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @UT32_MAX, align 4
  %316 = icmp ne i32 %314, %315
  %317 = zext i1 %316 to i32
  store i32 %317, i32* %4, align 4
  br label %482

318:                                              ; preds = %305
  %319 = load i8*, i8** %5, align 8
  %320 = call i32 @strncmp(i8* %319, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 4)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %329, label %322

322:                                              ; preds = %318
  %323 = call i32 @exception(%struct.TYPE_19__* %8, i32 16777428)
  %324 = load i32*, i32** %7, align 8
  store i32 %323, i32* %324, align 4
  %325 = load i32*, i32** %7, align 8
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %326, -1
  %328 = zext i1 %327 to i32
  store i32 %328, i32* %4, align 4
  br label %482

329:                                              ; preds = %318
  %330 = load i8*, i8** %5, align 8
  %331 = call i32 @strncmp(i8* %330, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i32 4)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %340, label %333

333:                                              ; preds = %329
  %334 = call i32 @exception(%struct.TYPE_19__* %8, i32 33554644)
  %335 = load i32*, i32** %7, align 8
  store i32 %334, i32* %335, align 4
  %336 = load i32*, i32** %7, align 8
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, -1
  %339 = zext i1 %338 to i32
  store i32 %339, i32* %4, align 4
  br label %482

340:                                              ; preds = %329
  %341 = load i8*, i8** %5, align 8
  %342 = call i32 @strncmp(i8* %341, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i32 4)
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %351, label %344

344:                                              ; preds = %340
  %345 = call i32 @exception(%struct.TYPE_19__* %8, i32 50331860)
  %346 = load i32*, i32** %7, align 8
  store i32 %345, i32* %346, align 4
  %347 = load i32*, i32** %7, align 8
  %348 = load i32, i32* %347, align 4
  %349 = icmp ne i32 %348, -1
  %350 = zext i1 %349 to i32
  store i32 %350, i32* %4, align 4
  br label %482

351:                                              ; preds = %340
  %352 = load i8*, i8** %5, align 8
  %353 = call i32 @strncmp(i8* %352, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i32 4)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %362, label %355

355:                                              ; preds = %351
  %356 = call i32 @exception(%struct.TYPE_19__* %8, i32 8404)
  %357 = load i32*, i32** %7, align 8
  store i32 %356, i32* %357, align 4
  %358 = load i32*, i32** %7, align 8
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, -1
  %361 = zext i1 %360 to i32
  store i32 %361, i32* %4, align 4
  br label %482

362:                                              ; preds = %351
  %363 = load i8*, i8** %5, align 8
  %364 = call i32 @strncmp(i8* %363, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0), i32 4)
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %373, label %366

366:                                              ; preds = %362
  %367 = call i32 @exception(%struct.TYPE_19__* %8, i32 16596)
  %368 = load i32*, i32** %7, align 8
  store i32 %367, i32* %368, align 4
  %369 = load i32*, i32** %7, align 8
  %370 = load i32, i32* %369, align 4
  %371 = icmp ne i32 %370, -1
  %372 = zext i1 %371 to i32
  store i32 %372, i32* %4, align 4
  br label %482

373:                                              ; preds = %362
  %374 = load i8*, i8** %5, align 8
  %375 = call i32 @strncmp(i8* %374, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0), i32 2)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %385, label %377

377:                                              ; preds = %373
  %378 = load i32, i32* %6, align 4
  %379 = call i32 @branch(%struct.TYPE_19__* %8, i32 %378, i32 20)
  %380 = load i32*, i32** %7, align 8
  store i32 %379, i32* %380, align 4
  %381 = load i32*, i32** %7, align 8
  %382 = load i32, i32* %381, align 4
  %383 = icmp ne i32 %382, -1
  %384 = zext i1 %383 to i32
  store i32 %384, i32* %4, align 4
  br label %482

385:                                              ; preds = %373
  %386 = load i8*, i8** %5, align 8
  %387 = call i32 @strncmp(i8* %386, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i32 5)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %397, label %389

389:                                              ; preds = %385
  %390 = load i32, i32* %6, align 4
  %391 = call i32 @bdot(%struct.TYPE_19__* %8, i32 %390, i32 84)
  %392 = load i32*, i32** %7, align 8
  store i32 %391, i32* %392, align 4
  %393 = load i32*, i32** %7, align 8
  %394 = load i32, i32* %393, align 4
  %395 = icmp ne i32 %394, -1
  %396 = zext i1 %395 to i32
  store i32 %396, i32* %4, align 4
  br label %482

397:                                              ; preds = %385
  %398 = load i8*, i8** %5, align 8
  %399 = call i32 @strncmp(i8* %398, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i64 0, i64 0), i32 5)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %409, label %401

401:                                              ; preds = %397
  %402 = load i32, i32* %6, align 4
  %403 = call i32 @bdot(%struct.TYPE_19__* %8, i32 %402, i32 33554516)
  %404 = load i32*, i32** %7, align 8
  store i32 %403, i32* %404, align 4
  %405 = load i32*, i32** %7, align 8
  %406 = load i32, i32* %405, align 4
  %407 = icmp ne i32 %406, -1
  %408 = zext i1 %407 to i32
  store i32 %408, i32* %4, align 4
  br label %482

409:                                              ; preds = %397
  %410 = load i8*, i8** %5, align 8
  %411 = call i32 @strncmp(i8* %410, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), i32 3)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %421, label %413

413:                                              ; preds = %409
  %414 = load i32, i32* %6, align 4
  %415 = call i32 @branch(%struct.TYPE_19__* %8, i32 %414, i32 148)
  %416 = load i32*, i32** %7, align 8
  store i32 %415, i32* %416, align 4
  %417 = load i32*, i32** %7, align 8
  %418 = load i32, i32* %417, align 4
  %419 = icmp ne i32 %418, -1
  %420 = zext i1 %419 to i32
  store i32 %420, i32* %4, align 4
  br label %482

421:                                              ; preds = %409
  %422 = load i8*, i8** %5, align 8
  %423 = call i32 @strncmp(i8* %422, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i32 4)
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %433, label %425

425:                                              ; preds = %421
  %426 = load i32, i32* %6, align 4
  %427 = call i32 @branch(%struct.TYPE_19__* %8, i32 %426, i32 8150)
  %428 = load i32*, i32** %7, align 8
  store i32 %427, i32* %428, align 4
  %429 = load i32*, i32** %7, align 8
  %430 = load i32, i32* %429, align 4
  %431 = icmp ne i32 %430, -1
  %432 = zext i1 %431 to i32
  store i32 %432, i32* %4, align 4
  br label %482

433:                                              ; preds = %421
  %434 = load i8*, i8** %5, align 8
  %435 = call i32 @strncmp(i8* %434, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i32 5)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %445, label %437

437:                                              ; preds = %433
  %438 = load i32, i32* %6, align 4
  %439 = call i32 @branch(%struct.TYPE_19__* %8, i32 %438, i32 16342)
  %440 = load i32*, i32** %7, align 8
  store i32 %439, i32* %440, align 4
  %441 = load i32*, i32** %7, align 8
  %442 = load i32, i32* %441, align 4
  %443 = icmp ne i32 %442, -1
  %444 = zext i1 %443 to i32
  store i32 %444, i32* %4, align 4
  br label %482

445:                                              ; preds = %433
  %446 = load i8*, i8** %5, align 8
  %447 = call i32 @strncmp(i8* %446, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i32 4)
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %457, label %449

449:                                              ; preds = %445
  %450 = load i32, i32* %6, align 4
  %451 = call i32 @mem_barrier(%struct.TYPE_19__* %8, i32 %450, i32 -1087372331)
  %452 = load i32*, i32** %7, align 8
  store i32 %451, i32* %452, align 4
  %453 = load i32*, i32** %7, align 8
  %454 = load i32, i32* %453, align 4
  %455 = icmp ne i32 %454, -1
  %456 = zext i1 %455 to i32
  store i32 %456, i32* %4, align 4
  br label %482

457:                                              ; preds = %445
  %458 = load i8*, i8** %5, align 8
  %459 = call i32 @strncmp(i8* %458, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i32 4)
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %469, label %461

461:                                              ; preds = %457
  %462 = load i32, i32* %6, align 4
  %463 = call i32 @mem_barrier(%struct.TYPE_19__* %8, i32 %462, i32 -1624243243)
  %464 = load i32*, i32** %7, align 8
  store i32 %463, i32* %464, align 4
  %465 = load i32*, i32** %7, align 8
  %466 = load i32, i32* %465, align 4
  %467 = icmp ne i32 %466, -1
  %468 = zext i1 %467 to i32
  store i32 %468, i32* %4, align 4
  br label %482

469:                                              ; preds = %457
  %470 = load i8*, i8** %5, align 8
  %471 = call i32 @strncmp(i8* %470, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 3)
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %481, label %473

473:                                              ; preds = %469
  %474 = load i32, i32* %6, align 4
  %475 = call i32 @mem_barrier(%struct.TYPE_19__* %8, i32 %474, i32 -549518379)
  %476 = load i32*, i32** %7, align 8
  store i32 %475, i32* %476, align 4
  %477 = load i32*, i32** %7, align 8
  %478 = load i32, i32* %477, align 4
  %479 = icmp ne i32 %478, -1
  %480 = zext i1 %479 to i32
  store i32 %480, i32* %4, align 4
  br label %482

481:                                              ; preds = %469
  store i32 0, i32* %4, align 4
  br label %482

482:                                              ; preds = %481, %473, %461, %449, %437, %425, %413, %401, %389, %377, %366, %355, %344, %333, %322, %309, %303, %290, %277, %267, %262, %251, %240, %228, %216, %205, %194, %183, %172, %161, %150, %139, %128, %117, %106, %95, %84, %73, %62, %51, %40, %29, %18, %13
  %483 = load i32, i32* %4, align 4
  ret i32 %483
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @parseOpcode(i8*, %struct.TYPE_19__*) #2

declare dso_local i32 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @mov(%struct.TYPE_19__*) #2

declare dso_local i32 @cmp(%struct.TYPE_19__*) #2

declare dso_local i32 @bytelsop(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @reglsop(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @regsluop(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @stp(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @arithmetic(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @adr(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @adrp(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @neg(%struct.TYPE_19__*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @handlePAC(i32*, i8*) #2

declare dso_local i32 @msr(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @orr(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @exception(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @branch(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @bdot(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @mem_barrier(%struct.TYPE_19__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
