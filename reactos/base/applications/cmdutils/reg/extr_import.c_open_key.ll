; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_open_key.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_open_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parser = type { i32*, i32 }

@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_ALL_ACCESS = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.parser*, i32*)* @open_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @open_key(%struct.parser* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.parser*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.parser* %0, %struct.parser** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.parser*, %struct.parser** %4, align 8
  %10 = call i32 @close_key(%struct.parser* %9)
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @parse_key_name(i32* %14, i32** %7)
  store i32 %15, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %2
  %18 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %18, i64* %3, align 8
  br label %50

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %23 = load i32, i32* @KEY_ALL_ACCESS, align 4
  %24 = load %struct.parser*, %struct.parser** %4, align 8
  %25 = getelementptr inbounds %struct.parser, %struct.parser* %24, i32 0, i32 0
  %26 = call i64 @RegCreateKeyExW(i32 %20, i32* %21, i32 0, i32* null, i32 %22, i32 %23, i32* null, i32** %25, i32* null)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @ERROR_SUCCESS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %19
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @lstrlenW(i32* %31)
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @heap_xalloc(i32 %36)
  %38 = load %struct.parser*, %struct.parser** %4, align 8
  %39 = getelementptr inbounds %struct.parser, %struct.parser* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.parser*, %struct.parser** %4, align 8
  %41 = getelementptr inbounds %struct.parser, %struct.parser* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @lstrcpyW(i32 %42, i32* %43)
  br label %48

45:                                               ; preds = %19
  %46 = load %struct.parser*, %struct.parser** %4, align 8
  %47 = getelementptr inbounds %struct.parser, %struct.parser* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %45, %30
  %49 = load i64, i64* %8, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %48, %17
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local i32 @close_key(%struct.parser*) #1

declare dso_local i32 @parse_key_name(i32*, i32**) #1

declare dso_local i64 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32**, i32*) #1

declare dso_local i32 @heap_xalloc(i32) #1

declare dso_local i32 @lstrlenW(i32*) #1

declare dso_local i32 @lstrcpyW(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
