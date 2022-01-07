; ModuleID = '/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_url_encode.c'
source_filename = "/home/carl/AnghaBench/netdata/libnetdata/url/extr_url.c_url_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @url_encode(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = mul nsw i32 %6, 3
  %8 = add nsw i32 %7, 1
  %9 = call i8* @mallocz(i32 %8)
  store i8* %9, i8** %3, align 8
  store i8* %9, i8** %4, align 8
  br label %10

10:                                               ; preds = %74, %1
  %11 = load i8*, i8** %2, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %77

14:                                               ; preds = %10
  %15 = load i8*, i8** %2, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @isalnum(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %2, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 45
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %2, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 95
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %2, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i8*, i8** %2, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 126
  br i1 %38, label %39, label %44

39:                                               ; preds = %34, %29, %24, %19, %14
  %40 = load i8*, i8** %2, align 8
  %41 = load i8, i8* %40, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %4, align 8
  store i8 %41, i8* %42, align 1
  br label %74

44:                                               ; preds = %34
  %45 = load i8*, i8** %2, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 32
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %4, align 8
  store i8 43, i8* %50, align 1
  br label %73

52:                                               ; preds = %44
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  store i8 37, i8* %53, align 1
  %55 = load i8*, i8** %2, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = ashr i32 %57, 4
  %59 = trunc i32 %58 to i8
  %60 = call i8* @to_hex(i8 signext %59)
  %61 = ptrtoint i8* %60 to i8
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i8*, i8** %2, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = and i32 %66, 15
  %68 = trunc i32 %67 to i8
  %69 = call i8* @to_hex(i8 signext %68)
  %70 = ptrtoint i8* %69 to i8
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %4, align 8
  store i8 %70, i8* %71, align 1
  br label %73

73:                                               ; preds = %52, %49
  br label %74

74:                                               ; preds = %73, %39
  %75 = load i8*, i8** %2, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %2, align 8
  br label %10

77:                                               ; preds = %10
  %78 = load i8*, i8** %4, align 8
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %3, align 8
  %80 = call i8* @strdupz(i8* %79)
  store i8* %80, i8** %4, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @freez(i8* %81)
  %83 = load i8*, i8** %4, align 8
  ret i8* %83
}

declare dso_local i8* @mallocz(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i8* @to_hex(i8 signext) #1

declare dso_local i8* @strdupz(i8*) #1

declare dso_local i32 @freez(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
