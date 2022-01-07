; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_NativeFunction_toString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_function.c_NativeFunction_toString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@NativeFunction_toString.native_prefixW = internal constant [10 x i8] c"\0Afunction ", align 1
@NativeFunction_toString.native_suffixW = internal constant [25 x i8] c"() {\0A    [native code]\0A}\0A", align 16
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**)* @NativeFunction_toString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NativeFunction_toString(i32* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %6, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @lstrlenW(i8* %19)
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i32 [ %20, %16 ], [ 0, %21 ]
  store i32 %23, i32* %7, align 4
  %24 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @NativeFunction_toString.native_prefixW, i64 0, i64 0))
  %25 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @NativeFunction_toString.native_suffixW, i64 0, i64 0))
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = call i32* @jsstr_alloc_buf(i64 %29, i8** %9)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  %34 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %34, i32* %3, align 4
  br label %59

35:                                               ; preds = %22
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @memcpy(i8* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @NativeFunction_toString.native_prefixW, i64 0, i64 0), i32 10)
  %38 = call i64 @ARRAY_SIZE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @NativeFunction_toString.native_prefixW, i64 0, i64 0))
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 %38
  store i8* %40, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 1
  %48 = trunc i64 %47 to i32
  %49 = call i32 @memcpy(i8* %41, i8* %44, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %9, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @memcpy(i8* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @NativeFunction_toString.native_suffixW, i64 0, i64 0), i32 25)
  %56 = load i32*, i32** %8, align 8
  %57 = load i32**, i32*** %5, align 8
  store i32* %56, i32** %57, align 8
  %58 = load i32, i32* @S_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %35, %33
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @lstrlenW(i8*) #1

declare dso_local i32* @jsstr_alloc_buf(i64, i8**) #1

declare dso_local i64 @ARRAY_SIZE(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
