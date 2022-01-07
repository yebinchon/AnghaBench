; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cryptdlg/extr_main.c_CRYPT_FormatCPS.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cryptdlg/extr_main.c_CRYPT_FormatCPS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@X509_UNICODE_ANY_STRING = common dso_local global i32 0, align 4
@CRYPT_DECODE_ALLOC_FLAG = common dso_local global i32 0, align 4
@CRYPT_FORMAT_STR_MULTI_LINE = common dso_local global i32 0, align 4
@crlf = common dso_local global i32 0, align 4
@commaSep = common dso_local global i32 0, align 4
@indent = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32, i32*, i32*)* @CRYPT_FormatCPS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CRYPT_FormatCPS(i32 %0, i32 %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 1, i32* %15, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @X509_UNICODE_ANY_STRING, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @CRYPT_DECODE_ALLOC_FLAG, align 4
  %24 = call i32 @CryptDecodeObjectEx(i32 %19, i32 %20, i32* %21, i32 %22, i32 %23, i32* null, %struct.TYPE_6__** %16, i32* %14)
  store i32 %24, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %158

26:                                               ; preds = %6
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @CRYPT_FORMAT_STR_MULTI_LINE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @crlf, align 4
  store i32 %32, i32* %17, align 4
  br label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @commaSep, align 4
  store i32 %34, i32* %17, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @lstrlenW(i32 %36)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @CRYPT_FORMAT_STR_MULTI_LINE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %81

42:                                               ; preds = %35
  %43 = load i32, i32* @indent, align 4
  %44 = call i32 @lstrlenW(i32 %43)
  %45 = mul nsw i32 3, %44
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %15, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %80

50:                                               ; preds = %42
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %50
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* @indent, align 4
  %58 = call i32 @lstrcpyW(i32* %56, i32 %57)
  %59 = load i32, i32* @indent, align 4
  %60 = call i32 @lstrlenW(i32 %59)
  %61 = load i32*, i32** %11, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32, i32* @indent, align 4
  %66 = call i32 @lstrcpyW(i32* %64, i32 %65)
  %67 = load i32, i32* @indent, align 4
  %68 = call i32 @lstrlenW(i32 %67)
  %69 = load i32*, i32** %11, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %11, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @indent, align 4
  %74 = call i32 @lstrcpyW(i32* %72, i32 %73)
  %75 = load i32, i32* @indent, align 4
  %76 = call i32 @lstrlenW(i32 %75)
  %77 = load i32*, i32** %11, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32* %79, i32** %11, align 8
  br label %80

80:                                               ; preds = %55, %50, %42
  br label %81

81:                                               ; preds = %80, %35
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = udiv i64 %86, 4
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %15, align 4
  %92 = load i32*, i32** %11, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %115

94:                                               ; preds = %81
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %94
  %100 = load i32*, i32** %11, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 @lstrcpyW(i32* %100, i32 %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = udiv i64 %111, 4
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 %112
  store i32* %114, i32** %11, align 8
  br label %115

115:                                              ; preds = %99, %94, %81
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %15, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %134

121:                                              ; preds = %115
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %17, align 4
  %129 = call i32 @lstrcpyW(i32* %127, i32 %128)
  %130 = load i32, i32* %18, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %11, align 8
  br label %134

134:                                              ; preds = %126, %121, %115
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %136 = call i32 @LocalFree(%struct.TYPE_6__* %135)
  %137 = load i32*, i32** %11, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* %15, align 4
  %141 = load i32*, i32** %12, align 8
  store i32 %140, i32* %141, align 4
  br label %157

142:                                              ; preds = %134
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %15, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i32, i32* %15, align 4
  %149 = load i32*, i32** %12, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* @ERROR_MORE_DATA, align 4
  %151 = call i32 @SetLastError(i32 %150)
  %152 = load i32, i32* @FALSE, align 4
  store i32 %152, i32* %13, align 4
  br label %156

153:                                              ; preds = %142
  %154 = load i32, i32* %15, align 4
  %155 = load i32*, i32** %12, align 8
  store i32 %154, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %147
  br label %157

157:                                              ; preds = %156, %139
  br label %158

158:                                              ; preds = %157, %6
  %159 = load i32, i32* %13, align 4
  ret i32 %159
}

declare dso_local i32 @CryptDecodeObjectEx(i32, i32, i32*, i32, i32, i32*, %struct.TYPE_6__**, i32*) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @lstrcpyW(i32*, i32) #1

declare dso_local i32 @LocalFree(%struct.TYPE_6__*) #1

declare dso_local i32 @SetLastError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
