; ModuleID = '/home/carl/AnghaBench/reactos/dll/directx/wine/msdmo/extr_dmoreg.c_write_types.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/directx/wine/msdmo/extr_dmoreg.c_write_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MSDMO_MAJOR_VERSION = common dso_local global i32 0, align 4
@REG_BINARY = common dso_local global i32 0, align 4
@REG_OPTION_NON_VOLATILE = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.TYPE_3__*, i32)* @write_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_types(i32 %0, i32* %1, %struct.TYPE_3__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [64 x i32], align 16
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @MSDMO_MAJOR_VERSION, align 4
  %17 = icmp sgt i32 %16, 5
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @REG_BINARY, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = bitcast %struct.TYPE_3__* %22 to i32*
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @RegSetValueExW(i32 %19, i32* %20, i32 0, i32 %21, i32* %23, i32 %27)
  store i32 %28, i32* %10, align 4
  br label %79

29:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %33 = load i32, i32* @KEY_WRITE, align 4
  %34 = call i32 @RegCreateKeyExW(i32 %30, i32* %31, i32 0, i32* null, i32 %32, i32 %33, i32* null, i32* %11, i32* null)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @HRESULT_FROM_WIN32(i32 %38)
  store i32 %39, i32* %5, align 4
  br label %82

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %45, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %76

45:                                               ; preds = %41
  %46 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = call i32 @GUIDToString(i32* %46, i32* %51)
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %55 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %56 = load i32, i32* @KEY_WRITE, align 4
  %57 = call i32 @RegCreateKeyExW(i32 %53, i32* %54, i32 0, i32* null, i32 %55, i32 %56, i32* null, i32* %12, i32* null)
  store i32 %57, i32* %10, align 4
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @GUIDToString(i32* %58, i32* %63)
  %65 = load i32, i32* %12, align 4
  %66 = getelementptr inbounds [64 x i32], [64 x i32]* %15, i64 0, i64 0
  %67 = load i32, i32* @REG_OPTION_NON_VOLATILE, align 4
  %68 = load i32, i32* @KEY_WRITE, align 4
  %69 = call i32 @RegCreateKeyExW(i32 %65, i32* %66, i32 0, i32* null, i32 %67, i32 %68, i32* null, i32* %13, i32* null)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @RegCloseKey(i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @RegCloseKey(i32 %72)
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %41

76:                                               ; preds = %41
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @RegCloseKey(i32 %77)
  br label %79

79:                                               ; preds = %76, %18
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @HRESULT_FROM_WIN32(i32 %80)
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %37
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @RegSetValueExW(i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i32) #1

declare dso_local i32 @GUIDToString(i32*, i32*) #1

declare dso_local i32 @RegCloseKey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
