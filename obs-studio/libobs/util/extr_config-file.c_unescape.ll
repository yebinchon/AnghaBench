; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_unescape.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/util/extr_config-file.c_unescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dstr = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dstr*)* @unescape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unescape(%struct.dstr* %0) #0 {
  %2 = alloca %struct.dstr*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.dstr* %0, %struct.dstr** %2, align 8
  %7 = load %struct.dstr*, %struct.dstr** %2, align 8
  %8 = getelementptr inbounds %struct.dstr, %struct.dstr* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %3, align 8
  %10 = load %struct.dstr*, %struct.dstr** %2, align 8
  %11 = getelementptr inbounds %struct.dstr, %struct.dstr* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %58, %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %5, align 1
  %20 = load i8, i8* %5, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 92
  br i1 %22, label %23, label %50

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %6, align 1
  %27 = load i8, i8* %6, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 92
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %3, align 8
  br label %49

33:                                               ; preds = %23
  %34 = load i8, i8* %6, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 114
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  store i8 13, i8* %5, align 1
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  br label %48

40:                                               ; preds = %33
  %41 = load i8, i8* %6, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 110
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  store i8 10, i8* %5, align 1
  %45 = load i8*, i8** %3, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %3, align 8
  br label %47

47:                                               ; preds = %44, %40
  br label %48

48:                                               ; preds = %47, %37
  br label %49

49:                                               ; preds = %48, %30
  br label %50

50:                                               ; preds = %49, %17
  %51 = load i8*, i8** %3, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = icmp ne i8* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8, i8* %5, align 1
  %56 = load i8*, i8** %4, align 8
  store i8 %55, i8* %56, align 1
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %3, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %4, align 8
  br label %13

63:                                               ; preds = %13
  %64 = load i8*, i8** %3, align 8
  %65 = load i8*, i8** %4, align 8
  %66 = icmp ne i8* %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i8*, i8** %4, align 8
  store i8 0, i8* %68, align 1
  br label %69

69:                                               ; preds = %67, %63
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
