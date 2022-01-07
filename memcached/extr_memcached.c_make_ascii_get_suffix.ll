; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_make_ascii_get_suffix.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_make_ascii_get_suffix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32, i32)* @make_ascii_get_suffix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_ascii_get_suffix(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  store i8 32, i8* %11, align 1
  %12 = load i8*, i8** %9, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %9, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @FLAGS_SIZE(i32* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i8*, i8** %9, align 8
  store i8 48, i8* %18, align 1
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %9, align 8
  br label %28

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @ITEM_suffix(i32* %22)
  %24 = inttoptr i64 %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = call i8* @itoa_u32(i32 %25, i8* %26)
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %21, %17
  %29 = load i8*, i8** %9, align 8
  store i8 32, i8* %29, align 1
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 2
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i8* @itoa_u32(i32 %31, i8* %33)
  store i8* %34, i8** %9, align 8
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load i8*, i8** %9, align 8
  store i8 32, i8* %38, align 1
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @ITEM_get_cas(i32* %39)
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i8* @itoa_u64(i32 %40, i8* %42)
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %37, %28
  %45 = load i8*, i8** %9, align 8
  store i8 13, i8* %45, align 1
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 10, i8* %47, align 1
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 2
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = add nsw i64 %54, 2
  %56 = trunc i64 %55 to i32
  ret i32 %56
}

declare dso_local i64 @FLAGS_SIZE(i32*) #1

declare dso_local i8* @itoa_u32(i32, i8*) #1

declare dso_local i64 @ITEM_suffix(i32*) #1

declare dso_local i8* @itoa_u64(i32, i8*) #1

declare dso_local i32 @ITEM_get_cas(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
