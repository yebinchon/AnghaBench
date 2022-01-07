; ModuleID = '/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_bitstr.c_i2c_ASN1_BIT_STRING.c'
source_filename = "/home/carl/AnghaBench/openssl/crypto/asn1/extr_a_bitstr.c_i2c_ASN1_BIT_STRING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32* }

@ASN1_STRING_FLAG_BITS_LEFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_ASN1_BIT_STRING(%struct.TYPE_3__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = icmp eq %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %152

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %110

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ASN1_STRING_FLAG_BITS_LEFT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 7
  store i32 %32, i32* %8, align 4
  br label %109

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %52

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %9, align 4
  br label %34

52:                                               ; preds = %47, %34
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %108

65:                                               ; preds = %52
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %8, align 4
  br label %107

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 2, i32* %8, align 4
  br label %106

75:                                               ; preds = %70
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 3, i32* %8, align 4
  br label %105

80:                                               ; preds = %75
  %81 = load i32, i32* %7, align 4
  %82 = and i32 %81, 16
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 4, i32* %8, align 4
  br label %104

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, 32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 5, i32* %8, align 4
  br label %103

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, 64
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 6, i32* %8, align 4
  br label %102

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, 128
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 7, i32* %8, align 4
  br label %101

100:                                              ; preds = %95
  store i32 0, i32* %8, align 4
  br label %101

101:                                              ; preds = %100, %99
  br label %102

102:                                              ; preds = %101, %94
  br label %103

103:                                              ; preds = %102, %89
  br label %104

104:                                              ; preds = %103, %84
  br label %105

105:                                              ; preds = %104, %79
  br label %106

106:                                              ; preds = %105, %74
  br label %107

107:                                              ; preds = %106, %69
  br label %108

108:                                              ; preds = %107, %64
  br label %109

109:                                              ; preds = %108, %28
  br label %111

110:                                              ; preds = %15
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %110, %109
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 1, %112
  store i32 %113, i32* %6, align 4
  %114 = load i8**, i8*** %5, align 8
  %115 = icmp eq i8** %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %3, align 4
  br label %152

118:                                              ; preds = %111
  %119 = load i8**, i8*** %5, align 8
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %10, align 8
  %121 = load i32, i32* %8, align 4
  %122 = trunc i32 %121 to i8
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %10, align 8
  store i8 %122, i8* %123, align 1
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = bitcast i32* %127 to i8*
  store i8* %128, i8** %11, align 8
  %129 = load i32, i32* %9, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %118
  %132 = load i8*, i8** %10, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* %9, align 4
  %135 = call i32 @memcpy(i8* %132, i8* %133, i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = load i8*, i8** %10, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %10, align 8
  %140 = load i32, i32* %8, align 4
  %141 = shl i32 255, %140
  %142 = load i8*, i8** %10, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 -1
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = and i32 %145, %141
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %143, align 1
  br label %148

148:                                              ; preds = %131, %118
  %149 = load i8*, i8** %10, align 8
  %150 = load i8**, i8*** %5, align 8
  store i8* %149, i8** %150, align 8
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %148, %116, %14
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
