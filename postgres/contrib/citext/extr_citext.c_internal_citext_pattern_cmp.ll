; ModuleID = '/home/carl/AnghaBench/postgres/contrib/citext/extr_citext.c_internal_citext_pattern_cmp.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/citext/extr_citext.c_internal_citext_pattern_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_COLLATION_OID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @internal_citext_pattern_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_citext_pattern_cmp(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @VARDATA_ANY(i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @VARSIZE_ANY_EXHDR(i32* %14)
  %16 = load i32, i32* @DEFAULT_COLLATION_OID, align 4
  %17 = call i8* @str_tolower(i32 %13, i32 %15, i32 %16)
  store i8* %17, i8** %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @VARDATA_ANY(i32* %18)
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @VARSIZE_ANY_EXHDR(i32* %20)
  %22 = load i32, i32* @DEFAULT_COLLATION_OID, align 4
  %23 = call i8* @str_tolower(i32 %19, i32 %21, i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @strlen(i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @strlen(i8* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @Min(i32 %30, i32 %31)
  %33 = call i32 @memcmp(i8* %28, i8* %29, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %3
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %11, align 4
  br label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %41
  br label %47

47:                                               ; preds = %46, %40
  br label %48

48:                                               ; preds = %47, %3
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @pfree(i8* %49)
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @pfree(i8* %51)
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local i8* @str_tolower(i32, i32, i32) #1

declare dso_local i32 @VARDATA_ANY(i32*) #1

declare dso_local i32 @VARSIZE_ANY_EXHDR(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @Min(i32, i32) #1

declare dso_local i32 @pfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
