; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_decode_ins.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/tms320/c55x_plus/extr_c55plus_decode.c_decode_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ins_str = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Invalid instruction %s /hash %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"MMMMxxxxmm\00", align 1
@C55PLUS_DEBUG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"PSEUDO INS %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid instruction %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Invalid length token %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"TOKEN AUX: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"REG : %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"RET TOKEN %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"RESULT DECODE: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32, i32*, i32*, i32*, i32, i32, i32*)* @decode_ins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode_ins(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32 %6, i32 %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca [80 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i8* null, i8** %26, align 8
  store i8* null, i8** %27, align 8
  store i8* null, i8** %28, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @get_ins_part(i32 %31, i32 1)
  %33 = call i32 @get_ins_len(i32 %32)
  store i32 %33, i32* %20, align 4
  %34 = load i8**, i8*** @ins_str, align 8
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %35, 4
  %37 = add nsw i32 3, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %34, i64 %38
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %21, align 8
  %41 = load i8*, i8** %21, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %9
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %21, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %46)
  %48 = load i32*, i32** %19, align 8
  store i32 -1, i32* %48, align 4
  store i8* null, i8** %10, align 8
  br label %219

49:                                               ; preds = %9
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 412
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32*, i32** %19, align 8
  %63 = call i8* @get_token_decoded(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10, i8* null, i32* %54, i32* %55, i32 %56, i32 %59, i32 %60, i32 %61, i32* %62)
  store i8* %63, i8** %27, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  store i8* null, i8** %10, align 8
  br label %219

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %49
  %70 = load i64, i64* @C55PLUS_DEBUG, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i8*, i8** %21, align 8
  %74 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8*, i8** %21, align 8
  store i8* %76, i8** %22, align 8
  %77 = load i32, i32* %20, align 4
  %78 = load i32*, i32** %14, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %208, %75
  %80 = load i8*, i8** %22, align 8
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %211

83:                                               ; preds = %79
  %84 = load i8*, i8** %22, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 96
  br i1 %87, label %88, label %200

88:                                               ; preds = %83
  %89 = load i8*, i8** %22, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %22, align 8
  %91 = load i8*, i8** %22, align 8
  %92 = call i8* @strchr(i8* %91, i8 signext 96)
  store i8* %92, i8** %28, align 8
  %93 = load i8*, i8** %28, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i8*, i8** %22, align 8
  %97 = load i8*, i8** %28, align 8
  %98 = icmp eq i8* %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %95, %88
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** %21, align 8
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %101)
  %103 = load i8*, i8** %27, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32*, i32** %19, align 8
  store i32 -1, i32* %105, align 4
  store i8* null, i8** %10, align 8
  br label %219

106:                                              ; preds = %95
  %107 = load i8*, i8** %28, align 8
  %108 = load i8*, i8** %22, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %25, align 4
  %113 = load i32, i32* %25, align 4
  %114 = icmp sge i32 %113, 80
  br i1 %114, label %115, label %122

115:                                              ; preds = %106
  %116 = load i32, i32* @stderr, align 4
  %117 = load i32, i32* %25, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i8*, i8** %27, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i32*, i32** %19, align 8
  store i32 -1, i32* %121, align 4
  store i8* null, i8** %10, align 8
  br label %219

122:                                              ; preds = %106
  %123 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %124 = load i8*, i8** %22, align 8
  %125 = load i32, i32* %25, align 4
  %126 = call i32 @memcpy(i8* %123, i8* %124, i32 %125)
  %127 = load i32, i32* %25, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %28, align 8
  store i8* %130, i8** %22, align 8
  %131 = load i64, i64* @C55PLUS_DEBUG, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %122
  %134 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %135 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %134)
  br label %136

136:                                              ; preds = %133, %122
  store i8* null, i8** %26, align 8
  store i32 0, i32* %24, align 4
  br label %137

137:                                              ; preds = %168, %136
  %138 = load i32, i32* %24, align 4
  %139 = load i32, i32* %25, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %171

141:                                              ; preds = %137
  %142 = load i32, i32* %24, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 44
  br i1 %147, label %148, label %167

148:                                              ; preds = %141
  %149 = load i32, i32* %24, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 %150
  %152 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %153 = ptrtoint i8* %151 to i64
  %154 = ptrtoint i8* %152 to i64
  %155 = sub i64 %153, %154
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %25, align 4
  %157 = load i32, i32* %24, align 4
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 %159
  store i8* %160, i8** %26, align 8
  %161 = load i64, i64* @C55PLUS_DEBUG, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %148
  %164 = load i8*, i8** %26, align 8
  %165 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %163, %148
  br label %171

167:                                              ; preds = %141
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %24, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %24, align 4
  br label %137

171:                                              ; preds = %166, %137
  %172 = load i32, i32* %11, align 4
  %173 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %174 = load i32, i32* %25, align 4
  %175 = load i8*, i8** %26, align 8
  %176 = load i32*, i32** %16, align 8
  %177 = load i32*, i32** %15, align 8
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* %13, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %18, align 4
  %184 = load i32*, i32** %19, align 8
  %185 = call i8* @get_token_decoded(i32 %172, i8* %173, i32 %174, i8* %175, i32* %176, i32* %177, i32 %178, i32 %181, i32 %182, i32 %183, i32* %184)
  store i8* %185, i8** %28, align 8
  %186 = load i32*, i32** %19, align 8
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %171
  store i8* null, i8** %10, align 8
  br label %219

190:                                              ; preds = %171
  %191 = load i8*, i8** %27, align 8
  %192 = load i8*, i8** %28, align 8
  %193 = call i8* @strcat_dup(i8* %191, i8* %192, i32 3)
  store i8* %193, i8** %27, align 8
  %194 = load i64, i64* @C55PLUS_DEBUG, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = load i8*, i8** %27, align 8
  %198 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %196, %190
  br label %208

200:                                              ; preds = %83
  %201 = load i8*, i8** %22, align 8
  %202 = load i8, i8* %201, align 1
  %203 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  store i8 %202, i8* %203, align 16
  %204 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 1
  store i8 0, i8* %204, align 1
  %205 = load i8*, i8** %27, align 8
  %206 = getelementptr inbounds [80 x i8], [80 x i8]* %23, i64 0, i64 0
  %207 = call i8* @strcat_dup(i8* %205, i8* %206, i32 1)
  store i8* %207, i8** %27, align 8
  br label %208

208:                                              ; preds = %200, %199
  %209 = load i8*, i8** %22, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %22, align 8
  br label %79

211:                                              ; preds = %79
  %212 = load i64, i64* @C55PLUS_DEBUG, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i8*, i8** %27, align 8
  %216 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %215)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load i8*, i8** %27, align 8
  store i8* %218, i8** %10, align 8
  br label %219

219:                                              ; preds = %217, %189, %115, %99, %67, %43
  %220 = load i8*, i8** %10, align 8
  ret i8* %220
}

declare dso_local i32 @get_ins_len(i32) #1

declare dso_local i32 @get_ins_part(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @get_token_decoded(i32, i8*, i32, i8*, i32*, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @strcat_dup(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
