; ModuleID = '/home/carl/AnghaBench/openwrt/package/libs/libiconv/src/extr_iconv.c_utf8enc_wchar.c'
source_filename = "/home/carl/AnghaBench/openwrt/package/libs/libiconv/src/extr_iconv.c_utf8enc_wchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @utf8enc_wchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8enc_wchar(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp sle i32 %6, 127
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = trunc i32 %9 to i8
  %11 = load i8*, i8** %4, align 8
  store i8 %10, i8* %11, align 1
  store i32 1, i32* %3, align 4
  br label %87

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %13, 2047
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 6
  %18 = and i32 %17, 31
  %19 = or i32 %18, 192
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  store i8 %20, i8* %21, align 1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 63
  %25 = or i32 %24, 128
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %4, align 8
  store i8 %26, i8* %27, align 1
  store i32 2, i32* %3, align 4
  br label %87

29:                                               ; preds = %12
  %30 = load i32, i32* %5, align 4
  %31 = icmp sle i32 %30, 65535
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 12
  %35 = and i32 %34, 15
  %36 = or i32 %35, 224
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  store i8 %37, i8* %38, align 1
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 6
  %42 = and i32 %41, 63
  %43 = or i32 %42, 128
  %44 = trunc i32 %43 to i8
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  store i8 %44, i8* %45, align 1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 63
  %49 = or i32 %48, 128
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %4, align 8
  store i8 %50, i8* %51, align 1
  store i32 3, i32* %3, align 4
  br label %87

53:                                               ; preds = %29
  %54 = load i32, i32* %5, align 4
  %55 = icmp sle i32 %54, 1114111
  br i1 %55, label %56, label %84

56:                                               ; preds = %53
  %57 = load i32, i32* %5, align 4
  %58 = ashr i32 %57, 18
  %59 = and i32 %58, 7
  %60 = or i32 %59, 240
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i32, i32* %5, align 4
  %65 = ashr i32 %64, 12
  %66 = and i32 %65, 63
  %67 = or i32 %66, 128
  %68 = trunc i32 %67 to i8
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %4, align 8
  store i8 %68, i8* %69, align 1
  %71 = load i32, i32* %5, align 4
  %72 = ashr i32 %71, 6
  %73 = and i32 %72, 63
  %74 = or i32 %73, 128
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %4, align 8
  store i8 %75, i8* %76, align 1
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, 63
  %80 = or i32 %79, 128
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %4, align 8
  store i8 %81, i8* %82, align 1
  store i32 4, i32* %3, align 4
  br label %87

84:                                               ; preds = %53
  %85 = load i8*, i8** %4, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %4, align 8
  store i8 63, i8* %85, align 1
  store i32 1, i32* %3, align 4
  br label %87

87:                                               ; preds = %84, %56, %32, %15, %8
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
