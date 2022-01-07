; ModuleID = '/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_ccitt.c_HPDF_Fax3Encode2DRow.c'
source_filename = "/home/carl/AnghaBench/poco/PDF/src/extr_hpdf_image_ccitt.c_HPDF_Fax3Encode2DRow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._HPDF_CCITT_Data = type { i32 }

@horizcode = common dso_local global i32 0, align 4
@TIFFFaxWhiteCodes = common dso_local global i32 0, align 4
@TIFFFaxBlackCodes = common dso_local global i32 0, align 4
@vcodes = common dso_local global i32* null, align 8
@passcode = common dso_local global i32 0, align 4
@HPDF_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._HPDF_CCITT_Data*, i8*, i8*, i64)* @HPDF_Fax3Encode2DRow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HPDF_Fax3Encode2DRow(%struct._HPDF_CCITT_Data* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct._HPDF_CCITT_Data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct._HPDF_CCITT_Data* %0, %struct._HPDF_CCITT_Data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = ashr i32 %18, 7
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %27

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @finddiff(i8* %24, i64 0, i64 %25, i32 0)
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i64 [ 0, %22 ], [ %26, %23 ]
  store i64 %28, i64* %10, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = ashr i32 %32, 7
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %41

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @finddiff(i8* %38, i64 0, i64 %39, i32 0)
  br label %41

41:                                               ; preds = %37, %36
  %42 = phi i64 [ 0, %36 ], [ %40, %37 ]
  store i64 %42, i64* %11, align 8
  br label %43

43:                                               ; preds = %157, %41
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i64, i64* %11, align 8
  %49 = ashr i64 %48, 3
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i64, i64* %11, align 8
  %54 = and i64 %53, 7
  %55 = sub nsw i64 7, %54
  %56 = trunc i64 %55 to i32
  %57 = ashr i32 %52, %56
  %58 = and i32 %57, 1
  %59 = call i64 @finddiff2(i8* %44, i64 %45, i64 %46, i32 %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %10, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %148

63:                                               ; preds = %43
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = sub nsw i64 %64, %65
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp sle i32 -3, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* %14, align 4
  %72 = icmp sle i32 %71, 3
  br i1 %72, label %138, label %73

73:                                               ; preds = %70, %63
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %10, align 8
  %79 = ashr i64 %78, 3
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i64, i64* %10, align 8
  %84 = and i64 %83, 7
  %85 = sub nsw i64 7, %84
  %86 = trunc i64 %85 to i32
  %87 = ashr i32 %82, %86
  %88 = and i32 %87, 1
  %89 = call i64 @finddiff2(i8* %74, i64 %75, i64 %76, i32 %88)
  store i64 %89, i64* %12, align 8
  %90 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %5, align 8
  %91 = call i32 @putcode(%struct._HPDF_CCITT_Data* %90, i32* @horizcode)
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = add nsw i64 %92, %93
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %110, label %96

96:                                               ; preds = %73
  %97 = load i8*, i8** %6, align 8
  %98 = load i64, i64* %9, align 8
  %99 = ashr i64 %98, 3
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i64, i64* %9, align 8
  %104 = and i64 %103, 7
  %105 = sub nsw i64 7, %104
  %106 = trunc i64 %105 to i32
  %107 = ashr i32 %102, %106
  %108 = and i32 %107, 1
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %96, %73
  %111 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %5, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %9, align 8
  %114 = sub nsw i64 %112, %113
  %115 = load i32, i32* @TIFFFaxWhiteCodes, align 4
  %116 = call i32 @putspan(%struct._HPDF_CCITT_Data* %111, i64 %114, i32 %115)
  %117 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %5, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %10, align 8
  %120 = sub nsw i64 %118, %119
  %121 = load i32, i32* @TIFFFaxBlackCodes, align 4
  %122 = call i32 @putspan(%struct._HPDF_CCITT_Data* %117, i64 %120, i32 %121)
  br label %136

123:                                              ; preds = %96
  %124 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %5, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %9, align 8
  %127 = sub nsw i64 %125, %126
  %128 = load i32, i32* @TIFFFaxBlackCodes, align 4
  %129 = call i32 @putspan(%struct._HPDF_CCITT_Data* %124, i64 %127, i32 %128)
  %130 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %5, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %10, align 8
  %133 = sub nsw i64 %131, %132
  %134 = load i32, i32* @TIFFFaxWhiteCodes, align 4
  %135 = call i32 @putspan(%struct._HPDF_CCITT_Data* %130, i64 %133, i32 %134)
  br label %136

136:                                              ; preds = %123, %110
  %137 = load i64, i64* %12, align 8
  store i64 %137, i64* %9, align 8
  br label %147

138:                                              ; preds = %70
  %139 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %5, align 8
  %140 = load i32*, i32** @vcodes, align 8
  %141 = load i32, i32* %14, align 4
  %142 = add nsw i32 %141, 3
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = call i32 @putcode(%struct._HPDF_CCITT_Data* %139, i32* %144)
  %146 = load i64, i64* %10, align 8
  store i64 %146, i64* %9, align 8
  br label %147

147:                                              ; preds = %138, %136
  br label %152

148:                                              ; preds = %43
  %149 = load %struct._HPDF_CCITT_Data*, %struct._HPDF_CCITT_Data** %5, align 8
  %150 = call i32 @putcode(%struct._HPDF_CCITT_Data* %149, i32* @passcode)
  %151 = load i64, i64* %13, align 8
  store i64 %151, i64* %9, align 8
  br label %152

152:                                              ; preds = %148, %147
  %153 = load i64, i64* %9, align 8
  %154 = load i64, i64* %8, align 8
  %155 = icmp sge i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %209

157:                                              ; preds = %152
  %158 = load i8*, i8** %6, align 8
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* %8, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = load i64, i64* %9, align 8
  %163 = ashr i64 %162, 3
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i64, i64* %9, align 8
  %168 = and i64 %167, 7
  %169 = sub nsw i64 7, %168
  %170 = trunc i64 %169 to i32
  %171 = ashr i32 %166, %170
  %172 = and i32 %171, 1
  %173 = call i64 @finddiff(i8* %158, i64 %159, i64 %160, i32 %172)
  store i64 %173, i64* %10, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = load i64, i64* %9, align 8
  %176 = load i64, i64* %8, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = load i64, i64* %9, align 8
  %179 = ashr i64 %178, 3
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = load i64, i64* %9, align 8
  %184 = and i64 %183, 7
  %185 = sub nsw i64 7, %184
  %186 = trunc i64 %185 to i32
  %187 = ashr i32 %182, %186
  %188 = and i32 %187, 1
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i64 @finddiff(i8* %174, i64 %175, i64 %176, i32 %191)
  store i64 %192, i64* %11, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = load i64, i64* %11, align 8
  %195 = load i64, i64* %8, align 8
  %196 = load i8*, i8** %6, align 8
  %197 = load i64, i64* %9, align 8
  %198 = ashr i64 %197, 3
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = load i64, i64* %9, align 8
  %203 = and i64 %202, 7
  %204 = sub nsw i64 7, %203
  %205 = trunc i64 %204 to i32
  %206 = ashr i32 %201, %205
  %207 = and i32 %206, 1
  %208 = call i64 @finddiff(i8* %193, i64 %194, i64 %195, i32 %207)
  store i64 %208, i64* %11, align 8
  br label %43

209:                                              ; preds = %156
  %210 = load i32, i32* @HPDF_OK, align 4
  ret i32 %210
}

declare dso_local i64 @finddiff(i8*, i64, i64, i32) #1

declare dso_local i64 @finddiff2(i8*, i64, i64, i32) #1

declare dso_local i32 @putcode(%struct._HPDF_CCITT_Data*, i32*) #1

declare dso_local i32 @putspan(%struct._HPDF_CCITT_Data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
