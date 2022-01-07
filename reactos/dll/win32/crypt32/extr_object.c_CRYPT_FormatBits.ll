; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_FormatBits.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_object.c_CRYPT_FormatBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BitToString = type { i32, i32 }

@TRUE = common dso_local global i64 0, align 8
@commaSpace = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ERROR_MORE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.BitToString*, i32, i8*, i32*, i64*)* @CRYPT_FormatBits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CRYPT_FormatBits(i32 %0, %struct.BitToString* %1, i32 %2, i8* %3, i32* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.BitToString*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.BitToString* %1, %struct.BitToString** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  store i32 4, i32* %13, align 4
  %18 = load i64, i64* @TRUE, align 8
  store i64 %18, i64* %15, align 8
  %19 = load i64*, i64** %12, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %16, align 8
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %63, %6
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.BitToString*, %struct.BitToString** %8, align 8
  %28 = load i32, i32* %14, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.BitToString, %struct.BitToString* %27, i64 %29
  %31 = getelementptr inbounds %struct.BitToString, %struct.BitToString* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %26, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %25
  %36 = load i64, i64* %16, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @commaSpace, align 4
  %40 = call i32 @strlenW(i32 %39)
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = load i32, i32* %13, align 4
  %44 = zext i32 %43 to i64
  %45 = add i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %16, align 8
  %49 = load %struct.BitToString*, %struct.BitToString** %8, align 8
  %50 = load i32, i32* %14, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.BitToString, %struct.BitToString* %49, i64 %51
  %53 = getelementptr inbounds %struct.BitToString, %struct.BitToString* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @strlenW(i32 %54)
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = add i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %47, %25
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %14, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %21

66:                                               ; preds = %21
  %67 = load i8*, i8** %10, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %16, align 8
  %71 = load i64*, i64** %12, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %11, align 8
  store i32 %72, i32* %73, align 4
  br label %146

74:                                               ; preds = %66
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i64, i64* %16, align 8
  %81 = load i64*, i64** %12, align 8
  store i64 %80, i64* %81, align 8
  %82 = load i32, i32* %13, align 4
  %83 = load i32*, i32** %11, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @ERROR_MORE_DATA, align 4
  %85 = call i32 @SetLastError(i32 %84)
  %86 = load i64, i64* @FALSE, align 8
  store i64 %86, i64* %15, align 8
  br label %145

87:                                               ; preds = %74
  %88 = load i8*, i8** %10, align 8
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %17, align 4
  %90 = load i64*, i64** %12, align 8
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %16, align 8
  %92 = load i32, i32* %13, align 4
  %93 = load i32*, i32** %11, align 8
  store i32 %92, i32* %93, align 4
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %139, %87
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %142

98:                                               ; preds = %94
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.BitToString*, %struct.BitToString** %8, align 8
  %101 = load i32, i32* %14, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.BitToString, %struct.BitToString* %100, i64 %102
  %104 = getelementptr inbounds %struct.BitToString, %struct.BitToString* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %99, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %138

108:                                              ; preds = %98
  %109 = load i64, i64* %16, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* @commaSpace, align 4
  %114 = call i32 @strcpyW(i32 %112, i32 %113)
  %115 = load i32, i32* @commaSpace, align 4
  %116 = call i32 @strlenW(i32 %115)
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %17, align 4
  br label %119

119:                                              ; preds = %111, %108
  %120 = load i64, i64* @FALSE, align 8
  store i64 %120, i64* %16, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load %struct.BitToString*, %struct.BitToString** %8, align 8
  %123 = load i32, i32* %14, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.BitToString, %struct.BitToString* %122, i64 %124
  %126 = getelementptr inbounds %struct.BitToString, %struct.BitToString* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @strcpyW(i32 %121, i32 %127)
  %129 = load %struct.BitToString*, %struct.BitToString** %8, align 8
  %130 = load i32, i32* %14, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.BitToString, %struct.BitToString* %129, i64 %131
  %133 = getelementptr inbounds %struct.BitToString, %struct.BitToString* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @strlenW(i32 %134)
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %17, align 4
  br label %138

138:                                              ; preds = %119, %98
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %14, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %94

142:                                              ; preds = %94
  %143 = load i64, i64* %16, align 8
  %144 = load i64*, i64** %12, align 8
  store i64 %143, i64* %144, align 8
  br label %145

145:                                              ; preds = %142, %79
  br label %146

146:                                              ; preds = %145, %69
  %147 = load i64, i64* %15, align 8
  ret i64 %147
}

declare dso_local i32 @strlenW(i32) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @strcpyW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
