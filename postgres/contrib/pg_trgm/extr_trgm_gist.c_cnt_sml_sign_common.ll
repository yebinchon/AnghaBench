; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_gist.c_cnt_sml_sign_common.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pg_trgm/extr_trgm_gist.c_cnt_sml_sign_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @cnt_sml_sign_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cnt_sml_sign_common(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @ARRNELEM(i32* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32* @GETARR(i32* %12)
  store i32* %13, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %6, align 8
  br label %14

14:                                               ; preds = %30, %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = bitcast i64* %9 to i8*
  %20 = load i32*, i32** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @CPTRGM(i8* %19, i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @HASHVAL(i64 %25)
  %27 = call i64 @GETBIT(i32 %24, i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %18
  %31 = load i64, i64* %6, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %6, align 8
  br label %14

33:                                               ; preds = %14
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

declare dso_local i64 @ARRNELEM(i32*) #1

declare dso_local i32* @GETARR(i32*) #1

declare dso_local i32 @CPTRGM(i8*, i32*) #1

declare dso_local i64 @GETBIT(i32, i32) #1

declare dso_local i32 @HASHVAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
