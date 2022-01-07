; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_base64.c_base64_decode.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_base64.c_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_decode_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @base64_decode(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %16

16:                                               ; preds = %34, %3
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %6, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load i32*, i32** @base64_decode_table, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 128
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i64, i64* %12, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %12, align 8
  br label %33

33:                                               ; preds = %30, %20
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %11, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %11, align 8
  br label %16

37:                                               ; preds = %16
  %38 = load i64, i64* %12, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %12, align 8
  %42 = urem i64 %41, 4
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %37
  store i8* null, i8** %4, align 8
  br label %161

45:                                               ; preds = %40
  %46 = load i64, i64* %12, align 8
  %47 = udiv i64 %46, 4
  %48 = mul i64 %47, 3
  %49 = add i64 %48, 1
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = call i8* @malloc(i64 %50)
  store i8* %51, i8** %8, align 8
  store i8* %51, i8** %9, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  store i8* null, i8** %4, align 8
  br label %161

55:                                               ; preds = %45
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %149, %55
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %152

60:                                               ; preds = %56
  %61 = load i32*, i32** @base64_decode_table, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %15, align 1
  %70 = load i8, i8* %15, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp eq i32 %71, 128
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %149

74:                                               ; preds = %60
  %75 = load i8*, i8** %5, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 61
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i8, i8* %15, align 1
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %86
  store i8 %85, i8* %87, align 1
  %88 = load i64, i64* %12, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = icmp eq i64 %90, 4
  br i1 %91, label %92, label %148

92:                                               ; preds = %84
  %93 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 2
  %97 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = ashr i32 %99, 4
  %101 = or i32 %96, %100
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  store i8 %102, i8* %103, align 1
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = shl i32 %107, 4
  %109 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = ashr i32 %111, 2
  %113 = or i32 %108, %112
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %9, align 8
  store i8 %114, i8* %115, align 1
  %117 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 2
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = shl i32 %119, 6
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 3
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = or i32 %120, %123
  %125 = trunc i32 %124 to i8
  %126 = load i8*, i8** %9, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %9, align 8
  store i8 %125, i8* %126, align 1
  store i64 0, i64* %12, align 8
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %92
  %131 = load i32, i32* %14, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 -1
  store i8* %135, i8** %9, align 8
  br label %146

136:                                              ; preds = %130
  %137 = load i32, i32* %14, align 4
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i8*, i8** %9, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 -2
  store i8* %141, i8** %9, align 8
  br label %145

142:                                              ; preds = %136
  %143 = load i8*, i8** %8, align 8
  %144 = call i32 @free(i8* %143)
  store i8* null, i8** %4, align 8
  br label %161

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %133
  br label %152

147:                                              ; preds = %92
  br label %148

148:                                              ; preds = %147, %84
  br label %149

149:                                              ; preds = %148, %73
  %150 = load i64, i64* %11, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %11, align 8
  br label %56

152:                                              ; preds = %146, %56
  %153 = load i8*, i8** %9, align 8
  store i8 0, i8* %153, align 1
  %154 = load i8*, i8** %9, align 8
  %155 = load i8*, i8** %8, align 8
  %156 = ptrtoint i8* %154 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = load i64*, i64** %7, align 8
  store i64 %158, i64* %159, align 8
  %160 = load i8*, i8** %8, align 8
  store i8* %160, i8** %4, align 8
  br label %161

161:                                              ; preds = %152, %142, %54, %44
  %162 = load i8*, i8** %4, align 8
  ret i8* %162
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
