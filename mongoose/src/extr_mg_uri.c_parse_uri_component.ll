; ModuleID = '/home/carl/AnghaBench/mongoose/src/extr_mg_uri.c_parse_uri_component.c'
source_filename = "/home/carl/AnghaBench/mongoose/src/extr_mg_uri.c_parse_uri_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mg_str = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8*, i8*, %struct.mg_str*)* @parse_uri_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_uri_component(i8** %0, i8* %1, i8* %2, %struct.mg_str* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mg_str*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.mg_str* %3, %struct.mg_str** %8, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %13 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  br label %14

14:                                               ; preds = %47, %4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %37, %19
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %21
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %40

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i8*, i8** %9, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %9, align 8
  br label %21

40:                                               ; preds = %35, %21
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %48, align 8
  br label %14

51:                                               ; preds = %45, %14
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %55 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = ptrtoint i8* %53 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = load %struct.mg_str*, %struct.mg_str** %8, align 8
  %62 = getelementptr inbounds %struct.mg_str, %struct.mg_str* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i8**, i8*** %5, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = icmp ult i8* %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %51
  %68 = load i8**, i8*** %5, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %68, align 8
  br label %71

71:                                               ; preds = %67, %51
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
