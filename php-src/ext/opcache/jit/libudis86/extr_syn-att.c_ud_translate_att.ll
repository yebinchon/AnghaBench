; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_syn-att.c_ud_translate_att.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/libudis86/extr_syn-att.c_ud_translate_att.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ud = type { i32, i32, %struct.TYPE_6__*, i32, i64, i64, i64, i64, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"o32 \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"o16 \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"a32 \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"a16 \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"lock \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"rep \00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"repe \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"repne \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"lret \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c".byte 0x%x\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@UD_OP_REG = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@UD_NONE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c", \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ud_translate_att(%struct.ud* %0) #0 {
  %2 = alloca %struct.ud*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ud* %0, %struct.ud** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.ud*, %struct.ud** %2, align 8
  %6 = getelementptr inbounds %struct.ud, %struct.ud* %5, i32 0, i32 9
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @P_OSO(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %1
  %13 = load %struct.ud*, %struct.ud** %2, align 8
  %14 = getelementptr inbounds %struct.ud, %struct.ud* %13, i32 0, i32 10
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load %struct.ud*, %struct.ud** %2, align 8
  %19 = getelementptr inbounds %struct.ud, %struct.ud* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %27 [
    i32 16, label %21
    i32 32, label %24
    i32 64, label %24
  ]

21:                                               ; preds = %17
  %22 = load %struct.ud*, %struct.ud** %2, align 8
  %23 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %27

24:                                               ; preds = %17, %17
  %25 = load %struct.ud*, %struct.ud** %2, align 8
  %26 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %17, %24, %21
  br label %28

28:                                               ; preds = %27, %12, %1
  %29 = load %struct.ud*, %struct.ud** %2, align 8
  %30 = getelementptr inbounds %struct.ud, %struct.ud* %29, i32 0, i32 9
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @P_ASO(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %28
  %37 = load %struct.ud*, %struct.ud** %2, align 8
  %38 = getelementptr inbounds %struct.ud, %struct.ud* %37, i32 0, i32 8
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.ud*, %struct.ud** %2, align 8
  %43 = getelementptr inbounds %struct.ud, %struct.ud* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %54 [
    i32 16, label %45
    i32 32, label %48
    i32 64, label %51
  ]

45:                                               ; preds = %41
  %46 = load %struct.ud*, %struct.ud** %2, align 8
  %47 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %54

48:                                               ; preds = %41
  %49 = load %struct.ud*, %struct.ud** %2, align 8
  %50 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %54

51:                                               ; preds = %41
  %52 = load %struct.ud*, %struct.ud** %2, align 8
  %53 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %41, %51, %48, %45
  br label %55

55:                                               ; preds = %54, %36, %28
  %56 = load %struct.ud*, %struct.ud** %2, align 8
  %57 = getelementptr inbounds %struct.ud, %struct.ud* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.ud*, %struct.ud** %2, align 8
  %62 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.ud*, %struct.ud** %2, align 8
  %65 = getelementptr inbounds %struct.ud, %struct.ud* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.ud*, %struct.ud** %2, align 8
  %70 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %89

71:                                               ; preds = %63
  %72 = load %struct.ud*, %struct.ud** %2, align 8
  %73 = getelementptr inbounds %struct.ud, %struct.ud* %72, i32 0, i32 5
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.ud*, %struct.ud** %2, align 8
  %78 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %88

79:                                               ; preds = %71
  %80 = load %struct.ud*, %struct.ud** %2, align 8
  %81 = getelementptr inbounds %struct.ud, %struct.ud* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.ud*, %struct.ud** %2, align 8
  %86 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %76
  br label %89

89:                                               ; preds = %88, %68
  %90 = load %struct.ud*, %struct.ud** %2, align 8
  %91 = getelementptr inbounds %struct.ud, %struct.ud* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  switch i32 %92, label %166 [
    i32 128, label %93
    i32 131, label %96
    i32 129, label %106
    i32 132, label %106
    i32 133, label %131
    i32 130, label %131
  ]

93:                                               ; preds = %89
  %94 = load %struct.ud*, %struct.ud** %2, align 8
  %95 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %173

96:                                               ; preds = %89
  %97 = load %struct.ud*, %struct.ud** %2, align 8
  %98 = load %struct.ud*, %struct.ud** %2, align 8
  %99 = getelementptr inbounds %struct.ud, %struct.ud* %98, i32 0, i32 2
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %97, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %104)
  br label %272

106:                                              ; preds = %89, %89
  %107 = load %struct.ud*, %struct.ud** %2, align 8
  %108 = getelementptr inbounds %struct.ud, %struct.ud* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.ud*, %struct.ud** %2, align 8
  %113 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %106
  %115 = load %struct.ud*, %struct.ud** %2, align 8
  %116 = getelementptr inbounds %struct.ud, %struct.ud* %115, i32 0, i32 2
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @UD_OP_REG, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %114
  store i32 1, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %114
  %125 = load %struct.ud*, %struct.ud** %2, align 8
  %126 = load %struct.ud*, %struct.ud** %2, align 8
  %127 = getelementptr inbounds %struct.ud, %struct.ud* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ud_lookup_mnemonic(i32 %128)
  %130 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %129)
  br label %173

131:                                              ; preds = %89, %89
  %132 = load %struct.ud*, %struct.ud** %2, align 8
  %133 = getelementptr inbounds %struct.ud, %struct.ud* %132, i32 0, i32 2
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @UD_NONE, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %131
  %141 = load %struct.ud*, %struct.ud** %2, align 8
  %142 = load %struct.ud*, %struct.ud** %2, align 8
  %143 = getelementptr inbounds %struct.ud, %struct.ud* %142, i32 0, i32 2
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 0
  %146 = call i32 @gen_operand(%struct.ud* %141, %struct.TYPE_6__* %145)
  br label %147

147:                                              ; preds = %140, %131
  %148 = load %struct.ud*, %struct.ud** %2, align 8
  %149 = getelementptr inbounds %struct.ud, %struct.ud* %148, i32 0, i32 2
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i64 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @UD_NONE, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %147
  %157 = load %struct.ud*, %struct.ud** %2, align 8
  %158 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %159 = load %struct.ud*, %struct.ud** %2, align 8
  %160 = load %struct.ud*, %struct.ud** %2, align 8
  %161 = getelementptr inbounds %struct.ud, %struct.ud* %160, i32 0, i32 2
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 1
  %164 = call i32 @gen_operand(%struct.ud* %159, %struct.TYPE_6__* %163)
  br label %165

165:                                              ; preds = %156, %147
  br label %272

166:                                              ; preds = %89
  %167 = load %struct.ud*, %struct.ud** %2, align 8
  %168 = load %struct.ud*, %struct.ud** %2, align 8
  %169 = getelementptr inbounds %struct.ud, %struct.ud* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @ud_lookup_mnemonic(i32 %170)
  %172 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %166, %124, %93
  %174 = load i32, i32* %3, align 4
  %175 = icmp eq i32 %174, 8
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load %struct.ud*, %struct.ud** %2, align 8
  %178 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %193

179:                                              ; preds = %173
  %180 = load i32, i32* %3, align 4
  %181 = icmp eq i32 %180, 16
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load %struct.ud*, %struct.ud** %2, align 8
  %184 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %183, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %192

185:                                              ; preds = %179
  %186 = load i32, i32* %3, align 4
  %187 = icmp eq i32 %186, 64
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.ud*, %struct.ud** %2, align 8
  %190 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %189, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %191

191:                                              ; preds = %188, %185
  br label %192

192:                                              ; preds = %191, %182
  br label %193

193:                                              ; preds = %192, %176
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load %struct.ud*, %struct.ud** %2, align 8
  %198 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %197, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %202

199:                                              ; preds = %193
  %200 = load %struct.ud*, %struct.ud** %2, align 8
  %201 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %202

202:                                              ; preds = %199, %196
  %203 = load %struct.ud*, %struct.ud** %2, align 8
  %204 = getelementptr inbounds %struct.ud, %struct.ud* %203, i32 0, i32 2
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i64 3
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @UD_NONE, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %202
  %212 = load %struct.ud*, %struct.ud** %2, align 8
  %213 = load %struct.ud*, %struct.ud** %2, align 8
  %214 = getelementptr inbounds %struct.ud, %struct.ud* %213, i32 0, i32 2
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 3
  %217 = call i32 @gen_operand(%struct.ud* %212, %struct.TYPE_6__* %216)
  %218 = load %struct.ud*, %struct.ud** %2, align 8
  %219 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %218, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  br label %220

220:                                              ; preds = %211, %202
  %221 = load %struct.ud*, %struct.ud** %2, align 8
  %222 = getelementptr inbounds %struct.ud, %struct.ud* %221, i32 0, i32 2
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i64 2
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @UD_NONE, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %220
  %230 = load %struct.ud*, %struct.ud** %2, align 8
  %231 = load %struct.ud*, %struct.ud** %2, align 8
  %232 = getelementptr inbounds %struct.ud, %struct.ud* %231, i32 0, i32 2
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i64 2
  %235 = call i32 @gen_operand(%struct.ud* %230, %struct.TYPE_6__* %234)
  %236 = load %struct.ud*, %struct.ud** %2, align 8
  %237 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %236, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  br label %238

238:                                              ; preds = %229, %220
  %239 = load %struct.ud*, %struct.ud** %2, align 8
  %240 = getelementptr inbounds %struct.ud, %struct.ud* %239, i32 0, i32 2
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i64 1
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @UD_NONE, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %256

247:                                              ; preds = %238
  %248 = load %struct.ud*, %struct.ud** %2, align 8
  %249 = load %struct.ud*, %struct.ud** %2, align 8
  %250 = getelementptr inbounds %struct.ud, %struct.ud* %249, i32 0, i32 2
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i64 1
  %253 = call i32 @gen_operand(%struct.ud* %248, %struct.TYPE_6__* %252)
  %254 = load %struct.ud*, %struct.ud** %2, align 8
  %255 = call i32 (%struct.ud*, i8*, ...) @ud_asmprintf(%struct.ud* %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  br label %256

256:                                              ; preds = %247, %238
  %257 = load %struct.ud*, %struct.ud** %2, align 8
  %258 = getelementptr inbounds %struct.ud, %struct.ud* %257, i32 0, i32 2
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @UD_NONE, align 8
  %264 = icmp ne i64 %262, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %256
  %266 = load %struct.ud*, %struct.ud** %2, align 8
  %267 = load %struct.ud*, %struct.ud** %2, align 8
  %268 = getelementptr inbounds %struct.ud, %struct.ud* %267, i32 0, i32 2
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i64 0
  %271 = call i32 @gen_operand(%struct.ud* %266, %struct.TYPE_6__* %270)
  br label %272

272:                                              ; preds = %96, %165, %265, %256
  ret void
}

declare dso_local i32 @P_OSO(i32) #1

declare dso_local i32 @ud_asmprintf(%struct.ud*, i8*, ...) #1

declare dso_local i32 @P_ASO(i32) #1

declare dso_local i32 @ud_lookup_mnemonic(i32) #1

declare dso_local i32 @gen_operand(%struct.ud*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
