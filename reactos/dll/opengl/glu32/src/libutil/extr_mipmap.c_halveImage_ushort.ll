; ModuleID = '/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halveImage_ushort.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/opengl/glu32/src/libutil/extr_mipmap.c_halveImage_ushort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32, i32, i32, i32)* @halveImage_ushort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @halveImage_ushort(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %9
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %53

32:                                               ; preds = %29, %9
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 1
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @halve1Dimage_ushort(i32 %43, i32 %44, i32 %45, i32* %46, i32* %47, i32 %48, i32 %49, i32 %50, i32 %51)
  br label %218

53:                                               ; preds = %29
  %54 = load i32, i32* %11, align 4
  %55 = sdiv i32 %54, 2
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %12, align 4
  %57 = sdiv i32 %56, 2
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %17, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sub nsw i32 %58, %61
  store i32 %62, i32* %24, align 4
  %63 = load i32*, i32** %14, align 8
  store i32* %63, i32** %25, align 8
  %64 = load i32*, i32** %13, align 8
  %65 = bitcast i32* %64 to i8*
  store i8* %65, i8** %26, align 8
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %145, label %68

68:                                               ; preds = %53
  store i32 0, i32* %19, align 4
  br label %69

69:                                               ; preds = %141, %68
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %23, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %144

73:                                               ; preds = %69
  store i32 0, i32* %20, align 4
  br label %74

74:                                               ; preds = %129, %73
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %22, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %132

78:                                               ; preds = %74
  store i32 0, i32* %21, align 4
  br label %79

79:                                               ; preds = %121, %78
  %80 = load i32, i32* %21, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %124

83:                                               ; preds = %79
  %84 = load i8*, i8** %26, align 8
  %85 = bitcast i8* %84 to i32*
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %26, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = bitcast i8* %90 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %86, %92
  %94 = load i8*, i8** %26, align 8
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = bitcast i8* %97 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %93, %99
  %101 = load i8*, i8** %26, align 8
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = bitcast i8* %107 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %100, %109
  %111 = add nsw i32 %110, 2
  %112 = sdiv i32 %111, 4
  %113 = load i32*, i32** %25, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %25, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %25, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i8*, i8** %26, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %26, align 8
  br label %121

121:                                              ; preds = %83
  %122 = load i32, i32* %21, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %21, align 4
  br label %79

124:                                              ; preds = %79
  %125 = load i32, i32* %17, align 4
  %126 = load i8*, i8** %26, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %26, align 8
  br label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %20, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %20, align 4
  br label %74

132:                                              ; preds = %74
  %133 = load i32, i32* %24, align 4
  %134 = load i8*, i8** %26, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %26, align 8
  %137 = load i32, i32* %16, align 4
  %138 = load i8*, i8** %26, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %26, align 8
  br label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %19, align 4
  br label %69

144:                                              ; preds = %69
  br label %218

145:                                              ; preds = %53
  store i32 0, i32* %19, align 4
  br label %146

146:                                              ; preds = %214, %145
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %23, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %217

150:                                              ; preds = %146
  store i32 0, i32* %20, align 4
  br label %151

151:                                              ; preds = %202, %150
  %152 = load i32, i32* %20, align 4
  %153 = load i32, i32* %22, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %205

155:                                              ; preds = %151
  store i32 0, i32* %21, align 4
  br label %156

156:                                              ; preds = %194, %155
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %197

160:                                              ; preds = %156
  %161 = load i8*, i8** %26, align 8
  %162 = call i32 @__GLU_SWAP_2_BYTES(i8* %161)
  %163 = load i8*, i8** %26, align 8
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = call i32 @__GLU_SWAP_2_BYTES(i8* %166)
  %168 = add nsw i32 %162, %167
  %169 = load i8*, i8** %26, align 8
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = call i32 @__GLU_SWAP_2_BYTES(i8* %172)
  %174 = add nsw i32 %168, %173
  %175 = load i8*, i8** %26, align 8
  %176 = load i32, i32* %16, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i32, i32* %17, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = call i32 @__GLU_SWAP_2_BYTES(i8* %181)
  %183 = add nsw i32 %174, %182
  %184 = add nsw i32 %183, 2
  %185 = sdiv i32 %184, 4
  %186 = load i32*, i32** %25, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  store i32 %185, i32* %187, align 4
  %188 = load i32*, i32** %25, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %25, align 8
  %190 = load i32, i32* %15, align 4
  %191 = load i8*, i8** %26, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %26, align 8
  br label %194

194:                                              ; preds = %160
  %195 = load i32, i32* %21, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %21, align 4
  br label %156

197:                                              ; preds = %156
  %198 = load i32, i32* %17, align 4
  %199 = load i8*, i8** %26, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %26, align 8
  br label %202

202:                                              ; preds = %197
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %20, align 4
  br label %151

205:                                              ; preds = %151
  %206 = load i32, i32* %24, align 4
  %207 = load i8*, i8** %26, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %26, align 8
  %210 = load i32, i32* %16, align 4
  %211 = load i8*, i8** %26, align 8
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8* %213, i8** %26, align 8
  br label %214

214:                                              ; preds = %205
  %215 = load i32, i32* %19, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %19, align 4
  br label %146

217:                                              ; preds = %146
  br label %218

218:                                              ; preds = %38, %217, %144
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @halve1Dimage_ushort(i32, i32, i32, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @__GLU_SWAP_2_BYTES(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
