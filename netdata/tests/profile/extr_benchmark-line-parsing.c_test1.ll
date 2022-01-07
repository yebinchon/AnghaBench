; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_test1.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-line-parsing.c_test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@strings = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@NUMBER1 = common dso_local global i32 0, align 4
@values1 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"rss\00", align 1
@NUMBER2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"rss_huge\00", align 1
@NUMBER3 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"mapped_file\00", align 1
@NUMBER4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@NUMBER5 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@NUMBER6 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@NUMBER7 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"pgpgin\00", align 1
@NUMBER8 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"pgpgout\00", align 1
@NUMBER9 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"pgfault\00", align 1
@NUMBER10 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"pgmajfault\00", align 1
@NUMBER11 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %191, %0
  %4 = load i8**, i8*** @strings, align 8
  %5 = load i32, i32* %1, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8*, i8** %4, i64 %6
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %194

10:                                               ; preds = %3
  %11 = load i8**, i8*** @strings, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %2, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %10
  %24 = load i32, i32* @NUMBER1, align 4
  %25 = call i32 @strtoull(i32 %24, i32* null, i32 10)
  %26 = load i32*, i32** @values1, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  br label %190

30:                                               ; preds = %10
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i32, i32* @NUMBER2, align 4
  %40 = call i32 @strtoull(i32 %39, i32* null, i32 10)
  %41 = load i32*, i32** @values1, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %189

45:                                               ; preds = %30
  %46 = load i8*, i8** %2, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %45
  %54 = load i32, i32* @NUMBER3, align 4
  %55 = call i32 @strtoull(i32 %54, i32* null, i32 10)
  %56 = load i32*, i32** @values1, align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %188

60:                                               ; preds = %45
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load i32, i32* @NUMBER4, align 4
  %70 = call i32 @strtoull(i32 %69, i32* null, i32 10)
  %71 = load i32*, i32** @values1, align 8
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %187

75:                                               ; preds = %60
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %75
  %84 = load i32, i32* @NUMBER5, align 4
  %85 = call i32 @strtoull(i32 %84, i32* null, i32 10)
  %86 = load i32*, i32** @values1, align 8
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %186

90:                                               ; preds = %75
  %91 = load i8*, i8** %2, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %90
  %99 = load i32, i32* @NUMBER6, align 4
  %100 = call i32 @strtoull(i32 %99, i32* null, i32 10)
  %101 = load i32*, i32** @values1, align 8
  %102 = load i32, i32* %1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  br label %185

105:                                              ; preds = %90
  %106 = load i8*, i8** %2, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = load i32, i32* @NUMBER7, align 4
  %115 = call i32 @strtoull(i32 %114, i32* null, i32 10)
  %116 = load i32*, i32** @values1, align 8
  %117 = load i32, i32* %1, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  br label %184

120:                                              ; preds = %105
  %121 = load i8*, i8** %2, align 8
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %120
  %129 = load i32, i32* @NUMBER8, align 4
  %130 = call i32 @strtoull(i32 %129, i32* null, i32 10)
  %131 = load i32*, i32** @values1, align 8
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 %130, i32* %134, align 4
  br label %183

135:                                              ; preds = %120
  %136 = load i8*, i8** %2, align 8
  %137 = call i32 @strcmp(i8* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i64 @unlikely(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %135
  %144 = load i32, i32* @NUMBER9, align 4
  %145 = call i32 @strtoull(i32 %144, i32* null, i32 10)
  %146 = load i32*, i32** @values1, align 8
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  br label %182

150:                                              ; preds = %135
  %151 = load i8*, i8** %2, align 8
  %152 = call i32 @strcmp(i8* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  %154 = xor i1 %153, true
  %155 = zext i1 %154 to i32
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %150
  %159 = load i32, i32* @NUMBER10, align 4
  %160 = call i32 @strtoull(i32 %159, i32* null, i32 10)
  %161 = load i32*, i32** @values1, align 8
  %162 = load i32, i32* %1, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %160, i32* %164, align 4
  br label %181

165:                                              ; preds = %150
  %166 = load i8*, i8** %2, align 8
  %167 = call i32 @strcmp(i8* %166, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i64 @unlikely(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %165
  %174 = load i32, i32* @NUMBER11, align 4
  %175 = call i32 @strtoull(i32 %174, i32* null, i32 10)
  %176 = load i32*, i32** @values1, align 8
  %177 = load i32, i32* %1, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  store i32 %175, i32* %179, align 4
  br label %180

180:                                              ; preds = %173, %165
  br label %181

181:                                              ; preds = %180, %158
  br label %182

182:                                              ; preds = %181, %143
  br label %183

183:                                              ; preds = %182, %128
  br label %184

184:                                              ; preds = %183, %113
  br label %185

185:                                              ; preds = %184, %98
  br label %186

186:                                              ; preds = %185, %83
  br label %187

187:                                              ; preds = %186, %68
  br label %188

188:                                              ; preds = %187, %53
  br label %189

189:                                              ; preds = %188, %38
  br label %190

190:                                              ; preds = %189, %23
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %1, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %1, align 4
  br label %3

194:                                              ; preds = %3
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtoull(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
