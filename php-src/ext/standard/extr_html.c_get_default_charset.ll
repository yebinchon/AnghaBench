; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_get_default_charset.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_html.c_get_default_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@internal_encoding = common dso_local global i32 0, align 4
@default_charset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @get_default_charset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_default_charset() #0 {
  %1 = alloca i8*, align 8
  %2 = load i32, i32* @internal_encoding, align 4
  %3 = call i8* @PG(i32 %2)
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load i32, i32* @internal_encoding, align 4
  %7 = call i8* @PG(i32 %6)
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load i32, i32* @internal_encoding, align 4
  %14 = call i8* @PG(i32 %13)
  store i8* %14, i8** %1, align 8
  br label %31

15:                                               ; preds = %5, %0
  %16 = load i32, i32* @default_charset, align 4
  %17 = call i8* @SG(i32 %16)
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i32, i32* @default_charset, align 4
  %21 = call i8* @SG(i32 %20)
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @default_charset, align 4
  %28 = call i8* @SG(i32 %27)
  store i8* %28, i8** %1, align 8
  br label %31

29:                                               ; preds = %19, %15
  br label %30

30:                                               ; preds = %29
  store i8* null, i8** %1, align 8
  br label %31

31:                                               ; preds = %30, %26, %12
  %32 = load i8*, i8** %1, align 8
  ret i8* %32
}

declare dso_local i8* @PG(i32) #1

declare dso_local i8* @SG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
