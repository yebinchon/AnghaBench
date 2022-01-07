; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_rgb.c_r_cons_rgb_gen.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_rgb.c_r_cons_rgb_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALPHA_BG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%d;5;%dm\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%d;2;%d;%d;%dm\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%dm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64, i64, i64, i64, i64, i64, i32)* @r_cons_rgb_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r_cons_rgb_gen(i32 %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* @ALPHA_BG, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 48, i32 38
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %19, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %40

33:                                               ; preds = %9
  %34 = load i64, i64* %12, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %36, %33
  br label %259

40:                                               ; preds = %9
  store i64 2, i64* %20, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  store i8 27, i8* %42, align 1
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  store i8 91, i8* %44, align 1
  br label %45

45:                                               ; preds = %88, %40
  %46 = load i64, i64* %13, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %45
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %20, align 8
  %51 = add i64 %50, 4
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %11, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  store i8 0, i8* %55, align 1
  br label %259

56:                                               ; preds = %48
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = sub nsw i64 0, %58
  %60 = and i64 %57, %59
  switch i64 %60, label %81 [
    i64 131, label %61
    i64 130, label %65
    i64 129, label %69
    i64 128, label %73
    i64 132, label %77
  ]

61:                                               ; preds = %56
  %62 = load i8*, i8** %11, align 8
  %63 = load i64, i64* %20, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 49, i8* %64, align 1
  br label %81

65:                                               ; preds = %56
  %66 = load i8*, i8** %11, align 8
  %67 = load i64, i64* %20, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8 50, i8* %68, align 1
  br label %81

69:                                               ; preds = %56
  %70 = load i8*, i8** %11, align 8
  %71 = load i64, i64* %20, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8 51, i8* %72, align 1
  br label %81

73:                                               ; preds = %56
  %74 = load i8*, i8** %11, align 8
  %75 = load i64, i64* %20, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 52, i8* %76, align 1
  br label %81

77:                                               ; preds = %56
  %78 = load i8*, i8** %11, align 8
  %79 = load i64, i64* %20, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8 53, i8* %80, align 1
  br label %81

81:                                               ; preds = %56, %77, %73, %69, %65, %61
  %82 = load i8*, i8** %11, align 8
  %83 = load i64, i64* %20, align 8
  %84 = add i64 %83, 1
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 59, i8* %85, align 1
  %86 = load i64, i64* %20, align 8
  %87 = add i64 %86, 2
  store i64 %87, i64* %20, align 8
  br label %88

88:                                               ; preds = %81
  %89 = load i64, i64* %13, align 8
  %90 = sub nsw i64 %89, 1
  %91 = load i64, i64* %13, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %13, align 8
  br label %45

93:                                               ; preds = %45
  store i32 -1, i32* %21, align 4
  %94 = load i32, i32* %10, align 4
  switch i32 %94, label %245 [
    i32 133, label %95
    i32 134, label %108
    i32 135, label %120
  ]

95:                                               ; preds = %93
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* %20, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %20, align 8
  %101 = sub i64 %99, %100
  %102 = load i64, i64* %19, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %16, align 8
  %105 = load i64, i64* %17, align 8
  %106 = call i32 @rgb(i64 %103, i64 %104, i64 %105)
  %107 = call i32 (i8*, i64, i8*, i64, ...) @snprintf(i8* %98, i64 %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %102, i32 %106)
  store i32 %107, i32* %21, align 4
  br label %246

108:                                              ; preds = %93
  %109 = load i8*, i8** %11, align 8
  %110 = load i64, i64* %20, align 8
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  %112 = load i64, i64* %12, align 8
  %113 = load i64, i64* %20, align 8
  %114 = sub i64 %112, %113
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* %15, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load i64, i64* %17, align 8
  %119 = call i32 (i8*, i64, i8*, i64, ...) @snprintf(i8* %111, i64 %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %115, i64 %116, i64 %117, i64 %118)
  store i32 %119, i32* %21, align 4
  br label %246

120:                                              ; preds = %93
  %121 = load i64, i64* %19, align 8
  %122 = sub nsw i64 %121, 8
  store i64 %122, i64* %19, align 8
  %123 = load i32, i32* %18, align 4
  %124 = icmp sge i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %120
  %126 = load i32, i32* %18, align 4
  %127 = icmp sle i32 %126, 15
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = load i32, i32* %18, align 4
  %130 = srem i32 %129, 8
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %23, align 8
  %132 = load i32, i32* %18, align 4
  %133 = icmp sge i32 %132, 8
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 60, i32 0
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %22, align 8
  br label %232

137:                                              ; preds = %125, %120
  %138 = load i64, i64* %15, align 8
  %139 = icmp eq i64 %138, 128
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load i64, i64* %16, align 8
  %142 = icmp eq i64 %141, 128
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i64, i64* %17, align 8
  %145 = icmp eq i64 %144, 128
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %160

147:                                              ; preds = %143, %140, %137
  %148 = load i64, i64* %15, align 8
  %149 = icmp eq i64 %148, 255
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  %151 = load i64, i64* %16, align 8
  %152 = icmp eq i64 %151, 255
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i64, i64* %17, align 8
  %155 = icmp eq i64 %154, 255
  br label %156

156:                                              ; preds = %153, %150, %147
  %157 = phi i1 [ true, %150 ], [ true, %147 ], [ %155, %153 ]
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 60, i32 0
  br label %160

160:                                              ; preds = %156, %146
  %161 = phi i32 [ 53, %146 ], [ %159, %156 ]
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %22, align 8
  %163 = load i64, i64* %15, align 8
  %164 = load i64, i64* %16, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %186

166:                                              ; preds = %160
  %167 = load i64, i64* %16, align 8
  %168 = load i64, i64* %17, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %186

170:                                              ; preds = %166
  %171 = load i64, i64* %15, align 8
  %172 = icmp sgt i64 %171, 127
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 1, i32 0
  %175 = sext i32 %174 to i64
  store i64 %175, i64* %15, align 8
  %176 = load i64, i64* %16, align 8
  %177 = icmp sgt i64 %176, 127
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 1, i32 0
  %180 = sext i32 %179 to i64
  store i64 %180, i64* %16, align 8
  %181 = load i64, i64* %17, align 8
  %182 = icmp sgt i64 %181, 127
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 1, i32 0
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %17, align 8
  br label %211

186:                                              ; preds = %166, %160
  %187 = load i64, i64* %15, align 8
  %188 = load i64, i64* %16, align 8
  %189 = add nsw i64 %187, %188
  %190 = load i64, i64* %17, align 8
  %191 = add nsw i64 %189, %190
  %192 = sdiv i64 %191, 3
  store i64 %192, i64* %24, align 8
  %193 = load i64, i64* %15, align 8
  %194 = load i64, i64* %24, align 8
  %195 = icmp sge i64 %193, %194
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 1, i32 0
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %15, align 8
  %199 = load i64, i64* %16, align 8
  %200 = load i64, i64* %24, align 8
  %201 = icmp sge i64 %199, %200
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 1, i32 0
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %16, align 8
  %205 = load i64, i64* %17, align 8
  %206 = load i64, i64* %24, align 8
  %207 = icmp sge i64 %205, %206
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i32 1, i32 0
  %210 = sext i32 %209 to i64
  store i64 %210, i64* %17, align 8
  br label %211

211:                                              ; preds = %186, %170
  %212 = load i64, i64* %15, align 8
  %213 = icmp ne i64 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i32 1, i32 0
  %216 = load i64, i64* %16, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load i64, i64* %17, align 8
  %220 = icmp ne i64 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 6, i32 2
  br label %228

223:                                              ; preds = %211
  %224 = load i64, i64* %17, align 8
  %225 = icmp ne i64 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 4, i32 0
  br label %228

228:                                              ; preds = %223, %218
  %229 = phi i32 [ %222, %218 ], [ %227, %223 ]
  %230 = add nsw i32 %215, %229
  %231 = sext i32 %230 to i64
  store i64 %231, i64* %23, align 8
  br label %232

232:                                              ; preds = %228, %128
  %233 = load i8*, i8** %11, align 8
  %234 = load i64, i64* %20, align 8
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  %236 = load i64, i64* %12, align 8
  %237 = load i64, i64* %20, align 8
  %238 = sub i64 %236, %237
  %239 = load i64, i64* %19, align 8
  %240 = load i64, i64* %22, align 8
  %241 = add nsw i64 %239, %240
  %242 = load i64, i64* %23, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 (i8*, i64, i8*, i64, ...) @snprintf(i8* %235, i64 %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %243)
  store i32 %244, i32* %21, align 4
  br label %246

245:                                              ; preds = %93
  br label %246

246:                                              ; preds = %245, %232, %108, %95
  %247 = load i32, i32* %21, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %256, label %249

249:                                              ; preds = %246
  %250 = load i32, i32* %21, align 4
  %251 = sext i32 %250 to i64
  %252 = load i64, i64* %12, align 8
  %253 = load i64, i64* %20, align 8
  %254 = sub i64 %252, %253
  %255 = icmp uge i64 %251, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %249, %246
  %257 = load i8*, i8** %11, align 8
  %258 = getelementptr inbounds i8, i8* %257, i64 0
  store i8 0, i8* %258, align 1
  br label %259

259:                                              ; preds = %39, %53, %256, %249
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i64, ...) #1

declare dso_local i32 @rgb(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
