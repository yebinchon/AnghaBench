; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_hud.c___matchString.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_hud.c___matchString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32)* @__matchString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__matchString(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %10, align 8
  br label %25

25:                                               ; preds = %107, %4
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ule i8* %26, %27
  br i1 %28, label %29, label %110

29:                                               ; preds = %25
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %106

39:                                               ; preds = %34, %29
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %15, align 1
  %43 = load i8*, i8** %10, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = icmp eq i8* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %11, align 8
  br label %107

49:                                               ; preds = %39
  %50 = load i8*, i8** %10, align 8
  store i8 0, i8* %50, align 1
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @strlen(i8* %51)
  store i32 %52, i32* %16, align 4
  br label %53

53:                                               ; preds = %91, %49
  %54 = load i8*, i8** %14, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i8* @r_str_casestr(i8* %54, i8* %55)
  store i8* %56, i8** %13, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %96

58:                                               ; preds = %53
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %88, %58
  %66 = load i32, i32* %17, align 4
  %67 = sext i32 %66 to i64
  %68 = load i8*, i8** %13, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = icmp slt i64 %67, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br label %81

81:                                               ; preds = %77, %65
  %82 = phi i1 [ false, %65 ], [ %80, %77 ]
  br i1 %82, label %83, label %91

83:                                               ; preds = %81
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 120, i8* %87, align 1
  br label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %17, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %17, align 4
  br label %65

91:                                               ; preds = %81
  %92 = load i32, i32* %16, align 4
  %93 = load i8*, i8** %14, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %14, align 8
  br label %53

96:                                               ; preds = %53
  %97 = load i8, i8* %15, align 1
  %98 = load i8*, i8** %10, align 8
  store i8 %97, i8* %98, align 1
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = icmp eq i8* %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %5, align 4
  br label %111

103:                                              ; preds = %96
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  store i8* %105, i8** %11, align 8
  br label %106

106:                                              ; preds = %103, %34
  br label %107

107:                                              ; preds = %106, %46
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %10, align 8
  br label %25

110:                                              ; preds = %25
  store i32 1, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %102
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @r_str_casestr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
