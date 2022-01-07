; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halve1Dimage_uint.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halve1Dimage_uint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOX2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32, i32, i32, i32)* @halve1Dimage_uint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halve1Dimage_uint(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [2 x i32], align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [2 x i32], align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sdiv i32 %32, 2
  store i32 %33, i32* %20, align 4
  %34 = load i32*, i32** %13, align 8
  %35 = bitcast i32* %34 to i8*
  store i8* %35, i8** %21, align 8
  %36 = load i32*, i32** %14, align 8
  store i32* %36, i32** %22, align 8
  %37 = load i32, i32* %11, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %9
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 1
  br label %42

42:                                               ; preds = %39, %9
  %43 = phi i1 [ true, %9 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %130

53:                                               ; preds = %42
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  store i32 1, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %58

58:                                               ; preds = %117, %53
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %120

62:                                               ; preds = %58
  store i32 0, i32* %24, align 4
  br label %63

63:                                               ; preds = %109, %62
  %64 = load i32, i32* %24, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %112

67:                                               ; preds = %63
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i8*, i8** %21, align 8
  %72 = call i32 @__GLU_SWAP_4_BYTES(i8* %71)
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32 %72, i32* %73, align 4
  %74 = load i8*, i8** %21, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = call i32 @__GLU_SWAP_4_BYTES(i8* %77)
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  br label %92

80:                                               ; preds = %67
  %81 = load i8*, i8** %21, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32 %83, i32* %84, align 4
  %85 = load i8*, i8** %21, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = bitcast i8* %88 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %80, %70
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = sitofp i32 %94 to double
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = sitofp i32 %97 to double
  %99 = fadd double %95, %98
  %100 = fdiv double %99, 2.000000e+00
  %101 = fptosi double %100 to i32
  %102 = load i32*, i32** %22, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i8*, i8** %21, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %21, align 8
  %107 = load i32*, i32** %22, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %22, align 8
  br label %109

109:                                              ; preds = %92
  %110 = load i32, i32* %24, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %24, align 4
  br label %63

112:                                              ; preds = %63
  %113 = load i32, i32* %17, align 4
  %114 = load i8*, i8** %21, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %21, align 8
  br label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %23, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %23, align 4
  br label %58

120:                                              ; preds = %58
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %17, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sub nsw i32 %121, %124
  store i32 %125, i32* %26, align 4
  %126 = load i32, i32* %26, align 4
  %127 = load i8*, i8** %21, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %21, align 8
  br label %222

130:                                              ; preds = %42
  %131 = load i32, i32* %11, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %221

133:                                              ; preds = %130
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %17, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sub nsw i32 %134, %137
  store i32 %138, i32* %27, align 4
  %139 = load i32, i32* %12, align 4
  %140 = icmp ne i32 %139, 1
  %141 = zext i1 %140 to i32
  %142 = call i32 @assert(i32 %141)
  store i32 1, i32* %19, align 4
  store i32 0, i32* %23, align 4
  br label %143

143:                                              ; preds = %206, %133
  %144 = load i32, i32* %23, align 4
  %145 = load i32, i32* %20, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %209

147:                                              ; preds = %143
  store i32 0, i32* %28, align 4
  br label %148

148:                                              ; preds = %194, %147
  %149 = load i32, i32* %28, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %197

152:                                              ; preds = %148
  %153 = load i32, i32* %18, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %152
  %156 = load i8*, i8** %21, align 8
  %157 = call i32 @__GLU_SWAP_4_BYTES(i8* %156)
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 %157, i32* %158, align 4
  %159 = load i8*, i8** %21, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = call i32 @__GLU_SWAP_4_BYTES(i8* %162)
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 %163, i32* %164, align 4
  br label %177

165:                                              ; preds = %152
  %166 = load i8*, i8** %21, align 8
  %167 = bitcast i8* %166 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 %168, i32* %169, align 4
  %170 = load i8*, i8** %21, align 8
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  %174 = bitcast i8* %173 to i32*
  %175 = load i32, i32* %174, align 4
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 %175, i32* %176, align 4
  br label %177

177:                                              ; preds = %165, %155
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = sitofp i32 %179 to double
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = sitofp i32 %182 to double
  %184 = fadd double %180, %183
  %185 = fdiv double %184, 2.000000e+00
  %186 = fptosi double %185 to i32
  %187 = load i32*, i32** %22, align 8
  store i32 %186, i32* %187, align 4
  %188 = load i32, i32* %15, align 4
  %189 = load i8*, i8** %21, align 8
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8* %191, i8** %21, align 8
  %192 = load i32*, i32** %22, align 8
  %193 = getelementptr inbounds i32, i32* %192, i32 1
  store i32* %193, i32** %22, align 8
  br label %194

194:                                              ; preds = %177
  %195 = load i32, i32* %28, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %28, align 4
  br label %148

197:                                              ; preds = %148
  %198 = load i32, i32* %27, align 4
  %199 = load i8*, i8** %21, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %21, align 8
  %202 = load i32, i32* %16, align 4
  %203 = load i8*, i8** %21, align 8
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %21, align 8
  br label %206

206:                                              ; preds = %197
  %207 = load i32, i32* %23, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %23, align 4
  br label %143

209:                                              ; preds = %143
  %210 = load i8*, i8** %21, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = bitcast i32* %211 to i8*
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %12, align 4
  %215 = mul nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %212, i64 %216
  %218 = icmp eq i8* %210, %217
  %219 = zext i1 %218 to i32
  %220 = call i32 @assert(i32 %219)
  br label %221

221:                                              ; preds = %209, %130
  br label %222

222:                                              ; preds = %221, %120
  %223 = load i32*, i32** %22, align 8
  %224 = bitcast i32* %223 to i8*
  %225 = load i32*, i32** %14, align 8
  %226 = bitcast i32* %225 to i8*
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %15, align 4
  %229 = mul nsw i32 %227, %228
  %230 = load i32, i32* %19, align 4
  %231 = mul nsw i32 %229, %230
  %232 = load i32, i32* %20, align 4
  %233 = mul nsw i32 %231, %232
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %226, i64 %234
  %236 = icmp eq i8* %224, %235
  %237 = zext i1 %236 to i32
  %238 = call i32 @assert(i32 %237)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @__GLU_SWAP_4_BYTES(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
