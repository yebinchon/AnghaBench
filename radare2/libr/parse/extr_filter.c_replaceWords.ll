; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/extr_filter.c_replaceWords.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/extr_filter.c_replaceWords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @replaceWords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replaceWords(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  br label %10

10:                                               ; preds = %17, %3
  %11 = load i8*, i8** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strstr(i8* %11, i8* %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %44

17:                                               ; preds = %10
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = add nsw i32 %31, 1
  %33 = call i32 @memmove(i8* %28, i8* %29, i32 %32)
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strlen(i8* %36)
  %38 = call i32 @memmove(i8* %34, i8* %35, i32 %37)
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8* %43, i8** %8, align 8
  br label %10

44:                                               ; preds = %16
  ret void
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
