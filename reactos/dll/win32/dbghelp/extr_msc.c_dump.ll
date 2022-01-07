; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_dump.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_msc.c_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%08x: \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %9, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %114, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %117

16:                                               ; preds = %12
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @sprintf(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %21 = getelementptr inbounds i8, i8* %20, i64 10
  %22 = call i32 @memset(i8* %21, i8 signext 32, i32 65)
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %106, %16
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub i32 %25, %26
  %28 = call i32 @min(i32 16, i32 %27)
  %29 = icmp ult i32 %24, %28
  br i1 %29, label %30, label %109

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %33, %34
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %31, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i32, i32* %6, align 4
  %44 = mul i32 3, %43
  %45 = add i32 10, %44
  %46 = add i32 %45, 0
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %47
  store i8 %42, i8* %48, align 1
  %49 = load i8*, i8** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 15
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %49, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load i32, i32* %6, align 4
  %62 = mul i32 3, %61
  %63 = add i32 10, %62
  %64 = add i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %65
  store i8 %60, i8* %66, align 1
  %67 = load i32, i32* %6, align 4
  %68 = mul i32 3, %67
  %69 = add i32 10, %68
  %70 = add i32 %69, 2
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %71
  store i8 32, i8* %72, align 1
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = add i32 %74, %75
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %79, 32
  br i1 %80, label %81, label %98

81:                                               ; preds = %30
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = add i32 %83, %84
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %82, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 127
  br i1 %89, label %90, label %98

90:                                               ; preds = %81
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = add i32 %92, %93
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  br label %99

98:                                               ; preds = %81, %30
  br label %99

99:                                               ; preds = %98, %90
  %100 = phi i32 [ %97, %90 ], [ 46, %98 ]
  %101 = trunc i32 %100 to i8
  %102 = load i32, i32* %6, align 4
  %103 = add i32 59, %102
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %104
  store i8 %101, i8* %105, align 1
  br label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %6, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %23

109:                                              ; preds = %23
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 58
  store i8 32, i8* %110, align 2
  %111 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 75
  store i8 0, i8* %111, align 1
  %112 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %113 = call i32 @FIXME(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %5, align 4
  %116 = add i32 %115, 16
  store i32 %116, i32* %5, align 4
  br label %12

117:                                              ; preds = %12
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @FIXME(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
