; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_output_utf8.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_sjson.c_output_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @output_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_utf8(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i8], align 1
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  store i8* %7, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 128
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %6, align 8
  store i8 %12, i8* %13, align 1
  br label %98

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2048
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  %20 = sdiv i32 %19, 64
  %21 = add nsw i32 192, %20
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  store i8 %22, i8* %23, align 1
  %25 = load i32, i32* %4, align 4
  %26 = srem i32 %25, 64
  %27 = add nsw i32 128, %26
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  store i8 %28, i8* %29, align 1
  br label %97

31:                                               ; preds = %15
  %32 = load i32, i32* %4, align 4
  %33 = sub i32 %32, 55296
  %34 = icmp ult i32 %33, 2048
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %6, align 8
  store i8 63, i8* %36, align 1
  br label %96

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 65536
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = sdiv i32 %42, 4096
  %44 = add nsw i32 224, %43
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  store i8 %45, i8* %46, align 1
  %48 = load i32, i32* %4, align 4
  %49 = sdiv i32 %48, 64
  %50 = srem i32 %49, 64
  %51 = add nsw i32 128, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i32, i32* %4, align 4
  %56 = srem i32 %55, 64
  %57 = add nsw i32 128, %56
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  store i8 %58, i8* %59, align 1
  br label %95

61:                                               ; preds = %38
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %62, 1114112
  br i1 %63, label %64, label %91

64:                                               ; preds = %61
  %65 = load i32, i32* %4, align 4
  %66 = sdiv i32 %65, 262144
  %67 = add nsw i32 240, %66
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %6, align 8
  store i8 %68, i8* %69, align 1
  %71 = load i32, i32* %4, align 4
  %72 = sdiv i32 %71, 4096
  %73 = srem i32 %72, 64
  %74 = add nsw i32 128, %73
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %6, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i32, i32* %4, align 4
  %79 = sdiv i32 %78, 64
  %80 = srem i32 %79, 64
  %81 = add nsw i32 128, %80
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  store i8 %82, i8* %83, align 1
  %85 = load i32, i32* %4, align 4
  %86 = srem i32 %85, 64
  %87 = add nsw i32 128, %86
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %6, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %6, align 8
  store i8 %88, i8* %89, align 1
  br label %94

91:                                               ; preds = %61
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %6, align 8
  store i8 63, i8* %92, align 1
  br label %94

94:                                               ; preds = %91, %64
  br label %95

95:                                               ; preds = %94, %41
  br label %96

96:                                               ; preds = %95, %35
  br label %97

97:                                               ; preds = %96, %18
  br label %98

98:                                               ; preds = %97, %10
  %99 = load i32*, i32** %3, align 8
  %100 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i64 0, i64 0
  %103 = ptrtoint i8* %101 to i64
  %104 = ptrtoint i8* %102 to i64
  %105 = sub i64 %103, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @luaL_addlstring(i32* %99, i8* %100, i32 %106)
  ret void
}

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
