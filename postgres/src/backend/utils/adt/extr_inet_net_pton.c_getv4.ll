; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_inet_net_pton.c_getv4.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_inet_net_pton.c_getv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@getv4.digits = internal constant [11 x i8] c"0123456789\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @getv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getv4(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %75, %46, %3
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  %17 = load i8, i8* %15, align 1
  store i8 %17, i8* %11, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %77

20:                                               ; preds = %14
  %21 = load i8, i8* %11, align 1
  %22 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @getv4.digits, i64 0, i64 0), i8 signext %21)
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %94

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 %34, 10
  store i32 %35, i32* %10, align 4
  %36 = load i8*, i8** %12, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = sub i64 %37, ptrtoint ([11 x i8]* @getv4.digits to i64)
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 255
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %94

46:                                               ; preds = %33
  br label %14

47:                                               ; preds = %20
  %48 = load i8, i8* %11, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8, i8* %11, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 47
  br i1 %54, label %55, label %76

55:                                               ; preds = %51, %47
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = ptrtoint i32* %56 to i64
  %59 = ptrtoint i32* %57 to i64
  %60 = sub i64 %58, %59
  %61 = sdiv exact i64 %60, 4
  %62 = icmp sgt i64 %61, 3
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %94

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i8, i8* %11, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 47
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i8*, i8** %5, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @getbits(i8* %72, i32* %73)
  store i32 %74, i32* %4, align 4
  br label %94

75:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %14

76:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %94

77:                                               ; preds = %14
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %94

81:                                               ; preds = %77
  %82 = load i32*, i32** %6, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = ptrtoint i32* %82 to i64
  %85 = ptrtoint i32* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 4
  %88 = icmp sgt i64 %87, 3
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %94

90:                                               ; preds = %81
  %91 = load i32, i32* %10, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  store i32 1, i32* %4, align 4
  br label %94

94:                                               ; preds = %90, %89, %80, %76, %71, %63, %45, %32
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @getbits(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
