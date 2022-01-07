; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_argv.c_argv_term.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_argv.c_argv_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8**)* @argv_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @argv_term(i8** %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %70

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %43
  %18 = load i8*, i8** %4, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %46

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @isspace(i32 %28) #3
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %35

34:                                               ; preds = %27
  br label %46

35:                                               ; preds = %31
  br label %43

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @isspace(i32 %37) #3
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  store i8* %41, i8** %5, align 8
  store i64 1, i64* %6, align 8
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  br label %17

46:                                               ; preds = %34, %23
  %47 = load i8*, i8** %4, align 8
  %48 = load i8**, i8*** %3, align 8
  store i8* %47, i8** %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load i64, i64* %6, align 8
  %53 = icmp ugt i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  %58 = call i8* @malloc(i64 %57)
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @check_malloc_return(i8* %59)
  %61 = load i8*, i8** %8, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @memcpy(i8* %61, i8* %62, i64 %63)
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %6, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %8, align 8
  store i8* %68, i8** %2, align 8
  br label %70

69:                                               ; preds = %46
  store i8* null, i8** %2, align 8
  br label %70

70:                                               ; preds = %69, %51, %15
  %71 = load i8*, i8** %2, align 8
  ret i8* %71
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @check_malloc_return(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
