; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_sdb.c_match.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_sdb.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 94
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call signext i8 @lastChar(i8* %16)
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 36
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sub nsw i32 %30, 2
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = sub nsw i32 %38, 2
  %40 = call i32 @strncmp(i8* %34, i8* %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %33, %26
  %44 = phi i1 [ false, %26 ], [ %42, %33 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %94

46:                                               ; preds = %23, %2
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = sub nsw i32 %54, 1
  %56 = call i32 @strncmp(i8* %50, i8* %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %94

60:                                               ; preds = %46
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %60
  %64 = load i8*, i8** %4, align 8
  %65 = call i32 @strlen(i8* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @strlen(i8* %66)
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %94

73:                                               ; preds = %63
  %74 = load i8*, i8** %4, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = sub i64 0, %80
  %82 = getelementptr inbounds i8, i8* %78, i64 %81
  store i8* %82, i8** %10, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @strncmp(i8* %83, i8* %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %3, align 4
  br label %94

90:                                               ; preds = %60
  %91 = load i8*, i8** %4, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @strstr(i8* %91, i8* %92)
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %73, %72, %49, %43
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local signext i8 @lastChar(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
