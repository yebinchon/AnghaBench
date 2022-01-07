; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_memblt.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/mstsc/extr_bsops.c_bs_memblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_Bpp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bs_memblt(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %26 = call i64 @bs_warp_coords(i32* %12, i32* %13, i32* %14, i32* %15, i32* %19, i32* %20)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %239

28:                                               ; preds = %10
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 12
  br i1 %30, label %31, label %103

31:                                               ; preds = %28
  %32 = load i32, i32* @g_Bpp, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i8*, i8** %16, align 8
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* %17, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  %41 = load i32, i32* %19, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  store i8* %43, i8** %25, align 8
  br label %72

44:                                               ; preds = %31
  %45 = load i32, i32* @g_Bpp, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i8*, i8** %16, align 8
  %49 = bitcast i8* %48 to i16*
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* %17, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i16, i16* %49, i64 %53
  %55 = load i32, i32* %19, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i16, i16* %54, i64 %56
  %58 = bitcast i16* %57 to i8*
  store i8* %58, i8** %25, align 8
  br label %71

59:                                               ; preds = %44
  %60 = load i8*, i8** %16, align 8
  %61 = bitcast i8* %60 to i32*
  %62 = load i32, i32* %20, align 4
  %63 = load i32, i32* %17, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %19, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = bitcast i32* %69 to i8*
  store i8* %70, i8** %25, align 8
  br label %71

71:                                               ; preds = %59, %47
  br label %72

72:                                               ; preds = %71, %34
  store i32 0, i32* %21, align 4
  br label %73

73:                                               ; preds = %99, %72
  %74 = load i32, i32* %21, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %73
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %21, align 4
  %81 = add nsw i32 %79, %80
  %82 = call i8* @get_bs_ptr(i32 %78, i32 %81)
  store i8* %82, i8** %24, align 8
  %83 = load i8*, i8** %24, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %98

85:                                               ; preds = %77
  %86 = load i8*, i8** %24, align 8
  %87 = load i8*, i8** %25, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @g_Bpp, align 4
  %90 = mul nsw i32 %88, %89
  %91 = call i32 @bs_copy_mem(i8* %86, i8* %87, i32 %90)
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* @g_Bpp, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i8*, i8** %25, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  store i8* %97, i8** %25, align 8
  br label %98

98:                                               ; preds = %85, %77
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %21, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %21, align 4
  br label %73

102:                                              ; preds = %73
  br label %238

103:                                              ; preds = %28
  %104 = load i32, i32* @g_Bpp, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %148

106:                                              ; preds = %103
  store i32 0, i32* %21, align 4
  br label %107

107:                                              ; preds = %144, %106
  %108 = load i32, i32* %21, align 4
  %109 = load i32, i32* %15, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %147

111:                                              ; preds = %107
  store i32 0, i32* %22, align 4
  br label %112

112:                                              ; preds = %140, %111
  %113 = load i32, i32* %22, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %143

116:                                              ; preds = %112
  %117 = load i8*, i8** %16, align 8
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* %20, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %17, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %22, align 4
  %124 = load i32, i32* %19, align 4
  %125 = add nsw i32 %123, %124
  %126 = add nsw i32 %122, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %117, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  store i32 %130, i32* %23, align 4
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* %22, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %23, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @bs_set_pixel(i32 %133, i32 %136, i32 %137, i32 %138, i32 0)
  br label %140

140:                                              ; preds = %116
  %141 = load i32, i32* %22, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %22, align 4
  br label %112

143:                                              ; preds = %112
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %21, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %21, align 4
  br label %107

147:                                              ; preds = %107
  br label %237

148:                                              ; preds = %103
  %149 = load i32, i32* @g_Bpp, align 4
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %194

151:                                              ; preds = %148
  store i32 0, i32* %21, align 4
  br label %152

152:                                              ; preds = %190, %151
  %153 = load i32, i32* %21, align 4
  %154 = load i32, i32* %15, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %193

156:                                              ; preds = %152
  store i32 0, i32* %22, align 4
  br label %157

157:                                              ; preds = %186, %156
  %158 = load i32, i32* %22, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %189

161:                                              ; preds = %157
  %162 = load i8*, i8** %16, align 8
  %163 = bitcast i8* %162 to i16*
  %164 = load i32, i32* %21, align 4
  %165 = load i32, i32* %20, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %17, align 4
  %168 = mul nsw i32 %166, %167
  %169 = load i32, i32* %22, align 4
  %170 = load i32, i32* %19, align 4
  %171 = add nsw i32 %169, %170
  %172 = add nsw i32 %168, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i16, i16* %163, i64 %173
  %175 = load i16, i16* %174, align 2
  %176 = zext i16 %175 to i32
  store i32 %176, i32* %23, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %22, align 4
  %179 = add nsw i32 %177, %178
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* %21, align 4
  %182 = add nsw i32 %180, %181
  %183 = load i32, i32* %23, align 4
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @bs_set_pixel(i32 %179, i32 %182, i32 %183, i32 %184, i32 0)
  br label %186

186:                                              ; preds = %161
  %187 = load i32, i32* %22, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %22, align 4
  br label %157

189:                                              ; preds = %157
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %21, align 4
  br label %152

193:                                              ; preds = %152
  br label %236

194:                                              ; preds = %148
  store i32 0, i32* %21, align 4
  br label %195

195:                                              ; preds = %232, %194
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* %15, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %235

199:                                              ; preds = %195
  store i32 0, i32* %22, align 4
  br label %200

200:                                              ; preds = %228, %199
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %231

204:                                              ; preds = %200
  %205 = load i8*, i8** %16, align 8
  %206 = bitcast i8* %205 to i32*
  %207 = load i32, i32* %21, align 4
  %208 = load i32, i32* %20, align 4
  %209 = add nsw i32 %207, %208
  %210 = load i32, i32* %17, align 4
  %211 = mul nsw i32 %209, %210
  %212 = load i32, i32* %22, align 4
  %213 = load i32, i32* %19, align 4
  %214 = add nsw i32 %212, %213
  %215 = add nsw i32 %211, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %206, i64 %216
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %23, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %22, align 4
  %221 = add nsw i32 %219, %220
  %222 = load i32, i32* %13, align 4
  %223 = load i32, i32* %21, align 4
  %224 = add nsw i32 %222, %223
  %225 = load i32, i32* %23, align 4
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @bs_set_pixel(i32 %221, i32 %224, i32 %225, i32 %226, i32 0)
  br label %228

228:                                              ; preds = %204
  %229 = load i32, i32* %22, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %22, align 4
  br label %200

231:                                              ; preds = %200
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %21, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %21, align 4
  br label %195

235:                                              ; preds = %195
  br label %236

236:                                              ; preds = %235, %193
  br label %237

237:                                              ; preds = %236, %147
  br label %238

238:                                              ; preds = %237, %102
  br label %239

239:                                              ; preds = %238, %10
  ret void
}

declare dso_local i64 @bs_warp_coords(i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @get_bs_ptr(i32, i32) #1

declare dso_local i32 @bs_copy_mem(i8*, i8*, i32) #1

declare dso_local i32 @bs_set_pixel(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
