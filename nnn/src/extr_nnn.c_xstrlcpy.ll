; ModuleID = '/home/carl/AnghaBench/nnn/src/extr_nnn.c_xstrlcpy.c'
source_filename = "/home/carl/AnghaBench/nnn/src/extr_nnn.c_xstrlcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LONG_SIZE = common dso_local global i32 0, align 4
@_ALIGNMENT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @xstrlcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xstrlcpy(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, i64* %7, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %15, %3
  store i64 0, i64* %4, align 8
  br label %126

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* @LONG_SIZE, align 4
  %28 = icmp eq i32 %27, 8
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 3, i32 2
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %7, align 8
  br label %44

37:                                               ; preds = %22
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* @LONG_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp uge i64 %45, %47
  br i1 %48, label %49, label %101

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load i32, i32* @_ALIGNMENT_MASK, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %101

55:                                               ; preds = %49
  %56 = load i8*, i8** %5, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load i32, i32* @_ALIGNMENT_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %101

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %8, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** %9, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %12, align 8
  %68 = lshr i64 %66, %67
  store i64 %68, i64* %11, align 8
  %69 = load i32, i32* @LONG_SIZE, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %7, align 8
  %73 = and i64 %72, %71
  store i64 %73, i64* %7, align 8
  br label %74

74:                                               ; preds = %77, %61
  %75 = load i64, i64* %11, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %9, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %8, align 8
  %85 = load i64, i64* %11, align 8
  %86 = add i64 %85, -1
  store i64 %86, i64* %11, align 8
  br label %74

87:                                               ; preds = %74
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load i32*, i32** %9, align 8
  %92 = bitcast i32* %91 to i8*
  store i8* %92, i8** %5, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %94, i8** %5, align 8
  store i8 0, i8* %94, align 1
  %95 = load i64, i64* %10, align 8
  store i64 %95, i64* %4, align 8
  br label %126

96:                                               ; preds = %87
  %97 = load i32*, i32** %8, align 8
  %98 = bitcast i32* %97 to i8*
  store i8* %98, i8** %6, align 8
  %99 = load i32*, i32** %9, align 8
  %100 = bitcast i32* %99 to i8*
  store i8* %100, i8** %5, align 8
  br label %101

101:                                              ; preds = %96, %55, %49, %44
  br label %102

102:                                              ; preds = %114, %101
  %103 = load i64, i64* %7, align 8
  %104 = add i64 %103, -1
  store i64 %104, i64* %7, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %5, align 8
  store i8 %108, i8* %109, align 1
  %110 = sext i8 %108 to i32
  %111 = icmp ne i32 %110, 0
  br label %112

112:                                              ; preds = %106, %102
  %113 = phi i1 [ false, %102 ], [ %111, %106 ]
  br i1 %113, label %114, label %119

114:                                              ; preds = %112
  %115 = load i8*, i8** %5, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %5, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %6, align 8
  br label %102

119:                                              ; preds = %112
  %120 = load i64, i64* %7, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  %123 = load i8*, i8** %5, align 8
  store i8 0, i8* %123, align 1
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i64, i64* %10, align 8
  store i64 %125, i64* %4, align 8
  br label %126

126:                                              ; preds = %124, %90, %21
  %127 = load i64, i64* %4, align 8
  ret i64 %127
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
