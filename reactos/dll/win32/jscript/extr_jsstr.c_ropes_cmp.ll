; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_ropes_cmp.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsstr.c_ropes_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TMP_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.TYPE_5__*)* @ropes_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ropes_cmp(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %15 = load i32, i32* @TMP_BUF_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @TMP_BUF_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @jsstr_length(i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @jsstr_length(i32* %26)
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %60, %2
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @min(i32 %30, i32 %31)
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @min(i32 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = sub i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* @TMP_BUF_SIZE, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @TMP_BUF_SIZE, align 4
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %43, %34
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @jsstr_rope_extract(%struct.TYPE_5__* %46, i32 %47, i32 %48, i32* %18)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @jsstr_rope_extract(%struct.TYPE_5__* %50, i32 %51, i32 %52, i32* %21)
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @memcmp(i32* %18, i32* %21, i32 %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %13, align 4
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %68

60:                                               ; preds = %45
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %28

64:                                               ; preds = %28
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub i32 %65, %66
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %68

68:                                               ; preds = %64, %58
  %69 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @jsstr_length(i32*) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @jsstr_rope_extract(%struct.TYPE_5__*, i32, i32, i32*) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
