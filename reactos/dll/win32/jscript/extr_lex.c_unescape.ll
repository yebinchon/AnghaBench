; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_unescape.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_lex.c_unescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unescape(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i64*, i64** %5, align 8
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %7, align 8
  store i8* %15, i8** %6, align 8
  br label %16

16:                                               ; preds = %206, %25, %2
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %212

20:                                               ; preds = %16
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 92
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %7, align 8
  %28 = load i8, i8* %26, align 1
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  store i8 %28, i8* %29, align 1
  br label %16

31:                                               ; preds = %20
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %220

38:                                               ; preds = %31
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  switch i32 %41, label %148 [
    i32 39, label %42
    i32 34, label %42
    i32 92, label %42
    i32 98, label %45
    i32 116, label %46
    i32 110, label %47
    i32 102, label %48
    i32 114, label %49
    i32 120, label %50
    i32 117, label %84
  ]

42:                                               ; preds = %38, %38, %38
  %43 = load i8*, i8** %7, align 8
  %44 = load i8, i8* %43, align 1
  store i8 %44, i8* %8, align 1
  br label %206

45:                                               ; preds = %38
  store i8 8, i8* %8, align 1
  br label %206

46:                                               ; preds = %38
  store i8 9, i8* %8, align 1
  br label %206

47:                                               ; preds = %38
  store i8 10, i8* %8, align 1
  br label %206

48:                                               ; preds = %38
  store i8 12, i8* %8, align 1
  br label %206

49:                                               ; preds = %38
  store i8 13, i8* %8, align 1
  br label %206

50:                                               ; preds = %38
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8*, i8** %9, align 8
  %54 = icmp uge i8* %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %3, align 4
  br label %220

57:                                               ; preds = %50
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i32 @hex_to_int(i8 signext %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %3, align 4
  br label %220

66:                                               ; preds = %57
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %67, 4
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %8, align 1
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i32 @hex_to_int(i8 signext %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %3, align 4
  br label %220

78:                                               ; preds = %66
  %79 = load i32, i32* %10, align 4
  %80 = load i8, i8* %8, align 1
  %81 = sext i8 %80 to i32
  %82 = add nsw i32 %81, %79
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %8, align 1
  br label %206

84:                                               ; preds = %38
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 4
  %87 = load i8*, i8** %9, align 8
  %88 = icmp uge i8* %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* @FALSE, align 4
  store i32 %90, i32* %3, align 4
  br label %220

91:                                               ; preds = %84
  %92 = load i8*, i8** %7, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %7, align 8
  %94 = load i8, i8* %93, align 1
  %95 = call i32 @hex_to_int(i8 signext %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %3, align 4
  br label %220

100:                                              ; preds = %91
  %101 = load i32, i32* %10, align 4
  %102 = shl i32 %101, 12
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %8, align 1
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %7, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @hex_to_int(i8 signext %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, -1
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i32, i32* @FALSE, align 4
  store i32 %111, i32* %3, align 4
  br label %220

112:                                              ; preds = %100
  %113 = load i32, i32* %10, align 4
  %114 = shl i32 %113, 8
  %115 = load i8, i8* %8, align 1
  %116 = sext i8 %115 to i32
  %117 = add nsw i32 %116, %114
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %8, align 1
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %7, align 8
  %121 = load i8, i8* %120, align 1
  %122 = call i32 @hex_to_int(i8 signext %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i32, i32* @FALSE, align 4
  store i32 %126, i32* %3, align 4
  br label %220

127:                                              ; preds = %112
  %128 = load i32, i32* %10, align 4
  %129 = shl i32 %128, 4
  %130 = load i8, i8* %8, align 1
  %131 = sext i8 %130 to i32
  %132 = add nsw i32 %131, %129
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %8, align 1
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %7, align 8
  %136 = load i8, i8* %135, align 1
  %137 = call i32 @hex_to_int(i8 signext %136)
  store i32 %137, i32* %10, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %142

140:                                              ; preds = %127
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %3, align 4
  br label %220

142:                                              ; preds = %127
  %143 = load i32, i32* %10, align 4
  %144 = load i8, i8* %8, align 1
  %145 = sext i8 %144 to i32
  %146 = add nsw i32 %145, %143
  %147 = trunc i32 %146 to i8
  store i8 %147, i8* %8, align 1
  br label %206

148:                                              ; preds = %38
  %149 = load i8*, i8** %7, align 8
  %150 = load i8, i8* %149, align 1
  %151 = call i32 @iswdigit(i8 signext %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %202

153:                                              ; preds = %148
  %154 = load i8*, i8** %7, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %7, align 8
  %156 = load i8, i8* %154, align 1
  %157 = sext i8 %156 to i32
  %158 = sub nsw i32 %157, 48
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %8, align 1
  %160 = load i8*, i8** %7, align 8
  %161 = load i8*, i8** %9, align 8
  %162 = icmp ult i8* %160, %161
  br i1 %162, label %163, label %199

163:                                              ; preds = %153
  %164 = load i8*, i8** %7, align 8
  %165 = load i8, i8* %164, align 1
  %166 = call i32 @iswdigit(i8 signext %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %199

168:                                              ; preds = %163
  %169 = load i8, i8* %8, align 1
  %170 = sext i8 %169 to i32
  %171 = mul nsw i32 %170, 8
  %172 = load i8*, i8** %7, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %7, align 8
  %174 = load i8, i8* %172, align 1
  %175 = sext i8 %174 to i32
  %176 = sub nsw i32 %175, 48
  %177 = add nsw i32 %171, %176
  %178 = trunc i32 %177 to i8
  store i8 %178, i8* %8, align 1
  %179 = load i8*, i8** %7, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = icmp ult i8* %179, %180
  br i1 %181, label %182, label %198

182:                                              ; preds = %168
  %183 = load i8*, i8** %7, align 8
  %184 = load i8, i8* %183, align 1
  %185 = call i32 @iswdigit(i8 signext %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %198

187:                                              ; preds = %182
  %188 = load i8, i8* %8, align 1
  %189 = sext i8 %188 to i32
  %190 = mul nsw i32 %189, 8
  %191 = load i8*, i8** %7, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %7, align 8
  %193 = load i8, i8* %191, align 1
  %194 = sext i8 %193 to i32
  %195 = sub nsw i32 %194, 48
  %196 = add nsw i32 %190, %195
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %8, align 1
  br label %198

198:                                              ; preds = %187, %182, %168
  br label %199

199:                                              ; preds = %198, %163, %153
  %200 = load i8*, i8** %7, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 -1
  store i8* %201, i8** %7, align 8
  br label %205

202:                                              ; preds = %148
  %203 = load i8*, i8** %7, align 8
  %204 = load i8, i8* %203, align 1
  store i8 %204, i8* %8, align 1
  br label %205

205:                                              ; preds = %202, %199
  br label %206

206:                                              ; preds = %205, %142, %78, %49, %48, %47, %46, %45, %42
  %207 = load i8, i8* %8, align 1
  %208 = load i8*, i8** %6, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %6, align 8
  store i8 %207, i8* %208, align 1
  %210 = load i8*, i8** %7, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %7, align 8
  br label %16

212:                                              ; preds = %16
  %213 = load i8*, i8** %6, align 8
  %214 = load i8*, i8** %4, align 8
  %215 = ptrtoint i8* %213 to i64
  %216 = ptrtoint i8* %214 to i64
  %217 = sub i64 %215, %216
  %218 = load i64*, i64** %5, align 8
  store i64 %217, i64* %218, align 8
  %219 = load i32, i32* @TRUE, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %212, %140, %125, %110, %98, %89, %76, %64, %55, %36
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local i32 @hex_to_int(i8 signext) #1

declare dso_local i32 @iswdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
