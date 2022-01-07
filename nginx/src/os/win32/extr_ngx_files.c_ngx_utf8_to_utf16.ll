; ModuleID = '/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_files.c_ngx_utf8_to_utf16.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/win32/extr_ngx_files.c_ngx_utf8_to_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_EILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i32*, i64*)* @ngx_utf8_to_utf16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @ngx_utf8_to_utf16(i8** %0, i32* %1, i64* %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i8**, i8*** %5, align 8
  store i8** %13, i8*** %9, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  store i8** %17, i8*** %10, align 8
  br label %18

18:                                               ; preds = %88, %71, %45, %3
  %19 = load i8**, i8*** %9, align 8
  %20 = load i8**, i8*** %10, align 8
  %21 = icmp ult i8** %19, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %18
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 128
  br i1 %25, label %26, label %48

26:                                               ; preds = %22
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load i8**, i8*** %9, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %9, align 8
  store i8* %30, i8** %31, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %26
  %37 = load i8**, i8*** %9, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = ptrtoint i8** %37 to i64
  %40 = ptrtoint i8** %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 8
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  %44 = load i8**, i8*** %5, align 8
  store i8** %44, i8*** %4, align 8
  br label %185

45:                                               ; preds = %26
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %8, align 8
  br label %18

48:                                               ; preds = %22
  %49 = load i8**, i8*** %9, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load i8**, i8*** %10, align 8
  %52 = icmp eq i8** %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i8**, i8*** %9, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = ptrtoint i8** %54 to i64
  %57 = ptrtoint i8** %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 8
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  br label %94

61:                                               ; preds = %48
  %62 = call i32 @ngx_utf8_decode(i32** %8, i32 4)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp sgt i32 %63, 1114111
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @NGX_EILSEQ, align 4
  %67 = call i32 @ngx_set_errno(i32 %66)
  store i8** null, i8*** %4, align 8
  br label %185

68:                                               ; preds = %61
  %69 = load i32, i32* %11, align 4
  %70 = icmp sgt i32 %69, 65535
  br i1 %70, label %71, label %88

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, 65536
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = ashr i32 %74, 10
  %76 = add nsw i32 55296, %75
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = load i8**, i8*** %9, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %9, align 8
  store i8* %78, i8** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, 1023
  %83 = add nsw i32 56320, %82
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load i8**, i8*** %9, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i32 1
  store i8** %87, i8*** %9, align 8
  store i8* %85, i8** %86, align 8
  br label %18

88:                                               ; preds = %68
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  %92 = load i8**, i8*** %9, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i32 1
  store i8** %93, i8*** %9, align 8
  store i8* %91, i8** %92, align 8
  br label %18

94:                                               ; preds = %53, %18
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %6, align 8
  %97 = ptrtoint i32* %95 to i64
  %98 = ptrtoint i32* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 4
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @ngx_strlen(i32* %101)
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %100, %103
  %105 = add nsw i64 %104, 1
  %106 = mul i64 %105, 8
  %107 = trunc i64 %106 to i32
  %108 = call i8** @malloc(i32 %107)
  store i8** %108, i8*** %9, align 8
  %109 = load i8**, i8*** %9, align 8
  %110 = icmp eq i8** %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %94
  store i8** null, i8*** %4, align 8
  br label %185

112:                                              ; preds = %94
  %113 = load i8**, i8*** %9, align 8
  %114 = load i8**, i8*** %5, align 8
  %115 = load i64*, i64** %7, align 8
  %116 = load i64, i64* %115, align 8
  %117 = mul i64 %116, 2
  %118 = call i32 @ngx_memcpy(i8** %113, i8** %114, i64 %117)
  %119 = load i8**, i8*** %9, align 8
  store i8** %119, i8*** %5, align 8
  %120 = load i64*, i64** %7, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i8**, i8*** %9, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 %121
  store i8** %123, i8*** %9, align 8
  br label %124

124:                                              ; preds = %179, %162, %147, %112
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = icmp slt i32 %126, 128
  br i1 %127, label %128, label %150

128:                                              ; preds = %124
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = load i8**, i8*** %9, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i32 1
  store i8** %134, i8*** %9, align 8
  store i8* %132, i8** %133, align 8
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %128
  %139 = load i8**, i8*** %9, align 8
  %140 = load i8**, i8*** %5, align 8
  %141 = ptrtoint i8** %139 to i64
  %142 = ptrtoint i8** %140 to i64
  %143 = sub i64 %141, %142
  %144 = sdiv exact i64 %143, 8
  %145 = load i64*, i64** %7, align 8
  store i64 %144, i64* %145, align 8
  %146 = load i8**, i8*** %5, align 8
  store i8** %146, i8*** %4, align 8
  br label %185

147:                                              ; preds = %128
  %148 = load i32*, i32** %8, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %8, align 8
  br label %124

150:                                              ; preds = %124
  %151 = call i32 @ngx_utf8_decode(i32** %8, i32 4)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp sgt i32 %152, 1114111
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i8**, i8*** %5, align 8
  %156 = call i32 @ngx_free(i8** %155)
  %157 = load i32, i32* @NGX_EILSEQ, align 4
  %158 = call i32 @ngx_set_errno(i32 %157)
  store i8** null, i8*** %4, align 8
  br label %185

159:                                              ; preds = %150
  %160 = load i32, i32* %11, align 4
  %161 = icmp sgt i32 %160, 65535
  br i1 %161, label %162, label %179

162:                                              ; preds = %159
  %163 = load i32, i32* %11, align 4
  %164 = sub nsw i32 %163, 65536
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = ashr i32 %165, 10
  %167 = add nsw i32 55296, %166
  %168 = sext i32 %167 to i64
  %169 = inttoptr i64 %168 to i8*
  %170 = load i8**, i8*** %9, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i32 1
  store i8** %171, i8*** %9, align 8
  store i8* %169, i8** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = and i32 %172, 1023
  %174 = add nsw i32 56320, %173
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i8*
  %177 = load i8**, i8*** %9, align 8
  %178 = getelementptr inbounds i8*, i8** %177, i32 1
  store i8** %178, i8*** %9, align 8
  store i8* %176, i8** %177, align 8
  br label %124

179:                                              ; preds = %159
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = load i8**, i8*** %9, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i32 1
  store i8** %184, i8*** %9, align 8
  store i8* %182, i8** %183, align 8
  br label %124

185:                                              ; preds = %154, %138, %111, %65, %36
  %186 = load i8**, i8*** %4, align 8
  ret i8** %186
}

declare dso_local i32 @ngx_utf8_decode(i32**, i32) #1

declare dso_local i32 @ngx_set_errno(i32) #1

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @ngx_strlen(i32*) #1

declare dso_local i32 @ngx_memcpy(i8**, i8**, i64) #1

declare dso_local i32 @ngx_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
