; ModuleID = '/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_parse_value.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/property/extr_property_parse.c_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, %struct.TYPE_10__*, i32)* @parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_value(i32* %0, i8** %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %10, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 34
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 39
  br i1 %22, label %23, label %33

23:                                               ; preds = %18, %4
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %10, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 -1
  %29 = load i8, i8* %28, align 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @parse_string(i32* %26, i8** %10, i8 signext %29, %struct.TYPE_10__* %30, i32 %31)
  store i32 %32, i32* %11, align 4
  br label %119

33:                                               ; preds = %18
  %34 = load i8*, i8** %10, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %10, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = call i32 @parse_number(i8** %10, %struct.TYPE_10__* %41)
  store i32 %42, i32* %11, align 4
  br label %118

43:                                               ; preds = %33
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 45
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %10, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = call i32 @parse_number(i8** %10, %struct.TYPE_10__* %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 0, %56
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  br label %117

61:                                               ; preds = %43
  %62 = load i8*, i8** %10, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 48
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 120
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  store i8* %74, i8** %10, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = call i32 @parse_hex(i8** %10, %struct.TYPE_10__* %75)
  store i32 %76, i32* %11, align 4
  br label %116

77:                                               ; preds = %66, %61
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 48
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @ossl_isdigit(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %10, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %92 = call i32 @parse_oct(i8** %10, %struct.TYPE_10__* %91)
  store i32 %92, i32* %11, align 4
  br label %115

93:                                               ; preds = %82, %77
  %94 = load i8*, i8** %10, align 8
  %95 = load i8, i8* %94, align 1
  %96 = call i64 @ossl_isdigit(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load i8**, i8*** %7, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %101 = call i32 @parse_number(i8** %99, %struct.TYPE_10__* %100)
  store i32 %101, i32* %5, align 4
  br label %127

102:                                              ; preds = %93
  %103 = load i8*, i8** %10, align 8
  %104 = load i8, i8* %103, align 1
  %105 = call i64 @ossl_isalpha(i8 signext %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load i32*, i32** %6, align 8
  %109 = load i8**, i8*** %7, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @parse_unquoted(i32* %108, i8** %109, %struct.TYPE_10__* %110, i32 %111)
  store i32 %112, i32* %5, align 4
  br label %127

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114, %88
  br label %116

116:                                              ; preds = %115, %72
  br label %117

117:                                              ; preds = %116, %48
  br label %118

118:                                              ; preds = %117, %38
  br label %119

119:                                              ; preds = %118, %23
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i8*, i8** %10, align 8
  %124 = load i8**, i8*** %7, align 8
  store i8* %123, i8** %124, align 8
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %107, %98
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i32 @parse_string(i32*, i8**, i8 signext, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @parse_number(i8**, %struct.TYPE_10__*) #1

declare dso_local i32 @parse_hex(i8**, %struct.TYPE_10__*) #1

declare dso_local i64 @ossl_isdigit(i8 signext) #1

declare dso_local i32 @parse_oct(i8**, %struct.TYPE_10__*) #1

declare dso_local i64 @ossl_isalpha(i8 signext) #1

declare dso_local i32 @parse_unquoted(i32*, i8**, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
