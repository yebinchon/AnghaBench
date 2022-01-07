; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_r2k_linux.c_ReadMemory.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_r2k_linux.c_ReadMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i8*)* }
%struct.TYPE_5__ = type { i64 }
%struct.r2k_data = type { i64, i64, i32, i32* }

@.str = private unnamed_addr constant [23 x i8] c"Invalid input buffer.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"IOCTL device not initialized.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadMemory(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2, i64 %3, i64 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.r2k_data, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %21, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %224

26:                                               ; preds = %7
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %224

31:                                               ; preds = %26
  %32 = load i32*, i32** %14, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %224

34:                                               ; preds = %31
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 1
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* %15, align 4
  %40 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i64 @calloc(i32 %42, i32 1)
  %44 = inttoptr i64 %43 to i32*
  %45 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 3
  store i32* %44, i32** %45, align 8
  %46 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  store i32 -1, i32* %8, align 4
  br label %240

50:                                               ; preds = %34
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @ioctl(i32 %54, i32 %55, %struct.r2k_data* %23)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %50
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @memcpy(i32* %60, i32* %62, i32 %63)
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %16, align 4
  br label %220

66:                                               ; preds = %50
  store i32 255, i32* %22, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  %67 = call i32 (...) @getpagesize()
  store i32 %67, i32* %17, align 4
  %68 = load i64, i64* %13, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 %68, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %19, align 4
  %74 = load i32, i32* %17, align 4
  %75 = srem i32 %73, %74
  %76 = load i32, i32* %19, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %13, align 8
  %82 = sub i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = sub nsw i32 %78, %83
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %212

86:                                               ; preds = %66
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %13, align 8
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @ioctl(i32 %96, i32 %97, %struct.r2k_data* %23)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %114, label %101

101:                                              ; preds = %86
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %19, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %13, align 8
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  %113 = call i32 @memcpy(i32* %105, i32* %107, i32 %112)
  store i32 1, i32* %21, align 4
  br label %126

114:                                              ; preds = %86
  %115 = load i32*, i32** %14, align 8
  %116 = load i32, i32* %20, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %22, align 4
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %13, align 8
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = call i32 @memset(i32* %118, i32 %119, i32 %124)
  br label %126

126:                                              ; preds = %114, %101
  %127 = load i32, i32* %19, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %13, align 8
  %130 = sub i64 %128, %129
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %20, align 4
  %134 = sub nsw i32 %132, %133
  store i32 %134, i32* %18, align 4
  br label %135

135:                                              ; preds = %170, %126
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %17, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %180

139:                                              ; preds = %135
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 1
  store i64 %141, i64* %142, align 8
  %143 = load i32, i32* %17, align 4
  %144 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 2
  store i32 %143, i32* %144, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i32, i32* %11, align 4
  %150 = call i32 @ioctl(i32 %148, i32 %149, %struct.r2k_data* %23)
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %162, label %153

153:                                              ; preds = %139
  %154 = load i32*, i32** %14, align 8
  %155 = load i32, i32* %20, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %17, align 4
  %161 = call i32 @memcpy(i32* %157, i32* %159, i32 %160)
  store i32 1, i32* %21, align 4
  br label %170

162:                                              ; preds = %139
  %163 = load i32*, i32** %14, align 8
  %164 = load i32, i32* %20, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %22, align 4
  %168 = load i32, i32* %17, align 4
  %169 = call i32 @memset(i32* %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %162, %153
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %19, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %19, align 4
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %20, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %20, align 4
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %18, align 4
  %179 = sub nsw i32 %178, %177
  store i32 %179, i32* %18, align 4
  br label %135

180:                                              ; preds = %135
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 1
  store i64 %182, i64* %183, align 8
  %184 = load i32, i32* %18, align 4
  %185 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 2
  store i32 %184, i32* %185, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @ioctl(i32 %189, i32 %190, %struct.r2k_data* %23)
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %16, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %180
  %195 = load i32*, i32** %14, align 8
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 3
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %18, align 4
  %202 = call i32 @memcpy(i32* %198, i32* %200, i32 %201)
  store i32 1, i32* %21, align 4
  br label %211

203:                                              ; preds = %180
  %204 = load i32*, i32** %14, align 8
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %22, align 4
  %209 = load i32, i32* %18, align 4
  %210 = call i32 @memset(i32* %207, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %203, %194
  br label %212

212:                                              ; preds = %211, %66
  %213 = load i32, i32* %21, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = load i32, i32* %15, align 4
  br label %218

217:                                              ; preds = %212
  br label %218

218:                                              ; preds = %217, %215
  %219 = phi i32 [ %216, %215 ], [ -1, %217 ]
  store i32 %219, i32* %16, align 4
  br label %220

220:                                              ; preds = %218, %59
  %221 = getelementptr inbounds %struct.r2k_data, %struct.r2k_data* %23, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @free(i32* %222)
  br label %238

224:                                              ; preds = %31, %26, %7
  %225 = load i32*, i32** %14, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %232, label %227

227:                                              ; preds = %224
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32 (i8*)*, i32 (i8*)** %229, align 8
  %231 = call i32 %230(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %237

232:                                              ; preds = %224
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i32 (i8*)*, i32 (i8*)** %234, align 8
  %236 = call i32 %235(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %237

237:                                              ; preds = %232, %227
  br label %238

238:                                              ; preds = %237, %220
  %239 = load i32, i32* %16, align 4
  store i32 %239, i32* %8, align 4
  br label %240

240:                                              ; preds = %238, %49
  %241 = load i32, i32* %8, align 4
  ret i32 %241
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.r2k_data*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @getpagesize(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
