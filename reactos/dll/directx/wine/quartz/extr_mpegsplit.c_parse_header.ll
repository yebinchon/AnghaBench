; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_parse_header.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/quartz/extr_mpegsplit.c_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPEG_AUDIO_HEADER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Not a valid header: %02x:%02x:%02x:%02x\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@tabsel_123 = common dso_local global i32*** null, align 8
@freqs = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Impossible layer %d\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_header(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 1, i32* %10, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i64 @MPEGSplitter_head_check(i32* %17)
  %19 = load i64, i64* @MPEG_AUDIO_HEADER, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %35, i32* %4, align 4
  br label %182

36:                                               ; preds = %3
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 4
  %41 = and i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 3
  %49 = and i32 %48, 1
  %50 = xor i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %44, %36
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 1
  %56 = and i32 %55, 3
  %57 = sub nsw i32 4, %56
  store i32 %57, i32* %12, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 4
  %62 = and i32 %61, 15
  store i32 %62, i32* %8, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = ashr i32 %65, 2
  %67 = and i32 %66, 3
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %71, 3
  br label %74

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %73, %70
  %75 = phi i32 [ %72, %70 ], [ 6, %73 ]
  %76 = add nsw i32 %67, %75
  store i32 %76, i32* %9, align 4
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 1
  %81 = and i32 %80, 1
  store i32 %81, i32* %13, align 4
  %82 = load i32***, i32**** @tabsel_123, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32**, i32*** %82, i64 %84
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %86, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 1000
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %74
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @FIXME(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %102, i32 %105, i32 %108, i32 %111)
  %113 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %113, i32* %4, align 4
  br label %182

114:                                              ; preds = %74
  %115 = load i32, i32* %12, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %129

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = mul nsw i32 12, %118
  %120 = load i32*, i32** @freqs, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = sdiv i32 %119, %124
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %125, %126
  %128 = mul nsw i32 4, %127
  store i32 %128, i32* %15, align 4
  br label %165

129:                                              ; preds = %114
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %132, label %143

132:                                              ; preds = %129
  %133 = load i32, i32* %14, align 4
  %134 = mul nsw i32 144, %133
  %135 = load i32*, i32** @freqs, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = sdiv i32 %134, %139
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %140, %141
  store i32 %142, i32* %15, align 4
  br label %164

143:                                              ; preds = %129
  %144 = load i32, i32* %12, align 4
  %145 = icmp eq i32 %144, 3
  br i1 %145, label %146, label %159

146:                                              ; preds = %143
  %147 = load i32, i32* %14, align 4
  %148 = mul nsw i32 144, %147
  %149 = load i32*, i32** @freqs, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %10, align 4
  %155 = shl i32 %153, %154
  %156 = sdiv i32 %148, %155
  %157 = load i32, i32* %13, align 4
  %158 = add nsw i32 %156, %157
  store i32 %158, i32* %15, align 4
  br label %163

159:                                              ; preds = %143
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %162, i32* %4, align 4
  br label %182

163:                                              ; preds = %146
  br label %164

164:                                              ; preds = %163, %132
  br label %165

165:                                              ; preds = %164, %117
  %166 = load i32, i32* %15, align 4
  %167 = mul nsw i32 10000000, %166
  %168 = load i32, i32* %14, align 4
  %169 = sdiv i32 %168, 8
  %170 = sdiv i32 %167, %169
  store i32 %170, i32* %16, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32*, i32** %6, align 8
  store i32 %171, i32* %172, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %165
  %176 = load i32, i32* %16, align 4
  %177 = load i32*, i32** %7, align 8
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, %176
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %175, %165
  %181 = load i32, i32* @S_OK, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %180, %159, %99, %21
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i64 @MPEGSplitter_head_check(i32*) #1

declare dso_local i32 @FIXME(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
