; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_FormatAltNameInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_FormatAltNameInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@TRUE = common dso_local global i64 0, align 8
@CRYPT_FORMAT_STR_MULTI_LINE = common dso_local global i32 0, align 4
@crlf = common dso_local global i32 0, align 4
@commaSpace = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, %struct.TYPE_3__*, i32*, i32*)* @CRYPT_FormatAltNameInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_FormatAltNameInfo(i32 %0, i32 %1, %struct.TYPE_3__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %17 = load i64, i64* @TRUE, align 8
  store i64 %17, i64* %14, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @CRYPT_FORMAT_STR_MULTI_LINE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load i32, i32* @crlf, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* @crlf, align 4
  %25 = call i32 @strlenW(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %16, align 4
  br label %36

29:                                               ; preds = %5
  %30 = load i32, i32* @commaSpace, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* @commaSpace, align 4
  %32 = call i32 @strlenW(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %16, align 4
  br label %36

36:                                               ; preds = %29, %22
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %80, %36
  %38 = load i64, i64* %14, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br label %46

46:                                               ; preds = %40, %37
  %47 = phi i1 [ false, %37 ], [ %45, %40 ]
  br i1 %47, label %48, label %83

48:                                               ; preds = %46
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i64 @CRYPT_FormatAltNameEntry(i32 %49, i32 %50, i32* %56, i32* null, i32* %12)
  store i64 %57, i64* %14, align 8
  %58 = load i64, i64* %14, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %48
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 4
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 1
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %60
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %74, %60
  br label %79

79:                                               ; preds = %78, %48
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %37

83:                                               ; preds = %46
  %84 = load i64, i64* %14, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %164

86:                                               ; preds = %83
  %87 = load i32, i32* %13, align 4
  %88 = sext i32 %87 to i64
  %89 = add i64 %88, 4
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %13, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %86
  %94 = load i32, i32* %13, align 4
  %95 = load i32*, i32** %10, align 8
  store i32 %94, i32* %95, align 4
  br label %163

96:                                               ; preds = %86
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32, i32* %13, align 4
  %103 = load i32*, i32** %10, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* @ERROR_MORE_DATA, align 4
  %105 = call i32 @SetLastError(i32 %104)
  %106 = load i64, i64* @FALSE, align 8
  store i64 %106, i64* %14, align 8
  br label %162

107:                                              ; preds = %96
  %108 = load i32, i32* %13, align 4
  %109 = load i32*, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %158, %107
  %111 = load i64, i64* %14, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br label %119

119:                                              ; preds = %113, %110
  %120 = phi i1 [ false, %110 ], [ %118, %113 ]
  br i1 %120, label %121, label %161

121:                                              ; preds = %119
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32*, i32** %9, align 8
  %131 = call i64 @CRYPT_FormatAltNameEntry(i32 %122, i32 %123, i32* %129, i32* %130, i32* %12)
  store i64 %131, i64* %14, align 8
  %132 = load i64, i64* %14, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %157

134:                                              ; preds = %121
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = udiv i64 %136, 4
  %138 = sub i64 %137, 1
  %139 = load i32*, i32** %9, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 %138
  store i32* %140, i32** %9, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %144, 1
  %146 = icmp slt i32 %141, %145
  br i1 %146, label %147, label %156

147:                                              ; preds = %134
  %148 = load i32*, i32** %9, align 8
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @strcpyW(i32* %148, i32 %149)
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  %153 = udiv i64 %152, 4
  %154 = load i32*, i32** %9, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 %153
  store i32* %155, i32** %9, align 8
  br label %156

156:                                              ; preds = %147, %134
  br label %157

157:                                              ; preds = %156, %121
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %110

161:                                              ; preds = %119
  br label %162

162:                                              ; preds = %161, %101
  br label %163

163:                                              ; preds = %162, %93
  br label %164

164:                                              ; preds = %163, %83
  %165 = load i64, i64* %14, align 8
  ret i64 %165
}

declare dso_local i32 @strlenW(i32) #1

declare dso_local i64 @CRYPT_FormatAltNameEntry(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @strcpyW(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
