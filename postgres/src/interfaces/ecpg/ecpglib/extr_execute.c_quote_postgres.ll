; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_quote_postgres.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/ecpg/ecpglib/extr_execute.c_quote_postgres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESCAPE_STRING_SYNTAX = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @quote_postgres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quote_postgres(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** %4, align 8
  br label %75

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = mul i64 2, %19
  %21 = add i64 %20, 1
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %22, 3
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @ecpg_alloc(i64 %23, i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %16
  %30 = load i8*, i8** %8, align 8
  store i8* %30, i8** %4, align 8
  br label %75

31:                                               ; preds = %16
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %11, align 8
  %36 = call i64 @PQescapeString(i8* %33, i8* %34, i64 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %31
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = add i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8 39, i8* %44, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 39, i8* %46, align 1
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 2
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8 0, i8* %50, align 1
  br label %71

51:                                               ; preds = %31
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @memmove(i8* %53, i8* %55, i64 %56)
  %58 = load i8, i8* @ESCAPE_STRING_SYNTAX, align 1
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  store i8 %58, i8* %60, align 1
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, 2
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 39, i8* %64, align 1
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  store i8 39, i8* %66, align 1
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 3
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 0, i8* %70, align 1
  br label %71

71:                                               ; preds = %51, %40
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @ecpg_free(i8* %72)
  %74 = load i8*, i8** %8, align 8
  store i8* %74, i8** %4, align 8
  br label %75

75:                                               ; preds = %71, %29, %14
  %76 = load i8*, i8** %4, align 8
  ret i8* %76
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @ecpg_alloc(i64, i32) #1

declare dso_local i64 @PQescapeString(i8*, i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @ecpg_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
