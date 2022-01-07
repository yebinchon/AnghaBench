; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_ccgi.c_copyvalue.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_ccgi.c_copyvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32, i32*, i32*)* @copyvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copyvalue(i8* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %107, %87, %5
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @getc(i32* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @EOF, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %108

21:                                               ; preds = %16
  %22 = load i32, i32* %15, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %68

24:                                               ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %25, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %64, %33
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %14, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = call i32* @savechar(i32* %42, i32 %43, i8 signext %49)
  store i32* %50, i32** %10, align 8
  br label %63

51:                                               ; preds = %38
  %52 = load i32*, i32** %11, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @fputc(i8 signext %59, i32* %60)
  br label %62

62:                                               ; preds = %54, %51
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %34

67:                                               ; preds = %34
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %67, %24, %21
  %69 = load i32, i32* %12, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %69, %75
  br i1 %76, label %77, label %88

77:                                               ; preds = %68
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %108

87:                                               ; preds = %77
  br label %16

88:                                               ; preds = %68
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %12, align 4
  %96 = trunc i32 %95 to i8
  %97 = call i32* @savechar(i32* %92, i32 %93, i8 signext %96)
  store i32* %97, i32** %10, align 8
  br label %107

98:                                               ; preds = %88
  %99 = load i32*, i32** %11, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = trunc i32 %102 to i8
  %104 = load i32*, i32** %11, align 8
  %105 = call i32 @fputc(i8 signext %103, i32* %104)
  br label %106

106:                                              ; preds = %101, %98
  br label %107

107:                                              ; preds = %106, %91
  br label %16

108:                                              ; preds = %86, %16
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i32* @savechar(i32* %112, i32 %113, i8 signext 0)
  store i32* %114, i32** %6, align 8
  br label %116

115:                                              ; preds = %108
  store i32* null, i32** %6, align 8
  br label %116

116:                                              ; preds = %115, %111
  %117 = load i32*, i32** %6, align 8
  ret i32* %117
}

declare dso_local i32 @getc(i32*) #1

declare dso_local i32* @savechar(i32*, i32, i8 signext) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
