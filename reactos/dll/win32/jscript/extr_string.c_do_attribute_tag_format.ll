; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_do_attribute_tag_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_do_attribute_tag_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*, i32*, i8*, i8*)* @do_attribute_tag_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_attribute_tag_format(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* null, i32** %17, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @get_string_val(i32* %23, i32* %24, i32** %16)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = call i64 @FAILED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* %18, align 4
  store i32 %30, i32* %8, align 4
  br label %148

31:                                               ; preds = %7
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @to_string(i32* %35, i32 %38, i32** %17)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %18, align 4
  %41 = call i64 @FAILED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32*, i32** %16, align 8
  %45 = call i32 @jsstr_release(i32* %44)
  %46 = load i32, i32* %18, align 4
  store i32 %46, i32* %8, align 4
  br label %148

47:                                               ; preds = %34
  br label %50

48:                                               ; preds = %31
  %49 = call i32* (...) @jsstr_undefined()
  store i32* %49, i32** %17, align 8
  br label %50

50:                                               ; preds = %48, %47
  %51 = load i32*, i32** %13, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %142

53:                                               ; preds = %50
  %54 = load i8*, i8** %15, align 8
  %55 = call i32 @lstrlenW(i8* %54)
  store i32 %55, i32* %19, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @lstrlenW(i8* %56)
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = mul i32 2, %58
  %60 = load i32, i32* %19, align 4
  %61 = add i32 %59, %60
  %62 = zext i32 %61 to i64
  %63 = load i32*, i32** %17, align 8
  %64 = call i64 @jsstr_length(i32* %63)
  %65 = add nsw i64 %62, %64
  %66 = load i32*, i32** %16, align 8
  %67 = call i64 @jsstr_length(i32* %66)
  %68 = add nsw i64 %65, %67
  %69 = add nsw i64 %68, 9
  %70 = call i32* @jsstr_alloc_buf(i64 %69, i8** %22)
  store i32* %70, i32** %21, align 8
  %71 = load i32*, i32** %21, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %139

73:                                               ; preds = %53
  %74 = load i8*, i8** %22, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %22, align 8
  store i8 60, i8* %74, align 1
  %76 = load i8*, i8** %22, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = load i32, i32* %20, align 4
  %79 = zext i32 %78 to i64
  %80 = mul i64 %79, 1
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcpy(i8* %76, i8* %77, i32 %81)
  %83 = load i32, i32* %20, align 4
  %84 = load i8*, i8** %22, align 8
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %22, align 8
  %87 = load i8*, i8** %22, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %22, align 8
  store i8 32, i8* %87, align 1
  %89 = load i8*, i8** %22, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = load i32, i32* %19, align 4
  %92 = zext i32 %91 to i64
  %93 = mul i64 %92, 1
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i8* %89, i8* %90, i32 %94)
  %96 = load i32, i32* %19, align 4
  %97 = load i8*, i8** %22, align 8
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %22, align 8
  %100 = load i8*, i8** %22, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %22, align 8
  store i8 61, i8* %100, align 1
  %102 = load i8*, i8** %22, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %22, align 8
  store i8 34, i8* %102, align 1
  %104 = load i32*, i32** %17, align 8
  %105 = load i8*, i8** %22, align 8
  %106 = call i32 @jsstr_flush(i32* %104, i8* %105)
  %107 = load i8*, i8** %22, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %22, align 8
  %110 = load i8*, i8** %22, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %22, align 8
  store i8 34, i8* %110, align 1
  %112 = load i8*, i8** %22, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %22, align 8
  store i8 62, i8* %112, align 1
  %114 = load i32*, i32** %16, align 8
  %115 = load i8*, i8** %22, align 8
  %116 = call i32 @jsstr_flush(i32* %114, i8* %115)
  %117 = load i8*, i8** %22, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %22, align 8
  %120 = load i8*, i8** %22, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %22, align 8
  store i8 60, i8* %120, align 1
  %122 = load i8*, i8** %22, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %22, align 8
  store i8 47, i8* %122, align 1
  %124 = load i8*, i8** %22, align 8
  %125 = load i8*, i8** %14, align 8
  %126 = load i32, i32* %20, align 4
  %127 = zext i32 %126 to i64
  %128 = mul i64 %127, 1
  %129 = trunc i64 %128 to i32
  %130 = call i32 @memcpy(i8* %124, i8* %125, i32 %129)
  %131 = load i32, i32* %20, align 4
  %132 = load i8*, i8** %22, align 8
  %133 = zext i32 %131 to i64
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8* %134, i8** %22, align 8
  %135 = load i8*, i8** %22, align 8
  store i8 62, i8* %135, align 1
  %136 = load i32*, i32** %21, align 8
  %137 = call i32 @jsval_string(i32* %136)
  %138 = load i32*, i32** %13, align 8
  store i32 %137, i32* %138, align 4
  br label %141

139:                                              ; preds = %53
  %140 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %140, i32* %18, align 4
  br label %141

141:                                              ; preds = %139, %73
  br label %142

142:                                              ; preds = %141, %50
  %143 = load i32*, i32** %17, align 8
  %144 = call i32 @jsstr_release(i32* %143)
  %145 = load i32*, i32** %16, align 8
  %146 = call i32 @jsstr_release(i32* %145)
  %147 = load i32, i32* %18, align 4
  store i32 %147, i32* %8, align 4
  br label %148

148:                                              ; preds = %142, %43, %29
  %149 = load i32, i32* %8, align 4
  ret i32 %149
}

declare dso_local i32 @get_string_val(i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @to_string(i32*, i32, i32**) #1

declare dso_local i32 @jsstr_release(i32*) #1

declare dso_local i32* @jsstr_undefined(...) #1

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32* @jsstr_alloc_buf(i64, i8**) #1

declare dso_local i64 @jsstr_length(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @jsstr_flush(i32*, i8*) #1

declare dso_local i32 @jsval_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
