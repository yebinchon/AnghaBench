; ModuleID = '/home/carl/AnghaBench/lz4/tests/extr_fullbench.c_main.c'
source_filename = "/home/carl/AnghaBench/lz4/tests/extr_fullbench.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WELCOME_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"--no-prompt\00", align 1
@g_noPrompt = common dso_local global i32 0, align 4
@g_decompressionTest = common dso_local global i32 0, align 4
@g_compressionAlgo = common dso_local global i32 0, align 4
@g_compressionTest = common dso_local global i32 0, align 4
@g_decompressionAlgo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 2, i32* %7, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %17 = load i32, i32* @WELCOME_MESSAGE, align 4
  %18 = call i32 @DISPLAY(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @badusage(i8* %22)
  store i32 1, i32* %3, align 4
  br label %211

24:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %25

25:                                               ; preds = %193, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %196

29:                                               ; preds = %25
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %193

38:                                               ; preds = %29
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 1, i32* @g_noPrompt, align 4
  br label %193

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 45
  br i1 %48, label %49, label %186

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %184, %49
  %51 = load i8*, i8** %10, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %185

56:                                               ; preds = %50
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  switch i32 %62, label %181 [
    i32 99, label %63
    i32 100, label %91
    i32 104, label %119
    i32 72, label %119
    i32 66, label %123
    i32 105, label %156
    i32 112, label %179
  ]

63:                                               ; preds = %56
  store i32 0, i32* @g_decompressionTest, align 4
  br label %64

64:                                               ; preds = %78, %63
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sge i32 %68, 48
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp sle i32 %74, 57
  br label %76

76:                                               ; preds = %70, %64
  %77 = phi i1 [ false, %64 ], [ %75, %70 ]
  br i1 %77, label %78, label %90

78:                                               ; preds = %76
  %79 = load i32, i32* @g_compressionAlgo, align 4
  %80 = mul nsw i32 %79, 10
  store i32 %80, i32* @g_compressionAlgo, align 4
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = sub nsw i32 %84, 48
  %86 = load i32, i32* @g_compressionAlgo, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* @g_compressionAlgo, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %10, align 8
  br label %64

90:                                               ; preds = %76
  br label %184

91:                                               ; preds = %56
  store i32 0, i32* @g_compressionTest, align 4
  br label %92

92:                                               ; preds = %106, %91
  %93 = load i8*, i8** %10, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp sge i32 %96, 48
  br i1 %97, label %98, label %104

98:                                               ; preds = %92
  %99 = load i8*, i8** %10, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp sle i32 %102, 57
  br label %104

104:                                              ; preds = %98, %92
  %105 = phi i1 [ false, %92 ], [ %103, %98 ]
  br i1 %105, label %106, label %118

106:                                              ; preds = %104
  %107 = load i32, i32* @g_decompressionAlgo, align 4
  %108 = mul nsw i32 %107, 10
  store i32 %108, i32* @g_decompressionAlgo, align 4
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = sub nsw i32 %112, 48
  %114 = load i32, i32* @g_decompressionAlgo, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* @g_decompressionAlgo, align 4
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %10, align 8
  br label %92

118:                                              ; preds = %104
  br label %184

119:                                              ; preds = %56, %56
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @usage(i8* %120)
  %122 = call i32 (...) @usage_advanced()
  store i32 0, i32* %3, align 4
  br label %211

123:                                              ; preds = %56
  br label %124

124:                                              ; preds = %153, %123
  %125 = load i8*, i8** %10, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %154

130:                                              ; preds = %124
  %131 = load i8*, i8** %10, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  switch i32 %134, label %152 [
    i32 52, label %135
    i32 53, label %135
    i32 54, label %135
    i32 55, label %135
    i32 68, label %149
  ]

135:                                              ; preds = %130, %130, %130, %130
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = sub nsw i32 %139, 48
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = mul nsw i32 2, %141
  %143 = add nsw i32 8, %142
  %144 = shl i32 1, %143
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @BMK_setBlocksize(i32 %145)
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %10, align 8
  br label %153

149:                                              ; preds = %130
  %150 = load i8*, i8** %10, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %10, align 8
  br label %153

152:                                              ; preds = %130
  br label %155

153:                                              ; preds = %149, %135
  br label %124

154:                                              ; preds = %124
  br label %155

155:                                              ; preds = %154, %152
  br label %184

156:                                              ; preds = %56
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 1
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp sge i32 %160, 48
  br i1 %161, label %162, label %178

162:                                              ; preds = %156
  %163 = load i8*, i8** %10, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp sle i32 %166, 57
  br i1 %167, label %168, label %178

168:                                              ; preds = %162
  %169 = load i8*, i8** %10, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = sub nsw i32 %172, 48
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i32 @BMK_setNbIterations(i32 %174)
  %176 = load i8*, i8** %10, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %10, align 8
  br label %178

178:                                              ; preds = %168, %162, %156
  br label %184

179:                                              ; preds = %56
  %180 = call i32 (...) @BMK_setPause()
  br label %184

181:                                              ; preds = %56
  %182 = load i8*, i8** %8, align 8
  %183 = call i32 @badusage(i8* %182)
  store i32 1, i32* %3, align 4
  br label %211

184:                                              ; preds = %179, %178, %155, %118, %90
  br label %50

185:                                              ; preds = %50
  br label %193

186:                                              ; preds = %43
  %187 = load i8*, i8** %9, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i8*, i8** %10, align 8
  store i8* %190, i8** %9, align 8
  %191 = load i32, i32* %6, align 4
  store i32 %191, i32* %7, align 4
  br label %193

192:                                              ; preds = %186
  br label %193

193:                                              ; preds = %192, %189, %185, %42, %37
  %194 = load i32, i32* %6, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %6, align 4
  br label %25

196:                                              ; preds = %25
  %197 = load i8*, i8** %9, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %202, label %199

199:                                              ; preds = %196
  %200 = load i8*, i8** %8, align 8
  %201 = call i32 @badusage(i8* %200)
  store i32 1, i32* %3, align 4
  br label %211

202:                                              ; preds = %196
  %203 = load i8**, i8*** %5, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i32, i32* %4, align 4
  %208 = load i32, i32* %7, align 4
  %209 = sub nsw i32 %207, %208
  %210 = call i32 @fullSpeedBench(i8** %206, i32 %209)
  store i32 %210, i32* %3, align 4
  br label %211

211:                                              ; preds = %202, %199, %181, %119, %21
  %212 = load i32, i32* %3, align 4
  ret i32 %212
}

declare dso_local i32 @DISPLAY(i32) #1

declare dso_local i32 @badusage(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @usage_advanced(...) #1

declare dso_local i32 @BMK_setBlocksize(i32) #1

declare dso_local i32 @BMK_setNbIterations(i32) #1

declare dso_local i32 @BMK_setPause(...) #1

declare dso_local i32 @fullSpeedBench(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
