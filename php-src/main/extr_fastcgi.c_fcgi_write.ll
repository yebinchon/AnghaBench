; ModuleID = '/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_write.c'
source_filename = "/home/carl/AnghaBench/php-src/main/extr_fastcgi.c_fcgi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fcgi_write(%struct.TYPE_8__* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %273

17:                                               ; preds = %4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = call i32 @close_packet(%struct.TYPE_8__* %31)
  br label %33

33:                                               ; preds = %30, %22, %17
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = sub i64 4, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = icmp ne %struct.TYPE_9__* %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %33
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = sub i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %48
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = icmp ne %struct.TYPE_9__* %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = call i32 @open_packet(%struct.TYPE_8__* %67, i64 %68)
  br label %70

70:                                               ; preds = %66, %61
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @memcpy(i32 %73, i8* %74, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %271

82:                                               ; preds = %57
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = sub nsw i32 %83, %84
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %143

87:                                               ; preds = %82
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = icmp ne %struct.TYPE_9__* %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @open_packet(%struct.TYPE_8__* %93, i64 %94)
  br label %96

96:                                               ; preds = %92, %87
  %97 = load i32, i32* %10, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %96
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @memcpy(i32 %102, i8* %103, i32 %104)
  %106 = load i32, i32* %10, align 4
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %99, %96
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %113 = call i32 @fcgi_flush(%struct.TYPE_8__* %112, i32 0)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %111
  store i32 -1, i32* %5, align 4
  br label %273

116:                                              ; preds = %111
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %116
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @open_packet(%struct.TYPE_8__* %121, i64 %122)
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = sub nsw i32 %131, %132
  %134 = call i32 @memcpy(i32 %126, i8* %130, i32 %133)
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %10, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %120, %116
  br label %270

143:                                              ; preds = %82
  store i32 0, i32* %12, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %145 = call i32 @close_packet(%struct.TYPE_8__* %144)
  br label %146

146:                                              ; preds = %180, %143
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %12, align 4
  %149 = sub nsw i32 %147, %148
  %150 = icmp sgt i32 %149, 65535
  br i1 %150, label %151, label %183

151:                                              ; preds = %146
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %153 = load i64, i64* %7, align 8
  %154 = call i32 @open_packet(%struct.TYPE_8__* %152, i64 %153)
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = load i64, i64* %7, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @fcgi_make_header(%struct.TYPE_9__* %157, i64 %158, i32 %161, i32 65528)
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %164, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %166 = call i32 @fcgi_flush(%struct.TYPE_8__* %165, i32 0)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %151
  store i32 -1, i32* %5, align 4
  br label %273

169:                                              ; preds = %151
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = call i32 @safe_write(%struct.TYPE_8__* %170, i8* %174, i32 65528)
  %176 = icmp ne i32 %175, 65528
  br i1 %176, label %177, label %180

177:                                              ; preds = %169
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  store i64 0, i64* %179, align 8
  store i32 -1, i32* %5, align 4
  br label %273

180:                                              ; preds = %169
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 65528
  store i32 %182, i32* %12, align 4
  br label %146

183:                                              ; preds = %146
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %12, align 4
  %186 = sub nsw i32 %184, %185
  %187 = add nsw i32 %186, 7
  %188 = and i32 %187, -8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %12, align 4
  %191 = sub nsw i32 %189, %190
  %192 = sub nsw i32 %188, %191
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %183
  %196 = load i32, i32* %13, align 4
  %197 = sub nsw i32 8, %196
  br label %199

198:                                              ; preds = %183
  br label %199

199:                                              ; preds = %198, %195
  %200 = phi i32 [ %197, %195 ], [ 0, %198 ]
  store i32 %200, i32* %11, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %202 = load i64, i64* %7, align 8
  %203 = call i32 @open_packet(%struct.TYPE_8__* %201, i64 %202)
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = load i64, i64* %7, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* %12, align 4
  %213 = sub nsw i32 %211, %212
  %214 = load i32, i32* %11, align 4
  %215 = sub nsw i32 %213, %214
  %216 = call i32 @fcgi_make_header(%struct.TYPE_9__* %206, i64 %207, i32 %210, i32 %215)
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %218, align 8
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %220 = call i32 @fcgi_flush(%struct.TYPE_8__* %219, i32 0)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %199
  store i32 -1, i32* %5, align 4
  br label %273

223:                                              ; preds = %199
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %225 = load i8*, i8** %8, align 8
  %226 = load i32, i32* %12, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %12, align 4
  %231 = sub nsw i32 %229, %230
  %232 = load i32, i32* %11, align 4
  %233 = sub nsw i32 %231, %232
  %234 = call i32 @safe_write(%struct.TYPE_8__* %224, i8* %228, i32 %233)
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %12, align 4
  %237 = sub nsw i32 %235, %236
  %238 = load i32, i32* %11, align 4
  %239 = sub nsw i32 %237, %238
  %240 = icmp ne i32 %234, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %223
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  store i64 0, i64* %243, align 8
  store i32 -1, i32* %5, align 4
  br label %273

244:                                              ; preds = %223
  %245 = load i32, i32* %13, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %269

247:                                              ; preds = %244
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %249 = load i64, i64* %7, align 8
  %250 = call i32 @open_packet(%struct.TYPE_8__* %248, i64 %249)
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i8*, i8** %8, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = sub i64 0, %259
  %261 = getelementptr inbounds i8, i8* %257, i64 %260
  %262 = load i32, i32* %11, align 4
  %263 = call i32 @memcpy(i32 %253, i8* %261, i32 %262)
  %264 = load i32, i32* %11, align 4
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = add nsw i32 %267, %264
  store i32 %268, i32* %266, align 8
  br label %269

269:                                              ; preds = %247, %244
  br label %270

270:                                              ; preds = %269, %142
  br label %271

271:                                              ; preds = %270, %70
  %272 = load i32, i32* %9, align 4
  store i32 %272, i32* %5, align 4
  br label %273

273:                                              ; preds = %271, %241, %222, %177, %168, %115, %16
  %274 = load i32, i32* %5, align 4
  ret i32 %274
}

declare dso_local i32 @close_packet(%struct.TYPE_8__*) #1

declare dso_local i32 @open_packet(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @fcgi_flush(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @fcgi_make_header(%struct.TYPE_9__*, i64, i32, i32) #1

declare dso_local i32 @safe_write(%struct.TYPE_8__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
