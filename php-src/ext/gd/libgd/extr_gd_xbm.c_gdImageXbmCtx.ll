; ModuleID = '/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_xbm.c_gdImageXbmCtx.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/gd/libgd/extr_gd_xbm.c_gdImageXbmCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c".XBM\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"#define %s_width %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"#define %s_height %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"static unsigned char %s_bits[] = {\0A  \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"0x%02X\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdImageXbmCtx(i32 %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %20 = load i8*, i8** %6, align 8
  store i8* %20, i8** %16, align 8
  %21 = load i8*, i8** %16, align 8
  %22 = call i8* @strrchr(i8* %21, i8 signext 47)
  store i8* %22, i8** %17, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i8*, i8** %17, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 1
  store i8* %26, i8** %16, align 8
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i8*, i8** %16, align 8
  %29 = call i8* @strrchr(i8* %28, i8 signext 92)
  store i8* %29, i8** %17, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %17, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %33, i8** %16, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i8*, i8** %16, align 8
  %36 = call i8* @estrdup(i8* %35)
  store i8* %36, i8** %16, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = call i8* @strrchr(i8* %37, i8 signext 46)
  store i8* %38, i8** %17, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i8*, i8** %17, align 8
  %42 = call i32 @strcasecmp(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %17, align 8
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %44, %40, %34
  %47 = load i8*, i8** %16, align 8
  %48 = call i64 @strlen(i8* %47)
  store i64 %48, i64* %19, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @efree(i8* %51)
  %53 = call i8* @estrdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %53, i8** %16, align 8
  br label %89

54:                                               ; preds = %46
  store i64 0, i64* %18, align 8
  br label %55

55:                                               ; preds = %85, %54
  %56 = load i64, i64* %18, align 8
  %57 = load i64, i64* %19, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %55
  %60 = load i8*, i8** %16, align 8
  %61 = load i64, i64* %18, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @isupper(i8 signext %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %84, label %66

66:                                               ; preds = %59
  %67 = load i8*, i8** %16, align 8
  %68 = load i64, i64* %18, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = call i32 @islower(i8 signext %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %66
  %74 = load i8*, i8** %16, align 8
  %75 = load i64, i64* %18, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @isdigit(i8 signext %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %73
  %81 = load i8*, i8** %16, align 8
  %82 = load i64, i64* %18, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8 95, i8* %83, align 1
  br label %84

84:                                               ; preds = %80, %73, %66, %59
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %18, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %18, align 8
  br label %55

88:                                               ; preds = %55
  br label %89

89:                                               ; preds = %88, %50
  %90 = load i32*, i32** %8, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 @gdImageSX(i32 %92)
  %94 = call i32 (i32*, i8*, ...) @gdCtxPrintf(i32* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %91, i32 %93)
  %95 = load i32*, i32** %8, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @gdImageSY(i32 %97)
  %99 = call i32 (i32*, i8*, ...) @gdCtxPrintf(i32* %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %96, i32 %98)
  %100 = load i32*, i32** %8, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = call i32 (i32*, i8*, ...) @gdCtxPrintf(i32* %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %101)
  %103 = load i8*, i8** %16, align 8
  %104 = call i32 @efree(i8* %103)
  store i32 1, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @gdImageSX(i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @gdImageSY(i32 %107)
  store i32 %108, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %164, %89
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %167

113:                                              ; preds = %109
  store i32 0, i32* %9, align 4
  br label %114

114:                                              ; preds = %160, %113
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %163

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @gdImageGetPixel(i32 %119, i32 %120, i32 %121)
  %123 = load i32, i32* %7, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* %11, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %125, %118
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %130, 128
  br i1 %131, label %137, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %13, align 4
  %135 = sub nsw i32 %134, 1
  %136 = icmp eq i32 %133, %135
  br i1 %136, label %137, label %156

137:                                              ; preds = %132, %129
  store i32 1, i32* %12, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load i32*, i32** %8, align 8
  %142 = call i32 (i32*, i8*, ...) @gdCtxPrintf(i32* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %143 = load i32, i32* %15, align 4
  %144 = srem i32 %143, 12
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 (i32*, i8*, ...) @gdCtxPrintf(i32* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i32 12, i32* %15, align 4
  br label %149

149:                                              ; preds = %146, %140
  br label %150

150:                                              ; preds = %149, %137
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 (i32*, i8*, ...) @gdCtxPrintf(i32* %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  store i32 0, i32* %11, align 4
  br label %159

156:                                              ; preds = %132
  %157 = load i32, i32* %12, align 4
  %158 = shl i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %156, %150
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %114

163:                                              ; preds = %114
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %10, align 4
  br label %109

167:                                              ; preds = %109
  %168 = load i32*, i32** %8, align 8
  %169 = call i32 (i32*, i8*, ...) @gdCtxPrintf(i32* %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @estrdup(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @efree(i8*) #1

declare dso_local i32 @isupper(i8 signext) #1

declare dso_local i32 @islower(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @gdCtxPrintf(i32*, i8*, ...) #1

declare dso_local i32 @gdImageSX(i32) #1

declare dso_local i32 @gdImageSY(i32) #1

declare dso_local i32 @gdImageGetPixel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
