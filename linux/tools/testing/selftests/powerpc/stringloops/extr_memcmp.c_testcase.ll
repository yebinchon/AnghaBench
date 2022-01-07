; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/stringloops/extr_memcmp.c_testcase.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/stringloops/extr_memcmp.c_testcase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LARGE_SIZE = common dso_local global i64 0, align 8
@SIZE = common dso_local global i64 0, align 8
@MAX_OFFSET_DIFF_S1_S2 = common dso_local global i64 0, align 8
@LARGE_ITERATIONS = common dso_local global i32 0, align 4
@ITERATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"memalign\00", align 1
@LARGE_MAX_OFFSET = common dso_local global i64 0, align 8
@LARGE_SIZE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @testcase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testcase(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i64, i64* @LARGE_SIZE, align 8
  br label %23

21:                                               ; preds = %1
  %22 = load i64, i64* @SIZE, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @MAX_OFFSET_DIFF_S1_S2, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %7, align 8
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @LARGE_ITERATIONS, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @ITERATIONS, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %8, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i8* @memalign(i32 128, i64 %36)
  store i8* %37, i8** %3, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %34
  %44 = load i64, i64* %7, align 8
  %45 = call i8* @memalign(i32 128, i64 %44)
  store i8* %45, i8** %4, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = call i32 @perror(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %50 = call i32 @exit(i32 1) #3
  unreachable

51:                                               ; preds = %43
  %52 = call i32 @time(i32 0)
  %53 = call i32 @srandom(i32 %52)
  store i64 0, i64* %5, align 8
  br label %54

54:                                               ; preds = %118, %51
  %55 = load i64, i64* %5, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %121

59:                                               ; preds = %54
  %60 = load i8*, i8** %3, align 8
  store i8* %60, i8** %11, align 8
  %61 = load i8*, i8** %4, align 8
  store i8* %61, i8** %12, align 8
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %72, %59
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = call i32 (...) @random()
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %3, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 %68, i8* %71, align 1
  br label %72

72:                                               ; preds = %66
  %73 = load i64, i64* %9, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %9, align 8
  br label %62

75:                                               ; preds = %62
  %76 = call i32 (...) @random()
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* @MAX_OFFSET_DIFF_S1_S2, align 8
  %79 = urem i64 %77, %78
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8* %81, i8** %11, align 8
  %82 = call i32 (...) @random()
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* @MAX_OFFSET_DIFF_S1_S2, align 8
  %85 = urem i64 %83, %84
  %86 = load i8*, i8** %12, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %12, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @memcpy(i8* %88, i8* %89, i64 %90)
  %92 = call i32 (...) @random()
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %6, align 8
  %95 = urem i64 %93, %94
  store i64 %95, i64* %10, align 8
  %96 = call i32 (...) @random()
  %97 = and i32 %96, 255
  %98 = trunc i32 %97 to i8
  %99 = load i8*, i8** %12, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 %98, i8* %101, align 1
  %102 = load i32, i32* %2, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %75
  %105 = load i8*, i8** %11, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i64, i64* @LARGE_MAX_OFFSET, align 8
  %108 = load i32, i32* @LARGE_SIZE_START, align 4
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @test_one(i8* %105, i8* %106, i64 %107, i32 %108, i64 %109)
  br label %117

111:                                              ; preds = %75
  %112 = load i8*, i8** %11, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = load i64, i64* @SIZE, align 8
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @test_one(i8* %112, i8* %113, i64 %114, i32 0, i64 %115)
  br label %117

117:                                              ; preds = %111, %104
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %5, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %5, align 8
  br label %54

121:                                              ; preds = %54
  %122 = call i32 @time(i32 0)
  %123 = call i32 @srandom(i32 %122)
  store i64 0, i64* %5, align 8
  br label %124

124:                                              ; preds = %198, %121
  %125 = load i64, i64* %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ult i64 %125, %127
  br i1 %128, label %129, label %201

129:                                              ; preds = %124
  %130 = load i8*, i8** %3, align 8
  store i8* %130, i8** %15, align 8
  %131 = load i8*, i8** %4, align 8
  store i8* %131, i8** %16, align 8
  store i64 0, i64* %13, align 8
  br label %132

132:                                              ; preds = %142, %129
  %133 = load i64, i64* %13, align 8
  %134 = load i64, i64* %7, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = call i32 (...) @random()
  %138 = trunc i32 %137 to i8
  %139 = load i8*, i8** %3, align 8
  %140 = load i64, i64* %13, align 8
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8 %138, i8* %141, align 1
  br label %142

142:                                              ; preds = %136
  %143 = load i64, i64* %13, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %13, align 8
  br label %132

145:                                              ; preds = %132
  %146 = call i32 (...) @random()
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* @MAX_OFFSET_DIFF_S1_S2, align 8
  %149 = urem i64 %147, %148
  %150 = load i8*, i8** %15, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 %149
  store i8* %151, i8** %15, align 8
  %152 = call i32 (...) @random()
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* @MAX_OFFSET_DIFF_S1_S2, align 8
  %155 = urem i64 %153, %154
  %156 = load i8*, i8** %16, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 %155
  store i8* %157, i8** %16, align 8
  %158 = load i8*, i8** %16, align 8
  %159 = load i8*, i8** %15, align 8
  %160 = load i64, i64* %6, align 8
  %161 = call i32 @memcpy(i8* %158, i8* %159, i64 %160)
  store i64 0, i64* %13, align 8
  br label %162

162:                                              ; preds = %178, %145
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* %6, align 8
  %165 = udiv i64 %164, 8
  %166 = icmp ult i64 %163, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %162
  %168 = call i32 (...) @random()
  %169 = sext i32 %168 to i64
  %170 = load i64, i64* %6, align 8
  %171 = urem i64 %169, %170
  store i64 %171, i64* %14, align 8
  %172 = call i32 (...) @random()
  %173 = and i32 %172, 255
  %174 = trunc i32 %173 to i8
  %175 = load i8*, i8** %4, align 8
  %176 = load i64, i64* %14, align 8
  %177 = getelementptr inbounds i8, i8* %175, i64 %176
  store i8 %174, i8* %177, align 1
  br label %178

178:                                              ; preds = %167
  %179 = load i64, i64* %13, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %13, align 8
  br label %162

181:                                              ; preds = %162
  %182 = load i32, i32* %2, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load i8*, i8** %15, align 8
  %186 = load i8*, i8** %16, align 8
  %187 = load i64, i64* @LARGE_MAX_OFFSET, align 8
  %188 = load i32, i32* @LARGE_SIZE_START, align 4
  %189 = load i64, i64* %6, align 8
  %190 = call i32 @test_one(i8* %185, i8* %186, i64 %187, i32 %188, i64 %189)
  br label %197

191:                                              ; preds = %181
  %192 = load i8*, i8** %15, align 8
  %193 = load i8*, i8** %16, align 8
  %194 = load i64, i64* @SIZE, align 8
  %195 = load i64, i64* %6, align 8
  %196 = call i32 @test_one(i8* %192, i8* %193, i64 %194, i32 0, i64 %195)
  br label %197

197:                                              ; preds = %191, %184
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %5, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %5, align 8
  br label %124

201:                                              ; preds = %124
  ret i32 0
}

declare dso_local i8* @memalign(i32, i64) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @srandom(i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @test_one(i8*, i8*, i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
