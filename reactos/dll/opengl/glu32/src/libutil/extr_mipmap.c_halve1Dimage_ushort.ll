; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halve1Dimage_ushort.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halve1Dimage_ushort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BOX2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32, i32, i32, i32)* @halve1Dimage_ushort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halve1Dimage_ushort(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  br i1 %52, label %53, label %127

53:                                               ; preds = %42
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  store i32 1, i32* %20, align 4
  store i32 0, i32* %23, align 4
  br label %58

58:                                               ; preds = %114, %53
  %59 = load i32, i32* %23, align 4
  %60 = load i32, i32* %19, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %117

62:                                               ; preds = %58
  store i32 0, i32* %24, align 4
  br label %63

63:                                               ; preds = %106, %62
  %64 = load i32, i32* %24, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %109

67:                                               ; preds = %63
  %68 = load i32, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i8*, i8** %21, align 8
  %72 = call i32 @__GLU_SWAP_2_BYTES(i8* %71)
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  store i32 %72, i32* %73, align 4
  %74 = load i8*, i8** %21, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = call i32 @__GLU_SWAP_2_BYTES(i8* %77)
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
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %94, %96
  %98 = sdiv i32 %97, 2
  %99 = load i32*, i32** %22, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i8*, i8** %21, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %21, align 8
  %104 = load i32*, i32** %22, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %22, align 8
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %24, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %24, align 4
  br label %63

109:                                              ; preds = %63
  %110 = load i32, i32* %17, align 4
  %111 = load i8*, i8** %21, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %21, align 8
  br label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %23, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %23, align 4
  br label %58

117:                                              ; preds = %58
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %17, align 4
  %121 = mul nsw i32 %119, %120
  %122 = sub nsw i32 %118, %121
  store i32 %122, i32* %26, align 4
  %123 = load i32, i32* %26, align 4
  %124 = load i8*, i8** %21, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8* %126, i8** %21, align 8
  br label %216

127:                                              ; preds = %42
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %215

130:                                              ; preds = %127
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %17, align 4
  %134 = mul nsw i32 %132, %133
  %135 = sub nsw i32 %131, %134
  store i32 %135, i32* %27, align 4
  %136 = load i32, i32* %12, align 4
  %137 = icmp ne i32 %136, 1
  %138 = zext i1 %137 to i32
  %139 = call i32 @assert(i32 %138)
  store i32 1, i32* %19, align 4
  store i32 0, i32* %23, align 4
  br label %140

140:                                              ; preds = %200, %130
  %141 = load i32, i32* %23, align 4
  %142 = load i32, i32* %20, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %203

144:                                              ; preds = %140
  store i32 0, i32* %28, align 4
  br label %145

145:                                              ; preds = %188, %144
  %146 = load i32, i32* %28, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %191

149:                                              ; preds = %145
  %150 = load i32, i32* %18, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %162

152:                                              ; preds = %149
  %153 = load i8*, i8** %21, align 8
  %154 = call i32 @__GLU_SWAP_2_BYTES(i8* %153)
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 %154, i32* %155, align 4
  %156 = load i8*, i8** %21, align 8
  %157 = load i32, i32* %16, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = call i32 @__GLU_SWAP_2_BYTES(i8* %159)
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 %160, i32* %161, align 4
  br label %174

162:                                              ; preds = %149
  %163 = load i8*, i8** %21, align 8
  %164 = bitcast i8* %163 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  store i32 %165, i32* %166, align 4
  %167 = load i8*, i8** %21, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = bitcast i8* %170 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  store i32 %172, i32* %173, align 4
  br label %174

174:                                              ; preds = %162, %152
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %176, %178
  %180 = sdiv i32 %179, 2
  %181 = load i32*, i32** %22, align 8
  store i32 %180, i32* %181, align 4
  %182 = load i32, i32* %15, align 4
  %183 = load i8*, i8** %21, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  store i8* %185, i8** %21, align 8
  %186 = load i32*, i32** %22, align 8
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %22, align 8
  br label %188

188:                                              ; preds = %174
  %189 = load i32, i32* %28, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %28, align 4
  br label %145

191:                                              ; preds = %145
  %192 = load i32, i32* %27, align 4
  %193 = load i8*, i8** %21, align 8
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  store i8* %195, i8** %21, align 8
  %196 = load i32, i32* %16, align 4
  %197 = load i8*, i8** %21, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %21, align 8
  br label %200

200:                                              ; preds = %191
  %201 = load i32, i32* %23, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %23, align 4
  br label %140

203:                                              ; preds = %140
  %204 = load i8*, i8** %21, align 8
  %205 = load i32*, i32** %13, align 8
  %206 = bitcast i32* %205 to i8*
  %207 = load i32, i32* %16, align 4
  %208 = load i32, i32* %12, align 4
  %209 = mul nsw i32 %207, %208
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %206, i64 %210
  %212 = icmp eq i8* %204, %211
  %213 = zext i1 %212 to i32
  %214 = call i32 @assert(i32 %213)
  br label %215

215:                                              ; preds = %203, %127
  br label %216

216:                                              ; preds = %215, %117
  %217 = load i32*, i32** %22, align 8
  %218 = bitcast i32* %217 to i8*
  %219 = load i32*, i32** %14, align 8
  %220 = bitcast i32* %219 to i8*
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* %15, align 4
  %223 = mul nsw i32 %221, %222
  %224 = load i32, i32* %19, align 4
  %225 = mul nsw i32 %223, %224
  %226 = load i32, i32* %20, align 4
  %227 = mul nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %220, i64 %228
  %230 = icmp eq i8* %218, %229
  %231 = zext i1 %230 to i32
  %232 = call i32 @assert(i32 %231)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @__GLU_SWAP_2_BYTES(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
