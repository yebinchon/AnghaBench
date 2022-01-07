; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numutils.c_pg_ltostr.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_numutils.c_pg_ltostr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pg_ltostr(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  store i8 45, i8* %15, align 1
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %31, %14
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sdiv i32 %20, 10
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 %23, 10
  %25 = sub nsw i32 %22, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 48, %26
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %3, align 8
  store i8 %28, i8* %29, align 1
  br label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %18, label %34

34:                                               ; preds = %31
  br label %54

35:                                               ; preds = %2
  %36 = load i8*, i8** %3, align 8
  store i8* %36, i8** %5, align 8
  br label %37

37:                                               ; preds = %50, %35
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sdiv i32 %39, 10
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 %42, 10
  %44 = sub nsw i32 %41, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 48, %45
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %3, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %3, align 8
  store i8 %47, i8* %48, align 1
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %37, label %53

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 -1
  store i8* %56, i8** %3, align 8
  store i8* %55, i8** %6, align 8
  br label %57

57:                                               ; preds = %61, %54
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = icmp ult i8* %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = load i8, i8* %62, align 1
  store i8 %63, i8* %11, align 1
  %64 = load i8*, i8** %3, align 8
  %65 = load i8, i8* %64, align 1
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i8, i8* %11, align 1
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 -1
  store i8* %70, i8** %3, align 8
  store i8 %68, i8* %69, align 1
  br label %57

71:                                               ; preds = %57
  %72 = load i8*, i8** %6, align 8
  ret i8* %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
