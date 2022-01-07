; ModuleID = '/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_get_alternative_expectfile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/test/regress/extr_pg_regress.c_get_alternative_expectfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%s_%d.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @get_alternative_expectfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_alternative_expectfile(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = add nsw i32 %11, 2
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @malloc(i32 %14)
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %52

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @malloc(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @free(i8* %25)
  store i8* null, i8** %3, align 8
  br label %52

27:                                               ; preds = %19
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @strcpy(i8* %28, i8* %29)
  %31 = load i8*, i8** %8, align 8
  %32 = call i8* @strrchr(i8* %31, i8 signext 46)
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %27
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @free(i8* %38)
  store i8* null, i8** %3, align 8
  br label %52

40:                                               ; preds = %27
  %41 = load i8*, i8** %6, align 8
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = call i32 @snprintf(i8* %42, i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %44, i32 %45, i8* %47)
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @free(i8* %49)
  %51 = load i8*, i8** %9, align 8
  store i8* %51, i8** %3, align 8
  br label %52

52:                                               ; preds = %40, %35, %24, %18
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
