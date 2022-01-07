; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/at/extr_at.c_ParseTime.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/at/extr_at.c_ParseTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@UNICODE_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i32] [i32 97, i32 0], align 4
@.str.1 = private unnamed_addr constant [3 x i32] [i32 97, i32 109, i32 0], align 4
@.str.2 = private unnamed_addr constant [2 x i32] [i32 112, i32 0], align 4
@.str.3 = private unnamed_addr constant [3 x i32] [i32 112, i32 109, i32 0], align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @ParseTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseTime(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %4, align 4
  br label %225

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  store i32* %21, i32** %11, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %38, %20
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @iswdigit(i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  br i1 %32, label %33, label %48

33:                                               ; preds = %31
  %34 = load i32, i32* %15, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %4, align 4
  br label %225

38:                                               ; preds = %33
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %42
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %11, align 8
  br label %22

48:                                               ; preds = %31
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %50
  store i32 0, i32* %51, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 58
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %4, align 4
  br label %225

57:                                               ; preds = %48
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %11, align 8
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %76, %57
  %61 = load i32*, i32** %11, align 8
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @iswdigit(i32 %66)
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %64, %60
  %70 = phi i1 [ false, %60 ], [ %68, %64 ]
  br i1 %70, label %71, label %86

71:                                               ; preds = %69
  %72 = load i32, i32* %15, align 4
  %73 = icmp sge i32 %72, 2
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %4, align 4
  br label %225

76:                                               ; preds = %71
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %80
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %15, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %11, align 8
  br label %60

86:                                               ; preds = %69
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %88
  store i32 0, i32* %89, align 4
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %112, %86
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  %96 = icmp sge i32 %95, 4
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %4, align 4
  br label %225

99:                                               ; preds = %94
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @iswspace(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %99
  %105 = load i32*, i32** %11, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %108
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %104, %99
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %11, align 8
  br label %90

115:                                              ; preds = %90
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 %117
  store i32 0, i32* %118, align 4
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %120 = call i32 @wcstoul(i32* %119, i32** %12, i32 10)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %115
  %124 = load i32*, i32** %12, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @UNICODE_NULL, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* @FALSE, align 4
  store i32 %129, i32* %4, align 4
  br label %225

130:                                              ; preds = %123, %115
  %131 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %132 = call i32 @wcstoul(i32* %131, i32** %12, i32 10)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @UNICODE_NULL, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %4, align 4
  br label %225

142:                                              ; preds = %135, %130
  %143 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %144 = call i64 @wcslen(i32* %143)
  %145 = icmp sgt i64 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %142
  %147 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %148 = call i64 @_wcsicmp(i32* %147, i8* bitcast ([2 x i32]* @.str to i8*))
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %146
  %151 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %152 = call i64 @_wcsicmp(i32* %151, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %150
  %155 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %156 = call i64 @_wcsicmp(i32* %155, i8* bitcast ([2 x i32]* @.str.2 to i8*))
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %160 = call i64 @_wcsicmp(i32* %159, i8* bitcast ([3 x i32]* @.str.3 to i8*))
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, i32* @FALSE, align 4
  store i32 %163, i32* %4, align 4
  br label %225

164:                                              ; preds = %158, %154, %150, %146, %142
  %165 = load i32, i32* %14, align 4
  %166 = icmp sgt i32 %165, 59
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* @FALSE, align 4
  store i32 %168, i32* %4, align 4
  br label %225

169:                                              ; preds = %164
  %170 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %171 = call i64 @wcslen(i32* %170)
  %172 = icmp sgt i64 %171, 0
  br i1 %172, label %173, label %205

173:                                              ; preds = %169
  %174 = load i32, i32* %13, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %13, align 4
  %178 = icmp sgt i32 %177, 12
  br i1 %178, label %179, label %181

179:                                              ; preds = %176, %173
  %180 = load i32, i32* @FALSE, align 4
  store i32 %180, i32* %4, align 4
  br label %225

181:                                              ; preds = %176
  %182 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %183 = call i64 @_wcsicmp(i32* %182, i8* bitcast ([2 x i32]* @.str to i8*))
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %187 = call i64 @_wcsicmp(i32* %186, i8* bitcast ([3 x i32]* @.str.1 to i8*))
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %185, %181
  %190 = load i32, i32* %13, align 4
  %191 = icmp eq i32 %190, 12
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 0, i32* %13, align 4
  br label %193

193:                                              ; preds = %192, %189
  br label %204

194:                                              ; preds = %185
  %195 = load i32, i32* %13, align 4
  %196 = icmp sge i32 %195, 1
  br i1 %196, label %197, label %203

197:                                              ; preds = %194
  %198 = load i32, i32* %13, align 4
  %199 = icmp sle i32 %198, 11
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* %13, align 4
  %202 = add nsw i32 %201, 12
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %200, %197, %194
  br label %204

204:                                              ; preds = %203, %193
  br label %211

205:                                              ; preds = %169
  %206 = load i32, i32* %13, align 4
  %207 = icmp sgt i32 %206, 23
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i32, i32* @FALSE, align 4
  store i32 %209, i32* %4, align 4
  br label %225

210:                                              ; preds = %205
  br label %211

211:                                              ; preds = %210, %204
  %212 = load i32*, i32** %6, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i32, i32* %13, align 4
  %216 = load i32*, i32** %6, align 8
  store i32 %215, i32* %216, align 4
  br label %217

217:                                              ; preds = %214, %211
  %218 = load i32*, i32** %7, align 8
  %219 = icmp ne i32* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* %14, align 4
  %222 = load i32*, i32** %7, align 8
  store i32 %221, i32* %222, align 4
  br label %223

223:                                              ; preds = %220, %217
  %224 = load i32, i32* @TRUE, align 4
  store i32 %224, i32* %4, align 4
  br label %225

225:                                              ; preds = %223, %208, %179, %167, %162, %140, %128, %97, %74, %55, %36, %18
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i64 @iswdigit(i32) #1

declare dso_local i32 @iswspace(i32) #1

declare dso_local i32 @wcstoul(i32*, i32**, i32) #1

declare dso_local i64 @wcslen(i32*) #1

declare dso_local i64 @_wcsicmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
