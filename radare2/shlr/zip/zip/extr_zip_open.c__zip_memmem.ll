; ModuleID = '/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_memmem.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/zip/zip/extr_zip_open.c__zip_memmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*, i64)* @_zip_memmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_zip_memmem(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %9, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  store i8* null, i8** %5, align 8
  br label %54

18:                                               ; preds = %14
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 -1
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %52, %18
  %22 = load i8*, i8** %10, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = load i8*, i8** %6, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = ptrtoint i8* %27 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = sub i64 %33, %34
  %36 = add i64 %32, %35
  %37 = add i64 %36, 1
  %38 = call i64 @memchr(i8* %23, i8 zeroext %26, i64 %37)
  %39 = inttoptr i64 %38 to i8*
  store i8* %39, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %21
  %42 = load i8*, i8** %10, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i64, i64* %9, align 8
  %47 = sub i64 %46, 1
  %48 = call i64 @memcmp(i8* %43, i8* %45, i64 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i8*, i8** %10, align 8
  store i8* %51, i8** %5, align 8
  br label %54

52:                                               ; preds = %41
  br label %21

53:                                               ; preds = %21
  store i8* null, i8** %5, align 8
  br label %54

54:                                               ; preds = %53, %50, %17
  %55 = load i8*, i8** %5, align 8
  ret i8* %55
}

declare dso_local i64 @memchr(i8*, i8 zeroext, i64) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
