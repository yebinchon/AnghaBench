; ModuleID = '/home/carl/AnghaBench/radare2/libr/util/extr_punycode.c_utf8toutf32.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/util/extr_punycode.c_utf8toutf32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"ERROR input is null\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"ERROR: out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"ERROR in toutf32. Seems like input is invalid.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @utf8toutf32(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = call i32 @eprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %175

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = bitcast i32* %17 to i8*
  %19 = call i32 @strlen(i8* %18)
  %20 = add nsw i32 %19, 1
  %21 = call i32* @calloc(i32 %20, i32 4)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  %25 = call i32 @eprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %175

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %165, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %173

31:                                               ; preds = %27
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %165

47:                                               ; preds = %31
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 5
  %54 = icmp eq i32 %53, 6
  br i1 %54, label %55, label %74

55:                                               ; preds = %47
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 31
  %62 = shl i32 %61, 6
  %63 = and i32 %62, 4032
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 63
  %71 = or i32 %63, %70
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %4, align 4
  br label %164

74:                                               ; preds = %47
  %75 = load i32*, i32** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 4
  %81 = icmp eq i32 %80, 14
  br i1 %81, label %82, label %111

82:                                               ; preds = %74
  %83 = load i32*, i32** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 15
  %89 = shl i32 %88, 12
  %90 = and i32 %89, 61440
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 63
  %98 = shl i32 %97, 6
  %99 = and i32 %98, 65472
  %100 = or i32 %90, %99
  %101 = load i32*, i32** %3, align 8
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 63
  %108 = or i32 %100, %107
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 3
  store i32 %110, i32* %4, align 4
  br label %163

111:                                              ; preds = %74
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 3
  %118 = icmp eq i32 %117, 30
  br i1 %118, label %119, label %158

119:                                              ; preds = %111
  %120 = load i32*, i32** %3, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 15
  %126 = shl i32 %125, 18
  %127 = and i32 %126, 1835008
  %128 = load i32*, i32** %3, align 8
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 63
  %135 = shl i32 %134, 12
  %136 = and i32 %135, 2093056
  %137 = or i32 %127, %136
  %138 = load i32*, i32** %3, align 8
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 2
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 63
  %145 = shl i32 %144, 6
  %146 = and i32 %145, 2097088
  %147 = or i32 %137, %146
  %148 = load i32*, i32** %3, align 8
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 3
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = and i32 %153, 63
  %155 = or i32 %147, %154
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, 4
  store i32 %157, i32* %4, align 4
  br label %162

158:                                              ; preds = %111
  %159 = call i32 @eprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 @free(i32* %160)
  store i32* null, i32** %2, align 8
  br label %175

162:                                              ; preds = %119
  br label %163

163:                                              ; preds = %162, %82
  br label %164

164:                                              ; preds = %163, %55
  br label %165

165:                                              ; preds = %164, %39
  %166 = load i32, i32* %6, align 4
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %166, i32* %170, align 4
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %5, align 4
  br label %27

173:                                              ; preds = %27
  %174 = load i32*, i32** %8, align 8
  store i32* %174, i32** %2, align 8
  br label %175

175:                                              ; preds = %173, %158, %24, %11
  %176 = load i32*, i32** %2, align 8
  ret i32* %176
}

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
