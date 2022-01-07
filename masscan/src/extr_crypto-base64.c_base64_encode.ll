; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_crypto-base64.c_base64_encode.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_crypto-base64.c_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_encode.b64 = internal global i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @base64_encode(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %8, align 8
  store i8* %18, i8** %13, align 8
  br label %19

19:                                               ; preds = %31, %4
  %20 = load i64, i64* %10, align 8
  %21 = add i64 %20, 3
  %22 = load i64, i64* %9, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %101

24:                                               ; preds = %19
  %25 = load i64, i64* %11, align 8
  %26 = add i64 %25, 4
  %27 = load i64, i64* %7, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i64, i64* %11, align 8
  store i64 %30, i64* %5, align 8
  br label %217

31:                                               ; preds = %24
  %32 = load i8*, i8** %13, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = shl i32 %36, 16
  %38 = load i8*, i8** %13, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = or i32 %37, %44
  %46 = load i8*, i8** %13, align 8
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 2
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %45, %51
  store i32 %52, i32* %14, align 4
  %53 = load i8*, i8** @base64_encode.b64, align 8
  %54 = load i32, i32* %14, align 4
  %55 = lshr i32 %54, 18
  %56 = and i32 %55, 63
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %53, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %11, align 8
  %62 = add i64 %61, 0
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 %59, i8* %63, align 1
  %64 = load i8*, i8** @base64_encode.b64, align 8
  %65 = load i32, i32* %14, align 4
  %66 = lshr i32 %65, 12
  %67 = and i32 %66, 63
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8 %70, i8* %74, align 1
  %75 = load i8*, i8** @base64_encode.b64, align 8
  %76 = load i32, i32* %14, align 4
  %77 = lshr i32 %76, 6
  %78 = and i32 %77, 63
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %12, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 2
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8 %81, i8* %85, align 1
  %86 = load i8*, i8** @base64_encode.b64, align 8
  %87 = load i32, i32* %14, align 4
  %88 = lshr i32 %87, 0
  %89 = and i32 %88, 63
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %86, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %12, align 8
  %94 = load i64, i64* %11, align 8
  %95 = add i64 %94, 3
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 %92, i8* %96, align 1
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, 3
  store i64 %98, i64* %10, align 8
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, 4
  store i64 %100, i64* %11, align 8
  br label %19

101:                                              ; preds = %19
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, 2
  %104 = load i64, i64* %9, align 8
  %105 = icmp ule i64 %103, %104
  br i1 %105, label %106, label %165

106:                                              ; preds = %101
  %107 = load i64, i64* %11, align 8
  %108 = add i64 %107, 4
  %109 = load i64, i64* %7, align 8
  %110 = icmp ule i64 %108, %109
  br i1 %110, label %111, label %165

111:                                              ; preds = %106
  %112 = load i8*, i8** %13, align 8
  %113 = load i64, i64* %10, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 16
  %118 = load i8*, i8** %13, align 8
  %119 = load i64, i64* %10, align 8
  %120 = add i64 %119, 1
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 8
  %125 = or i32 %117, %124
  store i32 %125, i32* %15, align 4
  %126 = load i8*, i8** @base64_encode.b64, align 8
  %127 = load i32, i32* %15, align 4
  %128 = lshr i32 %127, 18
  %129 = and i32 %128, 63
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %126, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = load i8*, i8** %12, align 8
  %134 = load i64, i64* %11, align 8
  %135 = add i64 %134, 0
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 %132, i8* %136, align 1
  %137 = load i8*, i8** @base64_encode.b64, align 8
  %138 = load i32, i32* %15, align 4
  %139 = lshr i32 %138, 12
  %140 = and i32 %139, 63
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %137, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = load i8*, i8** %12, align 8
  %145 = load i64, i64* %11, align 8
  %146 = add i64 %145, 1
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8 %143, i8* %147, align 1
  %148 = load i8*, i8** @base64_encode.b64, align 8
  %149 = load i32, i32* %15, align 4
  %150 = lshr i32 %149, 6
  %151 = and i32 %150, 63
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %148, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = load i8*, i8** %12, align 8
  %156 = load i64, i64* %11, align 8
  %157 = add i64 %156, 2
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  store i8 %154, i8* %158, align 1
  %159 = load i8*, i8** %12, align 8
  %160 = load i64, i64* %11, align 8
  %161 = add i64 %160, 3
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  store i8 61, i8* %162, align 1
  %163 = load i64, i64* %11, align 8
  %164 = add i64 %163, 4
  store i64 %164, i64* %11, align 8
  br label %215

165:                                              ; preds = %106, %101
  %166 = load i64, i64* %10, align 8
  %167 = add i64 %166, 1
  %168 = load i64, i64* %9, align 8
  %169 = icmp ule i64 %167, %168
  br i1 %169, label %170, label %214

170:                                              ; preds = %165
  %171 = load i64, i64* %11, align 8
  %172 = add i64 %171, 4
  %173 = load i64, i64* %7, align 8
  %174 = icmp ule i64 %172, %173
  br i1 %174, label %175, label %214

175:                                              ; preds = %170
  %176 = load i8*, i8** %13, align 8
  %177 = load i64, i64* %10, align 8
  %178 = getelementptr inbounds i8, i8* %176, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = shl i32 %180, 16
  store i32 %181, i32* %16, align 4
  %182 = load i8*, i8** @base64_encode.b64, align 8
  %183 = load i32, i32* %16, align 4
  %184 = lshr i32 %183, 18
  %185 = and i32 %184, 63
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = load i8*, i8** %12, align 8
  %190 = load i64, i64* %11, align 8
  %191 = add i64 %190, 0
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  store i8 %188, i8* %192, align 1
  %193 = load i8*, i8** @base64_encode.b64, align 8
  %194 = load i32, i32* %16, align 4
  %195 = lshr i32 %194, 12
  %196 = and i32 %195, 63
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %193, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = load i8*, i8** %12, align 8
  %201 = load i64, i64* %11, align 8
  %202 = add i64 %201, 1
  %203 = getelementptr inbounds i8, i8* %200, i64 %202
  store i8 %199, i8* %203, align 1
  %204 = load i8*, i8** %12, align 8
  %205 = load i64, i64* %11, align 8
  %206 = add i64 %205, 2
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8 61, i8* %207, align 1
  %208 = load i8*, i8** %12, align 8
  %209 = load i64, i64* %11, align 8
  %210 = add i64 %209, 3
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  store i8 61, i8* %211, align 1
  %212 = load i64, i64* %11, align 8
  %213 = add i64 %212, 4
  store i64 %213, i64* %11, align 8
  br label %214

214:                                              ; preds = %175, %170, %165
  br label %215

215:                                              ; preds = %214, %111
  %216 = load i64, i64* %11, align 8
  store i64 %216, i64* %5, align 8
  br label %217

217:                                              ; preds = %215, %29
  %218 = load i64, i64* %5, align 8
  ret i64 %218
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
