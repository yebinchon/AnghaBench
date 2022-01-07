; ModuleID = '/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_loadExt.c'
source_filename = "/home/carl/AnghaBench/mongoose/examples/api_server/extr_sqlite3.c_loadExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @loadExt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loadExt(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @sqlite3_value_text(i32* %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i32* @sqlite3_context_db_handle(i32* %16)
  store i32* %17, i32** %9, align 8
  store i8* null, i8** %10, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32**, i32*** %6, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @sqlite3_value_text(i32* %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %8, align 8
  br label %27

26:                                               ; preds = %3
  store i8* null, i8** %8, align 8
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i8*, i8** %7, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i32*, i32** %9, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @sqlite3_load_extension(i32* %31, i8* %32, i8* %33, i8** %10)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32*, i32** %4, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @sqlite3_result_error(i32* %37, i8* %38, i32 -1)
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @sqlite3_free(i8* %40)
  br label %42

42:                                               ; preds = %36, %30, %27
  ret void
}

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i32* @sqlite3_context_db_handle(i32*) #1

declare dso_local i64 @sqlite3_load_extension(i32*, i8*, i8*, i8**) #1

declare dso_local i32 @sqlite3_result_error(i32*, i8*, i32) #1

declare dso_local i32 @sqlite3_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
