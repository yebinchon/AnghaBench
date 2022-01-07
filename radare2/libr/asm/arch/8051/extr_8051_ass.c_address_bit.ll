; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_address_bit.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_address_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @address_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @address_bit(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = add nsw i32 %12, 1
  %14 = call i8* @malloc(i32 %13)
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = add nsw i32 %16, 1
  %18 = call i8* @malloc(i32 %17)
  store i8* %18, i8** %6, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @r_str_lchr(i8* %19, i8 signext 46)
  store i8* %20, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %102

24:                                               ; preds = %2
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = add nsw i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = call i32 @r_str_ncpy(i8* %25, i8* %26, i32 %33)
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = add nsw i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %35, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @r_str_ncpy(i8* %43, i8* %45, i32 %47)
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @address_direct(i8* %49, i32* %8)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %24
  br label %102

53:                                               ; preds = %24
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = icmp slt i32 1, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp slt i32 %61, 48
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp slt i32 55, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %57, %53
  store i32 0, i32* %10, align 4
  br label %102

70:                                               ; preds = %63
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = sub nsw i32 %74, 48
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp sle i32 32, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 48
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, 32
  %84 = mul nsw i32 %83, 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32*, i32** %4, align 8
  store i32 %86, i32* %87, align 4
  store i32 1, i32* %10, align 4
  br label %101

88:                                               ; preds = %78, %70
  %89 = load i32, i32* %8, align 4
  %90 = icmp sle i32 128, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = srem i32 %92, 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32*, i32** %4, align 8
  store i32 %98, i32* %99, align 4
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %95, %91, %88
  br label %101

101:                                              ; preds = %100, %81
  br label %102

102:                                              ; preds = %101, %69, %52, %23
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @free(i8* %103)
  store i8* null, i8** %5, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i32 @free(i8* %105)
  store i8* null, i8** %6, align 8
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @r_str_lchr(i8*, i8 signext) #1

declare dso_local i32 @r_str_ncpy(i8*, i8*, i32) #1

declare dso_local i32 @address_direct(i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
