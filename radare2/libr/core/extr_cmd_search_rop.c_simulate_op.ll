; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_search_rop.c_simulate_op.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_search_rop.c_simulate_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"*=\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"/=\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%=\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"&=\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"^=\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i64, i64, i64*, i32)* @simulate_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simulate_op(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %15, align 4
  %18 = icmp eq i32 %17, 64
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load i64, i64* @UT64_MAX, align 8
  store i64 %20, i64* %16, align 8
  br label %25

21:                                               ; preds = %7
  %22 = load i32, i32* %15, align 4
  %23 = zext i32 %22 to i64
  %24 = shl i64 1, %23
  store i64 %24, i64* %16, align 8
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = xor i64 %30, %31
  %33 = load i64*, i64** %14, align 8
  store i64 %32, i64* %33, align 8
  store i32 1, i32* %8, align 4
  br label %230

34:                                               ; preds = %25
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64*, i64** %14, align 8
  store i64 %41, i64* %42, align 8
  store i32 1, i32* %8, align 4
  br label %230

43:                                               ; preds = %34
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @strcmp(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = sub nsw i64 %53, %54
  %56 = add nsw i64 %52, %55
  %57 = load i64*, i64** %14, align 8
  store i64 %56, i64* %57, align 8
  br label %63

58:                                               ; preds = %47
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %11, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load i64*, i64** %14, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %58, %51
  store i32 1, i32* %8, align 4
  br label %230

64:                                               ; preds = %43
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = mul nsw i64 %69, %70
  %72 = load i64*, i64** %14, align 8
  store i64 %71, i64* %72, align 8
  store i32 1, i32* %8, align 4
  br label %230

73:                                               ; preds = %64
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %73
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = or i64 %78, %79
  %81 = load i64*, i64** %14, align 8
  store i64 %80, i64* %81, align 8
  store i32 1, i32* %8, align 4
  br label %230

82:                                               ; preds = %73
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = sdiv i64 %87, %88
  %90 = load i64*, i64** %14, align 8
  store i64 %89, i64* %90, align 8
  store i32 1, i32* %8, align 4
  br label %230

91:                                               ; preds = %82
  %92 = load i8*, i8** %9, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = srem i64 %96, %97
  %99 = load i64*, i64** %14, align 8
  store i64 %98, i64* %99, align 8
  store i32 1, i32* %8, align 4
  br label %230

100:                                              ; preds = %91
  %101 = load i8*, i8** %9, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %11, align 8
  %107 = shl i64 %105, %106
  %108 = load i64*, i64** %14, align 8
  store i64 %107, i64* %108, align 8
  store i32 1, i32* %8, align 4
  br label %230

109:                                              ; preds = %100
  %110 = load i8*, i8** %9, align 8
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %11, align 8
  %116 = ashr i64 %114, %115
  %117 = load i64*, i64** %14, align 8
  store i64 %116, i64* %117, align 8
  store i32 1, i32* %8, align 4
  br label %230

118:                                              ; preds = %109
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @strcmp(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load i64, i64* %10, align 8
  %124 = load i64, i64* %11, align 8
  %125 = and i64 %123, %124
  %126 = load i64*, i64** %14, align 8
  store i64 %125, i64* %126, align 8
  store i32 1, i32* %8, align 4
  br label %230

127:                                              ; preds = %118
  %128 = load i8*, i8** %9, align 8
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %127
  %132 = load i64, i64* %12, align 8
  %133 = load i64, i64* %11, align 8
  %134 = add nsw i64 %132, %133
  %135 = load i64*, i64** %14, align 8
  store i64 %134, i64* %135, align 8
  store i32 1, i32* %8, align 4
  br label %230

136:                                              ; preds = %127
  %137 = load i8*, i8** %9, align 8
  %138 = call i32 @strcmp(i8* %137, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %157, label %140

140:                                              ; preds = %136
  %141 = load i64, i64* %11, align 8
  %142 = load i64, i64* %12, align 8
  %143 = icmp sgt i64 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load i64, i64* %16, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i64, i64* %11, align 8
  %148 = sub nsw i64 %146, %147
  %149 = add nsw i64 %145, %148
  %150 = load i64*, i64** %14, align 8
  store i64 %149, i64* %150, align 8
  br label %156

151:                                              ; preds = %140
  %152 = load i64, i64* %12, align 8
  %153 = load i64, i64* %11, align 8
  %154 = sub nsw i64 %152, %153
  %155 = load i64*, i64** %14, align 8
  store i64 %154, i64* %155, align 8
  br label %156

156:                                              ; preds = %151, %144
  store i32 1, i32* %8, align 4
  br label %230

157:                                              ; preds = %136
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 @strcmp(i8* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = load i64, i64* %12, align 8
  %163 = load i64, i64* %11, align 8
  %164 = mul nsw i64 %162, %163
  %165 = load i64*, i64** %14, align 8
  store i64 %164, i64* %165, align 8
  store i32 1, i32* %8, align 4
  br label %230

166:                                              ; preds = %157
  %167 = load i8*, i8** %9, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %166
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %11, align 8
  %173 = sdiv i64 %171, %172
  %174 = load i64*, i64** %14, align 8
  store i64 %173, i64* %174, align 8
  store i32 1, i32* %8, align 4
  br label %230

175:                                              ; preds = %166
  %176 = load i8*, i8** %9, align 8
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %184, label %179

179:                                              ; preds = %175
  %180 = load i64, i64* %12, align 8
  %181 = load i64, i64* %11, align 8
  %182 = srem i64 %180, %181
  %183 = load i64*, i64** %14, align 8
  store i64 %182, i64* %183, align 8
  store i32 1, i32* %8, align 4
  br label %230

184:                                              ; preds = %175
  %185 = load i8*, i8** %9, align 8
  %186 = call i32 @strcmp(i8* %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %184
  %189 = load i64, i64* %10, align 8
  %190 = load i64, i64* %11, align 8
  %191 = shl i64 %189, %190
  %192 = load i64*, i64** %14, align 8
  store i64 %191, i64* %192, align 8
  store i32 1, i32* %8, align 4
  br label %230

193:                                              ; preds = %184
  %194 = load i8*, i8** %9, align 8
  %195 = call i32 @strcmp(i8* %194, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %193
  %198 = load i64, i64* %10, align 8
  %199 = load i64, i64* %11, align 8
  %200 = ashr i64 %198, %199
  %201 = load i64*, i64** %14, align 8
  store i64 %200, i64* %201, align 8
  store i32 1, i32* %8, align 4
  br label %230

202:                                              ; preds = %193
  %203 = load i8*, i8** %9, align 8
  %204 = call i32 @strcmp(i8* %203, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %202
  %207 = load i64, i64* %10, align 8
  %208 = load i64, i64* %11, align 8
  %209 = and i64 %207, %208
  %210 = load i64*, i64** %14, align 8
  store i64 %209, i64* %210, align 8
  store i32 1, i32* %8, align 4
  br label %230

211:                                              ; preds = %202
  %212 = load i8*, i8** %9, align 8
  %213 = call i32 @strcmp(i8* %212, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %211
  %216 = load i64, i64* %10, align 8
  %217 = load i64, i64* %11, align 8
  %218 = xor i64 %216, %217
  %219 = load i64*, i64** %14, align 8
  store i64 %218, i64* %219, align 8
  store i32 1, i32* %8, align 4
  br label %230

220:                                              ; preds = %211
  %221 = load i8*, i8** %9, align 8
  %222 = call i32 @strcmp(i8* %221, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %229, label %224

224:                                              ; preds = %220
  %225 = load i64, i64* %10, align 8
  %226 = load i64, i64* %11, align 8
  %227 = or i64 %225, %226
  %228 = load i64*, i64** %14, align 8
  store i64 %227, i64* %228, align 8
  store i32 1, i32* %8, align 4
  br label %230

229:                                              ; preds = %220
  store i32 0, i32* %8, align 4
  br label %230

230:                                              ; preds = %229, %224, %215, %206, %197, %188, %179, %170, %161, %156, %131, %122, %113, %104, %95, %86, %77, %68, %63, %38, %29
  %231 = load i32, i32* %8, align 4
  ret i32 %231
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
