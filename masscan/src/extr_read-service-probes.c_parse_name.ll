; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_parse_name.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_read-service-probes.c_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*, i64)* @parse_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_name(i8* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  br label %13

13:                                               ; preds = %29, %3
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = call i64 @isspace(i8 signext %23)
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %18, %13
  %28 = phi i1 [ false, %13 ], [ %26, %18 ]
  br i1 %28, label %29, label %33

29:                                               ; preds = %27
  %30 = load i64*, i64** %6, align 8
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %30, align 8
  br label %13

33:                                               ; preds = %27
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i8* null, i8** %4, align 8
  br label %76

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i8*, i8** %5, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = call i64 @isspace(i8 signext %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %47, %42
  %56 = phi i1 [ false, %42 ], [ %54, %47 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %42

61:                                               ; preds = %55
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  %64 = call i8* @MALLOC(i64 %63)
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  %71 = call i32 @memcpy(i8* %65, i8* %68, i64 %70)
  %72 = load i8*, i8** %10, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %10, align 8
  store i8* %75, i8** %4, align 8
  br label %76

76:                                               ; preds = %61, %40
  %77 = load i8*, i8** %4, align 8
  ret i8* %77
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @MALLOC(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
