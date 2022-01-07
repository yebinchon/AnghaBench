; ModuleID = '/home/carl/AnghaBench/poco/SevenZip/src/extr_BraIA64.c_IA64_Convert.c'
source_filename = "/home/carl/AnghaBench/poco/SevenZip/src/extr_BraIA64.c_IA64_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kBranchTable = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IA64_Convert(i32* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 16
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %186

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 16
  store i32 %27, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %181, %25
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %184

32:                                               ; preds = %28
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 31
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %11, align 8
  %40 = load i64*, i64** @kBranchTable, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  store i64 5, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %175, %32
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %180

47:                                               ; preds = %44
  %48 = load i64, i64* %12, align 8
  %49 = load i32, i32* %14, align 4
  %50 = zext i32 %49 to i64
  %51 = lshr i64 %48, %50
  %52 = and i64 %51, 1
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %175

55:                                               ; preds = %47
  %56 = load i64, i64* %13, align 8
  %57 = lshr i64 %56, 3
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %13, align 8
  %59 = and i64 %58, 7
  store i64 %59, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %60

60:                                               ; preds = %78, %55
  %61 = load i32, i32* %19, align 4
  %62 = icmp slt i32 %61, 6
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %19, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %15, align 8
  %70 = add i64 %68, %69
  %71 = getelementptr inbounds i32, i32* %64, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %19, align 4
  %74 = mul nsw i32 8, %73
  %75 = shl i32 %72, %74
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %17, align 4
  br label %78

78:                                               ; preds = %63
  %79 = load i32, i32* %19, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %19, align 4
  br label %60

81:                                               ; preds = %60
  %82 = load i32, i32* %17, align 4
  %83 = load i64, i64* %16, align 8
  %84 = trunc i64 %83 to i32
  %85 = ashr i32 %82, %84
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = ashr i32 %86, 37
  %88 = and i32 %87, 15
  %89 = icmp eq i32 %88, 5
  br i1 %89, label %90, label %174

90:                                               ; preds = %81
  %91 = load i32, i32* %18, align 4
  %92 = ashr i32 %91, 9
  %93 = and i32 %92, 7
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %174

95:                                               ; preds = %90
  %96 = load i32, i32* %18, align 4
  %97 = ashr i32 %96, 13
  %98 = and i32 %97, 1048575
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %20, align 8
  %100 = load i32, i32* %18, align 4
  %101 = ashr i32 %100, 36
  %102 = sext i32 %101 to i64
  %103 = and i64 %102, 1
  %104 = shl i64 %103, 20
  %105 = load i64, i64* %20, align 8
  %106 = or i64 %105, %104
  store i64 %106, i64* %20, align 8
  %107 = load i64, i64* %20, align 8
  %108 = shl i64 %107, 4
  store i64 %108, i64* %20, align 8
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %95
  %112 = load i64, i64* %8, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %112, %114
  %116 = load i64, i64* %20, align 8
  %117 = add i64 %115, %116
  store i64 %117, i64* %21, align 8
  br label %125

118:                                              ; preds = %95
  %119 = load i64, i64* %20, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = add i64 %120, %122
  %124 = sub i64 %119, %123
  store i64 %124, i64* %21, align 8
  br label %125

125:                                              ; preds = %118, %111
  %126 = load i64, i64* %21, align 8
  %127 = lshr i64 %126, 4
  store i64 %127, i64* %21, align 8
  %128 = load i32, i32* %18, align 4
  %129 = and i32 %128, 8191
  store i32 %129, i32* %18, align 4
  %130 = load i64, i64* %21, align 8
  %131 = and i64 %130, 1048575
  %132 = trunc i64 %131 to i32
  %133 = shl i32 %132, 13
  %134 = load i32, i32* %18, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %18, align 4
  %136 = load i64, i64* %21, align 8
  %137 = and i64 %136, 1048576
  %138 = trunc i64 %137 to i32
  %139 = shl i32 %138, 16
  %140 = load i32, i32* %18, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %18, align 4
  %142 = load i64, i64* %16, align 8
  %143 = trunc i64 %142 to i32
  %144 = shl i32 1, %143
  %145 = sub nsw i32 %144, 1
  %146 = load i32, i32* %17, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i64, i64* %16, align 8
  %150 = trunc i64 %149 to i32
  %151 = shl i32 %148, %150
  %152 = load i32, i32* %17, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %154

154:                                              ; preds = %170, %125
  %155 = load i32, i32* %19, align 4
  %156 = icmp slt i32 %155, 6
  br i1 %156, label %157, label %173

157:                                              ; preds = %154
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %19, align 4
  %160 = mul nsw i32 8, %159
  %161 = ashr i32 %158, %160
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %19, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = load i64, i64* %15, align 8
  %168 = add i64 %166, %167
  %169 = getelementptr inbounds i32, i32* %162, i64 %168
  store i32 %161, i32* %169, align 4
  br label %170

170:                                              ; preds = %157
  %171 = load i32, i32* %19, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %19, align 4
  br label %154

173:                                              ; preds = %154
  br label %174

174:                                              ; preds = %173, %90, %81
  br label %175

175:                                              ; preds = %174, %54
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  %178 = load i64, i64* %13, align 8
  %179 = add i64 %178, 41
  store i64 %179, i64* %13, align 8
  br label %44

180:                                              ; preds = %44
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 16
  store i32 %183, i32* %10, align 4
  br label %28

184:                                              ; preds = %28
  %185 = load i32, i32* %10, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %184, %24
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
