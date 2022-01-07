; ModuleID = '/home/carl/AnghaBench/openssl/crypto/err/extr_err.c_get_error_values.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/err/extr_err.c_get_error_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i64*, i8**, i32*, i8**, i32*, i8** }

@ERR_FLAG_CLEAR = common dso_local global i32 0, align 4
@ERR_NUM_ERRORS = common dso_local global i32 0, align 4
@EV_PEEK_LAST = common dso_local global i64 0, align 8
@EV_POP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8**, i32*, i8**, i8**, i32*)* @get_error_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_error_values(i64 %0, i8** %1, i32* %2, i8** %3, i8** %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8** %3, i8*** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = call %struct.TYPE_5__* (...) @err_get_state_int()
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %15, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %231

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %82, %61, %21
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ERR_FLAG_CLEAR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %30
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @err_clear(%struct.TYPE_5__* %44, i32 %47, i32 0)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %43
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  br label %61

58:                                               ; preds = %43
  %59 = load i32, i32* @ERR_NUM_ERRORS, align 4
  %60 = sub nsw i32 %59, 1
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i32 [ %57, %53 ], [ %60, %58 ]
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %22

65:                                               ; preds = %30
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* @ERR_NUM_ERRORS, align 4
  %71 = srem i32 %69, %70
  store i32 %71, i32* %14, align 4
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ERR_FLAG_CLEAR, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %65
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @err_clear(%struct.TYPE_5__* %86, i32 %89, i32 0)
  br label %22

91:                                               ; preds = %65
  br label %92

92:                                               ; preds = %91, %22
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i64 0, i64* %7, align 8
  br label %231

101:                                              ; preds = %92
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* @EV_PEEK_LAST, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %14, align 4
  br label %116

109:                                              ; preds = %101
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* @ERR_NUM_ERRORS, align 4
  %115 = srem i32 %113, %114
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %109, %105
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %16, align 8
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* @EV_POP, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %116
  %128 = load i32, i32* %14, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  %133 = load i64*, i64** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %127, %116
  %138 = load i8**, i8*** %9, align 8
  %139 = icmp ne i8** %138, null
  br i1 %139, label %140, label %155

140:                                              ; preds = %137
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 4
  %143 = load i8**, i8*** %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = load i8**, i8*** %9, align 8
  store i8* %147, i8** %148, align 8
  %149 = load i8**, i8*** %9, align 8
  %150 = load i8*, i8** %149, align 8
  %151 = icmp eq i8* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %140
  %153 = load i8**, i8*** %9, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %153, align 8
  br label %154

154:                                              ; preds = %152, %140
  br label %155

155:                                              ; preds = %154, %137
  %156 = load i32*, i32** %10, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %167

158:                                              ; preds = %155
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 5
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  br label %167

167:                                              ; preds = %158, %155
  %168 = load i8**, i8*** %11, align 8
  %169 = icmp ne i8** %168, null
  br i1 %169, label %170, label %185

170:                                              ; preds = %167
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 6
  %173 = load i8**, i8*** %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = load i8**, i8*** %11, align 8
  store i8* %177, i8** %178, align 8
  %179 = load i8**, i8*** %11, align 8
  %180 = load i8*, i8** %179, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %170
  %183 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %183, align 8
  br label %184

184:                                              ; preds = %182, %170
  br label %185

185:                                              ; preds = %184, %167
  %186 = load i32*, i32** %13, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %197

188:                                              ; preds = %185
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 7
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %14, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %13, align 8
  store i32 %195, i32* %196, align 4
  br label %197

197:                                              ; preds = %188, %185
  %198 = load i8**, i8*** %12, align 8
  %199 = icmp eq i8** %198, null
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = load i64, i64* %8, align 8
  %202 = load i64, i64* @EV_POP, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %200
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %206 = load i32, i32* %14, align 4
  %207 = call i32 @err_clear_data(%struct.TYPE_5__* %205, i32 %206, i32 0)
  br label %208

208:                                              ; preds = %204, %200
  br label %229

209:                                              ; preds = %197
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 8
  %212 = load i8**, i8*** %211, align 8
  %213 = load i32, i32* %14, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %212, i64 %214
  %216 = load i8*, i8** %215, align 8
  %217 = load i8**, i8*** %12, align 8
  store i8* %216, i8** %217, align 8
  %218 = load i8**, i8*** %12, align 8
  %219 = load i8*, i8** %218, align 8
  %220 = icmp eq i8* %219, null
  br i1 %220, label %221, label %228

221:                                              ; preds = %209
  %222 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %222, align 8
  %223 = load i32*, i32** %13, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %221
  %226 = load i32*, i32** %13, align 8
  store i32 0, i32* %226, align 4
  br label %227

227:                                              ; preds = %225, %221
  br label %228

228:                                              ; preds = %227, %209
  br label %229

229:                                              ; preds = %228, %208
  %230 = load i64, i64* %16, align 8
  store i64 %230, i64* %7, align 8
  br label %231

231:                                              ; preds = %229, %100, %20
  %232 = load i64, i64* %7, align 8
  ret i64 %232
}

declare dso_local %struct.TYPE_5__* @err_get_state_int(...) #1

declare dso_local i32 @err_clear(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @err_clear_data(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
