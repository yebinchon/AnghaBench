; ModuleID = '/home/carl/AnghaBench/radare2/libr/reg/extr_profile.c_parse_size.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/reg/extr_profile.c_parse_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @parse_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_size(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 46
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @strtoul(i8* %15, i8** %16, i32 10)
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 46)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  store i8 0, i8* %24, align 1
  %26 = load i8*, i8** %4, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = call i32 @strtoul(i8* %26, i8** %27, i32 0)
  %29 = shl i32 %28, 3
  store i32 %29, i32* %7, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @strtoul(i8* %30, i8** %31, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %3, align 4
  br label %41

36:                                               ; preds = %18
  %37 = load i8*, i8** %4, align 8
  %38 = load i8**, i8*** %5, align 8
  %39 = call i32 @strtoul(i8* %37, i8** %38, i32 0)
  %40 = shl i32 %39, 3
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %23, %13
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
