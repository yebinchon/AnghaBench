; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQescapeInternal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-exec.c_PQescapeInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"incomplete multibyte character\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i8*, i64, i32)* @PQescapeInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @PQescapeInternal(%struct.TYPE_3__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 34, i32 39
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %17, align 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %246

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  store i8* %29, i8** %10, align 8
  br label %30

30:                                               ; preds = %103, %28
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %30
  %44 = phi i1 [ false, %30 ], [ %42, %38 ]
  br i1 %44, label %45, label %106

45:                                               ; preds = %43
  %46 = load i8*, i8** %10, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* %17, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %13, align 4
  br label %102

55:                                               ; preds = %45
  %56 = load i8*, i8** %10, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 92
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %101

63:                                               ; preds = %55
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @IS_HIGHBIT_SET(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %100

68:                                               ; preds = %63
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @pg_encoding_mblen(i32 %71, i8* %72)
  store i32 %73, i32* %18, align 4
  %74 = load i8*, i8** %10, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load i64, i64* %8, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %68
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %18, align 4
  %87 = call i32* @memchr(i8* %85, i32 0, i32 %86)
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %84, %68
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = call i32 @libpq_gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %93 = call i32 @printfPQExpBuffer(i32* %91, i32 %92)
  store i8* null, i8** %5, align 8
  br label %246

94:                                               ; preds = %84
  %95 = load i32, i32* %18, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load i8*, i8** %10, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %10, align 8
  br label %100

100:                                              ; preds = %94, %63
  br label %101

101:                                              ; preds = %100, %60
  br label %102

102:                                              ; preds = %101, %52
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %10, align 8
  br label %30

106:                                              ; preds = %43
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %113, %114
  %116 = add nsw i32 %115, 3
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %106
  %120 = load i32, i32* %14, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 2
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %16, align 4
  br label %127

127:                                              ; preds = %122, %119, %106
  %128 = load i32, i32* %16, align 4
  %129 = call i64 @malloc(i32 %128)
  %130 = inttoptr i64 %129 to i8*
  store i8* %130, i8** %12, align 8
  store i8* %130, i8** %11, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %127
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = call i32 @libpq_gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %137 = call i32 @printfPQExpBuffer(i32* %135, i32 %136)
  store i8* null, i8** %5, align 8
  br label %246

138:                                              ; preds = %127
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %14, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i8*, i8** %12, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %12, align 8
  store i8 32, i8* %145, align 1
  %147 = load i8*, i8** %12, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %12, align 8
  store i8 69, i8* %147, align 1
  br label %149

149:                                              ; preds = %144, %141, %138
  %150 = load i8, i8* %17, align 1
  %151 = load i8*, i8** %12, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %12, align 8
  store i8 %150, i8* %151, align 1
  %153 = load i32, i32* %13, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %170

155:                                              ; preds = %149
  %156 = load i32, i32* %14, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %158, %155
  %162 = load i8*, i8** %12, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @memcpy(i8* %162, i8* %163, i32 %164)
  %166 = load i32, i32* %15, align 4
  %167 = load i8*, i8** %12, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8* %169, i8** %12, align 8
  br label %240

170:                                              ; preds = %158, %149
  %171 = load i8*, i8** %7, align 8
  store i8* %171, i8** %10, align 8
  br label %172

172:                                              ; preds = %236, %170
  %173 = load i8*, i8** %10, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = icmp slt i64 %177, %179
  br i1 %180, label %181, label %239

181:                                              ; preds = %172
  %182 = load i8*, i8** %10, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = load i8, i8* %17, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %184, %186
  br i1 %187, label %196, label %188

188:                                              ; preds = %181
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %205, label %191

191:                                              ; preds = %188
  %192 = load i8*, i8** %10, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 92
  br i1 %195, label %196, label %205

196:                                              ; preds = %191, %181
  %197 = load i8*, i8** %10, align 8
  %198 = load i8, i8* %197, align 1
  %199 = load i8*, i8** %12, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %12, align 8
  store i8 %198, i8* %199, align 1
  %201 = load i8*, i8** %10, align 8
  %202 = load i8, i8* %201, align 1
  %203 = load i8*, i8** %12, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %12, align 8
  store i8 %202, i8* %203, align 1
  br label %235

205:                                              ; preds = %191, %188
  %206 = load i8*, i8** %10, align 8
  %207 = load i8, i8* %206, align 1
  %208 = call i64 @IS_HIGHBIT_SET(i8 signext %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %205
  %211 = load i8*, i8** %10, align 8
  %212 = load i8, i8* %211, align 1
  %213 = load i8*, i8** %12, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %12, align 8
  store i8 %212, i8* %213, align 1
  br label %234

215:                                              ; preds = %205
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i8*, i8** %10, align 8
  %220 = call i32 @pg_encoding_mblen(i32 %218, i8* %219)
  store i32 %220, i32* %19, align 4
  br label %221

221:                                              ; preds = %215, %230
  %222 = load i8*, i8** %10, align 8
  %223 = load i8, i8* %222, align 1
  %224 = load i8*, i8** %12, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %12, align 8
  store i8 %223, i8* %224, align 1
  %226 = load i32, i32* %19, align 4
  %227 = add nsw i32 %226, -1
  store i32 %227, i32* %19, align 4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %221
  br label %233

230:                                              ; preds = %221
  %231 = load i8*, i8** %10, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %10, align 8
  br label %221

233:                                              ; preds = %229
  br label %234

234:                                              ; preds = %233, %210
  br label %235

235:                                              ; preds = %234, %196
  br label %236

236:                                              ; preds = %235
  %237 = load i8*, i8** %10, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %10, align 8
  br label %172

239:                                              ; preds = %172
  br label %240

240:                                              ; preds = %239, %161
  %241 = load i8, i8* %17, align 1
  %242 = load i8*, i8** %12, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %12, align 8
  store i8 %241, i8* %242, align 1
  %244 = load i8*, i8** %12, align 8
  store i8 0, i8* %244, align 1
  %245 = load i8*, i8** %11, align 8
  store i8* %245, i8** %5, align 8
  br label %246

246:                                              ; preds = %240, %133, %89, %27
  %247 = load i8*, i8** %5, align 8
  ret i8* %247
}

declare dso_local i64 @IS_HIGHBIT_SET(i8 signext) #1

declare dso_local i32 @pg_encoding_mblen(i32, i8*) #1

declare dso_local i32* @memchr(i8*, i32, i32) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
