; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_get_wbmp.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_image.c_php_get_wbmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfxinfo = type { i32, i32 }

@IMAGE_FILETYPE_WBMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.gfxinfo**, i32)* @php_get_wbmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @php_get_wbmp(i32* %0, %struct.gfxinfo** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.gfxinfo**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.gfxinfo** %1, %struct.gfxinfo*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @php_stream_rewind(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %95

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @php_stream_getc(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %95

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %28, %20
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @php_stream_getc(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %95

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 128
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %21, label %32

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @php_stream_getc(i32* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %95

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %40, 7
  %42 = load i32, i32* %8, align 4
  %43 = and i32 %42, 127
  %44 = or i32 %41, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp sgt i32 %45, 2048
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %95

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 128
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %33, label %53

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32*, i32** %5, align 8
  %56 = call i32 @php_stream_getc(i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %95

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %61, 7
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 127
  %65 = or i32 %62, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp sgt i32 %66, 2048
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %95

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 128
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %54, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77, %74
  store i32 0, i32* %4, align 4
  br label %95

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.gfxinfo**, %struct.gfxinfo*** %6, align 8
  %87 = load %struct.gfxinfo*, %struct.gfxinfo** %86, align 8
  %88 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.gfxinfo**, %struct.gfxinfo*** %6, align 8
  %91 = load %struct.gfxinfo*, %struct.gfxinfo** %90, align 8
  %92 = getelementptr inbounds %struct.gfxinfo, %struct.gfxinfo* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %84, %81
  %94 = load i32, i32* @IMAGE_FILETYPE_WBMP, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %93, %80, %68, %59, %47, %38, %26, %19, %14
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i64 @php_stream_rewind(i32*) #1

declare dso_local i32 @php_stream_getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
