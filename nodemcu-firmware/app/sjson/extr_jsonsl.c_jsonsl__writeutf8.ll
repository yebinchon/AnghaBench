; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl__writeutf8.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/sjson/extr_jsonsl.c_jsonsl__writeutf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*)* @jsonsl__writeutf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @jsonsl__writeutf8(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 128
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = trunc i32 %8 to i8
  %10 = load i8*, i8** %4, align 8
  store i8 %9, i8* %10, align 1
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %4, align 8
  br label %90

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 2048
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 6
  %19 = or i32 %18, 192
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %4, align 8
  store i8 %20, i8* %21, align 1
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %4, align 8
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 63
  %26 = or i32 %25, 128
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %4, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  br label %89

31:                                               ; preds = %13
  %32 = load i32, i32* %3, align 4
  %33 = icmp slt i32 %32, 65536
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load i32, i32* %3, align 4
  %36 = ashr i32 %35, 12
  %37 = or i32 %36, 224
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %4, align 8
  store i8 %38, i8* %39, align 1
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  %42 = load i32, i32* %3, align 4
  %43 = ashr i32 %42, 6
  %44 = and i32 %43, 63
  %45 = or i32 %44, 128
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %4, align 8
  store i8 %46, i8* %47, align 1
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, 63
  %52 = or i32 %51, 128
  %53 = trunc i32 %52 to i8
  %54 = load i8*, i8** %4, align 8
  store i8 %53, i8* %54, align 1
  %55 = load i8*, i8** %4, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %4, align 8
  br label %88

57:                                               ; preds = %31
  %58 = load i32, i32* %3, align 4
  %59 = ashr i32 %58, 18
  %60 = or i32 %59, 240
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %4, align 8
  store i8 %61, i8* %62, align 1
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %4, align 8
  %65 = load i32, i32* %3, align 4
  %66 = ashr i32 %65, 12
  %67 = and i32 %66, 63
  %68 = or i32 %67, 128
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %4, align 8
  store i8 %69, i8* %70, align 1
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %4, align 8
  %73 = load i32, i32* %3, align 4
  %74 = ashr i32 %73, 6
  %75 = and i32 %74, 63
  %76 = or i32 %75, 128
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %4, align 8
  store i8 %77, i8* %78, align 1
  %79 = load i8*, i8** %4, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %4, align 8
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, 63
  %83 = or i32 %82, 128
  %84 = trunc i32 %83 to i8
  %85 = load i8*, i8** %4, align 8
  store i8 %84, i8* %85, align 1
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %4, align 8
  br label %88

88:                                               ; preds = %57, %34
  br label %89

89:                                               ; preds = %88, %16
  br label %90

90:                                               ; preds = %89, %7
  %91 = load i8*, i8** %4, align 8
  ret i8* %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
