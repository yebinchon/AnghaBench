; ModuleID = '/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_walk_down_the_path.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/litespeed/extr_lsapi_main.c_walk_down_the_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_SLASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, void (i8*, i8*, i8*)*, i8*)* @walk_down_the_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_down_the_path(i8* %0, i8* %1, void (i8*, i8*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca void (i8*, i8*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store void (i8*, i8*, i8*)* %2, void (i8*, i8*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @pathlen_without_trailing_slash(i8* %11)
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %10, i64 %13
  store i8* %14, i8** %9, align 8
  %15 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i8*, i8** %8, align 8
  call void %15(i8* %16, i8* %17, i8* %18)
  br label %19

19:                                               ; preds = %40, %4
  %20 = load i8*, i8** %9, align 8
  %21 = call i8* @skip_slash(i8* %20)
  store i8* %21, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %19
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* @DEFAULT_SLASH, align 4
  %28 = call i8* @strchr(i8* %26, i32 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %7, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8*, i8** %8, align 8
  call void %32(i8* %33, i8* %38, i8* %39)
  br label %45

40:                                               ; preds = %25
  %41 = load void (i8*, i8*, i8*)*, void (i8*, i8*, i8*)** %7, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %8, align 8
  call void %41(i8* %42, i8* %43, i8* %44)
  br label %19

45:                                               ; preds = %31, %19
  ret void
}

declare dso_local i32 @pathlen_without_trailing_slash(i8*) #1

declare dso_local i8* @skip_slash(i8*) #1

declare dso_local i8* @strchr(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
