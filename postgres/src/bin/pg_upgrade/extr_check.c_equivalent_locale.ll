; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_equivalent_locale.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_upgrade/extr_check.c_equivalent_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @equivalent_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @equivalent_locale(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i64 @pg_strcasecmp(i8* %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %79

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @get_canonical_locale_name(i32 %20, i8* %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call i8* @strrchr(i8* %23, i8 signext 46)
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  br label %37

33:                                               ; preds = %19
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = sext i32 %35 to i64
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i64 [ %32, %27 ], [ %36, %33 ]
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i8* @get_canonical_locale_name(i32 %40, i8* %41)
  store i8* %42, i8** %11, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i8* @strrchr(i8* %43, i8 signext 46)
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  br label %57

53:                                               ; preds = %37
  %54 = load i8*, i8** %11, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = sext i32 %55 to i64
  br label %57

57:                                               ; preds = %53, %47
  %58 = phi i64 [ %52, %47 ], [ %56, %53 ]
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i64 @pg_strncasecmp(i8* %64, i8* %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @pg_free(i8* %70)
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 @pg_free(i8* %72)
  store i32 1, i32* %4, align 4
  br label %79

74:                                               ; preds = %63, %57
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 @pg_free(i8* %75)
  %77 = load i8*, i8** %11, align 8
  %78 = call i32 @pg_free(i8* %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %74, %69, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @pg_strcasecmp(i8*, i8*) #1

declare dso_local i8* @get_canonical_locale_name(i32, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @pg_strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @pg_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
