; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_do_attributeless_tag_format.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_string.c_do_attributeless_tag_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i8*)* @do_attributeless_tag_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_attributeless_tag_format(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @get_string_val(i32* %15, i32* %16, i32** %11)
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* %14, align 4
  %19 = call i64 @FAILED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %5, align 4
  br label %91

23:                                               ; preds = %4
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @jsstr_release(i32* %27)
  %29 = load i32, i32* @S_OK, align 4
  store i32 %29, i32* %5, align 4
  br label %91

30:                                               ; preds = %23
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @lstrlenW(i8* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i64 @jsstr_length(i32* %33)
  %35 = load i32, i32* %10, align 4
  %36 = mul i32 2, %35
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = add nsw i64 %38, 5
  %40 = call i32* @jsstr_alloc_buf(i64 %39, i8** %13)
  store i32* %40, i32** %12, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %30
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @jsstr_release(i32* %44)
  %46 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %46, i32* %5, align 4
  br label %91

47:                                               ; preds = %30
  %48 = load i8*, i8** %13, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %13, align 8
  store i8 60, i8* %48, align 1
  %50 = load i8*, i8** %13, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = mul i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memcpy(i8* %50, i8* %51, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = load i8*, i8** %13, align 8
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %13, align 8
  store i8 62, i8* %61, align 1
  %63 = load i32*, i32** %11, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @jsstr_flush(i32* %63, i8* %64)
  %66 = load i8*, i8** %13, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %13, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @jsstr_release(i32* %69)
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %13, align 8
  store i8 60, i8* %71, align 1
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %13, align 8
  store i8 47, i8* %73, align 1
  %75 = load i8*, i8** %13, align 8
  %76 = load i8*, i8** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = mul i64 %78, 1
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(i8* %75, i8* %76, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = load i8*, i8** %13, align 8
  %84 = zext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %13, align 8
  %86 = load i8*, i8** %13, align 8
  store i8 62, i8* %86, align 1
  %87 = load i32*, i32** %12, align 8
  %88 = call i32 @jsval_string(i32* %87)
  %89 = load i32*, i32** %8, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @S_OK, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %47, %43, %26, %21
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @get_string_val(i32*, i32*, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @jsstr_release(i32*) #1

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
