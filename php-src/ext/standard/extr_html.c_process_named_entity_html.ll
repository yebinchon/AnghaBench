; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_process_named_entity_html.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_process_named_entity_html.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8**, i64*)* @process_named_entity_html to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_named_entity_html(i8** %0, i8** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8**, i8*** %6, align 8
  store i8* %9, i8** %10, align 8
  br label %11

11:                                               ; preds = %51, %3
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp sge i32 %15, 97
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sle i32 %21, 122
  br i1 %22, label %49, label %23

23:                                               ; preds = %17, %11
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sge i32 %27, 65
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sle i32 %33, 90
  br i1 %34, label %49, label %35

35:                                               ; preds = %29, %23
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sge i32 %39, 48
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 %45, 57
  br label %47

47:                                               ; preds = %41, %35
  %48 = phi i1 [ false, %35 ], [ %46, %41 ]
  br label %49

49:                                               ; preds = %47, %29, %17
  %50 = phi i1 [ true, %29 ], [ true, %17 ], [ %48, %47 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %52, align 8
  br label %11

55:                                               ; preds = %49
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @FAILURE, align 4
  store i32 %62, i32* %4, align 4
  br label %79

63:                                               ; preds = %55
  %64 = load i8**, i8*** %5, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** %6, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %65 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = load i64*, i64** %7, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i64*, i64** %7, align 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* @FAILURE, align 4
  store i32 %76, i32* %4, align 4
  br label %79

77:                                               ; preds = %63
  %78 = load i32, i32* @SUCCESS, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %75, %61
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
