; ModuleID = '/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-value-pairs.c_test1.c'
source_filename = "/home/carl/AnghaBench/netdata/tests/profile/extr_benchmark-value-pairs.c_test1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@pairs = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@values1 = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"rss\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rss_huge\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"mapped_file\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"dirty\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"swap\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"pgpgin\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"pgpgout\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"pgfault\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"pgmajfault\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %200, %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pairs, align 8
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %203

12:                                               ; preds = %4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pairs, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %2, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pairs, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %3, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %12
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strtoull(i8* %33, i32* null, i32 10)
  %35 = load i32*, i32** @values1, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %199

39:                                               ; preds = %12
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @strtoull(i8* %48, i32* null, i32 10)
  %50 = load i32*, i32** @values1, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  br label %198

54:                                               ; preds = %39
  %55 = load i8*, i8** %2, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @strtoull(i8* %63, i32* null, i32 10)
  %65 = load i32*, i32** @values1, align 8
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  br label %197

69:                                               ; preds = %54
  %70 = load i8*, i8** %2, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @strtoull(i8* %78, i32* null, i32 10)
  %80 = load i32*, i32** @values1, align 8
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  br label %196

84:                                               ; preds = %69
  %85 = load i8*, i8** %2, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %84
  %93 = load i8*, i8** %3, align 8
  %94 = call i32 @strtoull(i8* %93, i32* null, i32 10)
  %95 = load i32*, i32** @values1, align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  br label %195

99:                                               ; preds = %84
  %100 = load i8*, i8** %2, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load i8*, i8** %3, align 8
  %109 = call i32 @strtoull(i8* %108, i32* null, i32 10)
  %110 = load i32*, i32** @values1, align 8
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %194

114:                                              ; preds = %99
  %115 = load i8*, i8** %2, align 8
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %114
  %123 = load i8*, i8** %3, align 8
  %124 = call i32 @strtoull(i8* %123, i32* null, i32 10)
  %125 = load i32*, i32** @values1, align 8
  %126 = load i32, i32* %1, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %124, i32* %128, align 4
  br label %193

129:                                              ; preds = %114
  %130 = load i8*, i8** %2, align 8
  %131 = call i32 @strcmp(i8* %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  %138 = load i8*, i8** %3, align 8
  %139 = call i32 @strtoull(i8* %138, i32* null, i32 10)
  %140 = load i32*, i32** @values1, align 8
  %141 = load i32, i32* %1, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %139, i32* %143, align 4
  br label %192

144:                                              ; preds = %129
  %145 = load i8*, i8** %2, align 8
  %146 = call i32 @strcmp(i8* %145, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %144
  %153 = load i8*, i8** %3, align 8
  %154 = call i32 @strtoull(i8* %153, i32* null, i32 10)
  %155 = load i32*, i32** @values1, align 8
  %156 = load i32, i32* %1, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %154, i32* %158, align 4
  br label %191

159:                                              ; preds = %144
  %160 = load i8*, i8** %2, align 8
  %161 = call i32 @strcmp(i8* %160, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = call i64 @unlikely(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %159
  %168 = load i8*, i8** %3, align 8
  %169 = call i32 @strtoull(i8* %168, i32* null, i32 10)
  %170 = load i32*, i32** @values1, align 8
  %171 = load i32, i32* %1, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %169, i32* %173, align 4
  br label %190

174:                                              ; preds = %159
  %175 = load i8*, i8** %2, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = call i64 @unlikely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %174
  %183 = load i8*, i8** %3, align 8
  %184 = call i32 @strtoull(i8* %183, i32* null, i32 10)
  %185 = load i32*, i32** @values1, align 8
  %186 = load i32, i32* %1, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %184, i32* %188, align 4
  br label %189

189:                                              ; preds = %182, %174
  br label %190

190:                                              ; preds = %189, %167
  br label %191

191:                                              ; preds = %190, %152
  br label %192

192:                                              ; preds = %191, %137
  br label %193

193:                                              ; preds = %192, %122
  br label %194

194:                                              ; preds = %193, %107
  br label %195

195:                                              ; preds = %194, %92
  br label %196

196:                                              ; preds = %195, %77
  br label %197

197:                                              ; preds = %196, %62
  br label %198

198:                                              ; preds = %197, %47
  br label %199

199:                                              ; preds = %198, %32
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %1, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %1, align 4
  br label %4

203:                                              ; preds = %4
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
