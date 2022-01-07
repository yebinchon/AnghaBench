; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_base64.c_encodeBase64A.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_base64.c_encodeBase64A.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"bytes is %d, pad bytes is %d\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@b64 = common dso_local global i8** null, align 8
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i8*, i32*)* @encodeBase64A to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encodeBase64A(i32* %0, i32 %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32*, i32** %7, align 8
  store i32* %19, i32** %14, align 8
  %20 = load i32, i32* %8, align 4
  %21 = mul nsw i32 %20, 8
  %22 = add nsw i32 %21, 5
  %23 = sdiv i32 %22, 6
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = srem i32 %24, 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  %29 = srem i32 %28, 4
  %30 = sub nsw i32 4, %29
  br label %32

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %31, %27
  %33 = phi i32 [ %30, %27 ], [ 0, %31 ]
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = sdiv i32 %40, 64
  %42 = load i32, i32* %17, align 4
  %43 = srem i32 %42, 64
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = add nsw i32 %41, %46
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @strlen(i32 %48)
  %50 = mul nsw i32 %47, %49
  %51 = load i32, i32* %17, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %55, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %32
  %60 = load i32, i32* %17, align 4
  %61 = load i32*, i32** %11, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  store i32 %62, i32* %6, align 4
  br label %236

63:                                               ; preds = %32
  %64 = load i32, i32* %17, align 4
  %65 = load i32*, i32** %11, align 8
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %8, align 4
  %68 = sdiv i32 %67, 3
  store i32 %68, i32* %12, align 4
  %69 = load i8*, i8** %10, align 8
  store i8* %69, i8** %18, align 8
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %89, %66
  %71 = load i32, i32* %12, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %155

73:                                               ; preds = %70
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = srem i32 %77, 64
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i8*, i8** %18, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @strcpy(i8* %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @strlen(i32 %84)
  %86 = load i8*, i8** %18, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %18, align 8
  br label %89

89:                                               ; preds = %80, %76, %73
  %90 = load i8**, i8*** @b64, align 8
  %91 = load i32*, i32** %14, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %93, 2
  %95 = and i32 %94, 63
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %90, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %98 to i8
  %100 = load i8*, i8** %18, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %18, align 8
  store i8 %99, i8* %100, align 1
  %102 = load i8**, i8*** @b64, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 4
  %107 = and i32 %106, 48
  %108 = load i32*, i32** %14, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = ashr i32 %110, 4
  %112 = and i32 %111, 15
  %113 = or i32 %107, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %102, i64 %114
  %116 = load i8*, i8** %115, align 8
  %117 = ptrtoint i8* %116 to i8
  %118 = load i8*, i8** %18, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %18, align 8
  store i8 %117, i8* %118, align 1
  %120 = load i8**, i8*** @b64, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 2
  %125 = and i32 %124, 60
  %126 = load i32*, i32** %14, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 6
  %130 = and i32 %129, 3
  %131 = or i32 %125, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %120, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = ptrtoint i8* %134 to i8
  %136 = load i8*, i8** %18, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %18, align 8
  store i8 %135, i8* %136, align 1
  %138 = load i8**, i8*** @b64, align 8
  %139 = load i32*, i32** %14, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 63
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %138, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = ptrtoint i8* %145 to i8
  %147 = load i8*, i8** %18, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %18, align 8
  store i8 %146, i8* %147, align 1
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 4
  store i32 %150, i32* %13, align 4
  %151 = load i32*, i32** %14, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  store i32* %152, i32** %14, align 8
  %153 = load i32, i32* %12, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %12, align 4
  br label %70

155:                                              ; preds = %70
  %156 = load i32, i32* %16, align 4
  switch i32 %156, label %231 [
    i32 1, label %157
    i32 2, label %202
  ]

157:                                              ; preds = %155
  %158 = load i8**, i8*** @b64, align 8
  %159 = load i32*, i32** %14, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = ashr i32 %161, 2
  %163 = and i32 %162, 63
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8*, i8** %158, i64 %164
  %166 = load i8*, i8** %165, align 8
  %167 = ptrtoint i8* %166 to i8
  %168 = load i8*, i8** %18, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %18, align 8
  store i8 %167, i8* %168, align 1
  %170 = load i8**, i8*** @b64, align 8
  %171 = load i32*, i32** %14, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 4
  %175 = and i32 %174, 48
  %176 = load i32*, i32** %14, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = ashr i32 %178, 4
  %180 = and i32 %179, 15
  %181 = or i32 %175, %180
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %170, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = ptrtoint i8* %184 to i8
  %186 = load i8*, i8** %18, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %18, align 8
  store i8 %185, i8* %186, align 1
  %188 = load i8**, i8*** @b64, align 8
  %189 = load i32*, i32** %14, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = shl i32 %191, 2
  %193 = and i32 %192, 60
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %188, i64 %194
  %196 = load i8*, i8** %195, align 8
  %197 = ptrtoint i8* %196 to i8
  %198 = load i8*, i8** %18, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %18, align 8
  store i8 %197, i8* %198, align 1
  %200 = load i8*, i8** %18, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %18, align 8
  store i8 61, i8* %200, align 1
  br label %231

202:                                              ; preds = %155
  %203 = load i8**, i8*** @b64, align 8
  %204 = load i32*, i32** %14, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = ashr i32 %206, 2
  %208 = and i32 %207, 63
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %203, i64 %209
  %211 = load i8*, i8** %210, align 8
  %212 = ptrtoint i8* %211 to i8
  %213 = load i8*, i8** %18, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %214, i8** %18, align 8
  store i8 %212, i8* %213, align 1
  %215 = load i8**, i8*** @b64, align 8
  %216 = load i32*, i32** %14, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = shl i32 %218, 4
  %220 = and i32 %219, 48
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %215, i64 %221
  %223 = load i8*, i8** %222, align 8
  %224 = ptrtoint i8* %223 to i8
  %225 = load i8*, i8** %18, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %18, align 8
  store i8 %224, i8* %225, align 1
  %227 = load i8*, i8** %18, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %18, align 8
  store i8 61, i8* %227, align 1
  %229 = load i8*, i8** %18, align 8
  %230 = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %230, i8** %18, align 8
  store i8 61, i8* %229, align 1
  br label %231

231:                                              ; preds = %155, %202, %157
  %232 = load i8*, i8** %18, align 8
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @strcpy(i8* %232, i32 %233)
  %235 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %235, i32* %6, align 4
  br label %236

236:                                              ; preds = %231, %59
  %237 = load i32, i32* %6, align 4
  ret i32 %237
}

declare dso_local i32 @TRACE(i8*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
