; ModuleID = '/home/carl/AnghaBench/lz4/programs/extr_datagen.c_RDG_genBlock.c'
source_filename = "/home/carl/AnghaBench/lz4/programs/extr_datagen.c_RDG_genBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDG_RAND15BITS = common dso_local global i64 0, align 8
@RDG_RANDLENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RDG_genBlock(i8* %0, i64 %1, i64 %2, double %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store double %3, double* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %13, align 8
  %26 = load double, double* %10, align 8
  %27 = fmul double 3.276800e+04, %26
  %28 = fptosi double %27 to i64
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %15, align 8
  %30 = load i32*, i32** %12, align 8
  %31 = bitcast i32* %30 to i64*
  store i64* %31, i64** %16, align 8
  br label %32

32:                                               ; preds = %63, %6
  %33 = load double, double* %10, align 8
  %34 = fcmp oge double %33, 1.000000e+00
  br i1 %34, label %35, label %79

35:                                               ; preds = %32
  %36 = load i64*, i64** %16, align 8
  %37 = call i64 @RDG_rand(i64* %36)
  %38 = and i64 %37, 3
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %17, align 8
  %40 = mul i64 %39, 2
  %41 = add i64 16, %40
  %42 = shl i64 1, %41
  store i64 %42, i64* %17, align 8
  %43 = load i64*, i64** %16, align 8
  %44 = call i64 @RDG_rand(i64* %43)
  %45 = load i64, i64* %17, align 8
  %46 = sub i64 %45, 1
  %47 = and i64 %44, %46
  %48 = load i64, i64* %17, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %17, align 8
  %53 = add i64 %51, %52
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %35
  %56 = load i32*, i32** %13, align 8
  %57 = load i64, i64* %15, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %15, align 8
  %61 = sub i64 %59, %60
  %62 = call i32 @memset(i32* %58, i32 0, i64 %61)
  br label %162

63:                                               ; preds = %35
  %64 = load i32*, i32** %13, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i64, i64* %17, align 8
  %68 = call i32 @memset(i32* %66, i32 0, i64 %67)
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* %15, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %15, align 8
  %72 = load i64*, i64** %16, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @RDG_genChar(i64* %72, i32 %73)
  %75 = load i32*, i32** %13, align 8
  %76 = load i64, i64* %15, align 8
  %77 = sub i64 %76, 1
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %74, i32* %78, align 4
  br label %32

79:                                               ; preds = %32
  %80 = load i64, i64* %15, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i64*, i64** %16, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @RDG_genChar(i64* %83, i32 %84)
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  store i64 1, i64* %15, align 8
  br label %88

88:                                               ; preds = %82, %79
  br label %89

89:                                               ; preds = %161, %88
  %90 = load i64, i64* %15, align 8
  %91 = load i64, i64* %8, align 8
  %92 = icmp ult i64 %90, %91
  br i1 %92, label %93, label %162

93:                                               ; preds = %89
  %94 = load i64, i64* @RDG_RAND15BITS, align 8
  %95 = load i64, i64* %14, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %136

97:                                               ; preds = %93
  %98 = load i32, i32* @RDG_RANDLENGTH, align 4
  %99 = add nsw i32 %98, 4
  store i32 %99, i32* %20, align 4
  %100 = load i64, i64* @RDG_RAND15BITS, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %21, align 8
  %102 = load i64, i64* %21, align 8
  %103 = load i64, i64* %15, align 8
  %104 = icmp ugt i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i64, i64* %15, align 8
  store i64 %106, i64* %21, align 8
  br label %107

107:                                              ; preds = %105, %97
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %21, align 8
  %110 = sub i64 %108, %109
  store i64 %110, i64* %18, align 8
  %111 = load i64, i64* %15, align 8
  %112 = load i32, i32* %20, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %111, %113
  store i64 %114, i64* %19, align 8
  %115 = load i64, i64* %19, align 8
  %116 = load i64, i64* %8, align 8
  %117 = icmp ugt i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i64, i64* %8, align 8
  store i64 %119, i64* %19, align 8
  br label %120

120:                                              ; preds = %118, %107
  br label %121

121:                                              ; preds = %125, %120
  %122 = load i64, i64* %15, align 8
  %123 = load i64, i64* %19, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i32*, i32** %13, align 8
  %127 = load i64, i64* %18, align 8
  %128 = add i64 %127, 1
  store i64 %128, i64* %18, align 8
  %129 = getelementptr inbounds i32, i32* %126, i64 %127
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = load i64, i64* %15, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %15, align 8
  %134 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32 %130, i32* %134, align 4
  br label %121

135:                                              ; preds = %121
  br label %161

136:                                              ; preds = %93
  %137 = load i32, i32* @RDG_RANDLENGTH, align 4
  %138 = sext i32 %137 to i64
  store i64 %138, i64* %23, align 8
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* %23, align 8
  %141 = add i64 %139, %140
  store i64 %141, i64* %22, align 8
  %142 = load i64, i64* %22, align 8
  %143 = load i64, i64* %8, align 8
  %144 = icmp ugt i64 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %136
  %146 = load i64, i64* %8, align 8
  store i64 %146, i64* %22, align 8
  br label %147

147:                                              ; preds = %145, %136
  br label %148

148:                                              ; preds = %152, %147
  %149 = load i64, i64* %15, align 8
  %150 = load i64, i64* %22, align 8
  %151 = icmp ult i64 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load i64*, i64** %16, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @RDG_genChar(i64* %153, i32 %154)
  %156 = load i32*, i32** %13, align 8
  %157 = load i64, i64* %15, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %15, align 8
  %159 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32 %155, i32* %159, align 4
  br label %148

160:                                              ; preds = %148
  br label %161

161:                                              ; preds = %160, %135
  br label %89

162:                                              ; preds = %55, %89
  ret void
}

declare dso_local i64 @RDG_rand(i64*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @RDG_genChar(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
