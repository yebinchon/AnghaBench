; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_rd_character.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/p/extr_..archz80expressions.c_rd_character.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%5d (0x%04x): Starting to read character (string=%s).\0A\00", align 1
@stack = common dso_local global %struct.TYPE_2__* null, align 8
@sp = common dso_local global i64 0, align 8
@addr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"unexpected end of line in string constant\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"empty literal character\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"unexpected end of line after backslash in string constant\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"%5d (0x%04x): rd_character returned %d (%c).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32)* @rd_character to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rd_character(i8** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @verbose, align 4
  %13 = icmp sge i32 %12, 6
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i32, i32* @stderr, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %17 = load i64, i64* @sp, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @addr, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i8* %23)
  br label %25

25:                                               ; preds = %14, %3
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %25
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32*, i32** %6, align 8
  store i32 0, i32* %36, align 4
  br label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @printerr(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %42, %35
  store i32 0, i32* %4, align 4
  br label %196

44:                                               ; preds = %25
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 92
  br i1 %46, label %47, label %176

47:                                               ; preds = %44
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %48, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = load i8*, i8** %51, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sge i32 %54, 48
  br i1 %55, label %56, label %133

56:                                               ; preds = %47
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %60, 55
  br i1 %61, label %62, label %133

62:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp sge i32 %67, 48
  br i1 %68, label %69, label %99

69:                                               ; preds = %62
  %70 = load i8**, i8*** %5, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp sle i32 %74, 55
  br i1 %75, label %76, label %99

76:                                               ; preds = %69
  %77 = load i8**, i8*** %5, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sle i32 %80, 51
  br i1 %81, label %82, label %97

82:                                               ; preds = %76
  %83 = load i8**, i8*** %5, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 2
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sge i32 %87, 48
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load i8**, i8*** %5, align 8
  %91 = load i8*, i8** %90, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp sle i32 %94, 55
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  store i32 3, i32* %10, align 4
  br label %98

97:                                               ; preds = %89, %82, %76
  store i32 2, i32* %10, align 4
  br label %98

98:                                               ; preds = %97, %96
  br label %100

99:                                               ; preds = %69, %62
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %99, %98
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %124, %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %101
  %106 = load i8**, i8*** %5, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* %9, align 4
  %111 = sub nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %107, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = sub nsw i32 %115, 48
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %9, align 4
  %118 = mul nsw i32 %117, 3
  %119 = shl i32 1, %118
  %120 = load i32, i32* %11, align 4
  %121 = mul nsw i32 %119, %120
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %105
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %101

127:                                              ; preds = %101
  %128 = load i32, i32* %10, align 4
  %129 = load i8**, i8*** %5, align 8
  %130 = load i8*, i8** %129, align 8
  %131 = sext i32 %128 to i64
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8* %132, i8** %129, align 8
  br label %175

133:                                              ; preds = %56, %47
  %134 = load i8**, i8*** %5, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  switch i32 %137, label %166 [
    i32 110, label %138
    i32 114, label %139
    i32 116, label %140
    i32 97, label %141
    i32 39, label %142
    i32 0, label %154
  ]

138:                                              ; preds = %133
  store i32 10, i32* %8, align 4
  br label %171

139:                                              ; preds = %133
  store i32 13, i32* %8, align 4
  br label %171

140:                                              ; preds = %133
  store i32 9, i32* %8, align 4
  br label %171

141:                                              ; preds = %133
  store i32 7, i32* %8, align 4
  br label %171

142:                                              ; preds = %133
  %143 = load i32*, i32** %6, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load i32*, i32** %6, align 8
  store i32 0, i32* %146, align 4
  br label %153

147:                                              ; preds = %142
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = call i32 @printerr(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %147
  br label %153

153:                                              ; preds = %152, %145
  store i32 0, i32* %4, align 4
  br label %196

154:                                              ; preds = %133
  %155 = load i32*, i32** %6, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32*, i32** %6, align 8
  store i32 0, i32* %158, align 4
  br label %165

159:                                              ; preds = %154
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = call i32 @printerr(i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %159
  br label %165

165:                                              ; preds = %164, %157
  store i32 0, i32* %4, align 4
  br label %196

166:                                              ; preds = %133
  %167 = load i8**, i8*** %5, align 8
  %168 = load i8*, i8** %167, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %166, %141, %140, %139, %138
  %172 = load i8**, i8*** %5, align 8
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %172, align 8
  br label %175

175:                                              ; preds = %171, %127
  br label %180

176:                                              ; preds = %44
  %177 = load i8**, i8*** %5, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %177, align 8
  br label %180

180:                                              ; preds = %176, %175
  %181 = load i32, i32* @verbose, align 4
  %182 = icmp sge i32 %181, 7
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = load i32, i32* @stderr, align 4
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack, align 8
  %186 = load i64, i64* @sp, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @addr, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 (i32, i8*, i32, i32, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %189, i32 %190, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %183, %180
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %194, %165, %153, %43
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @printerr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
