; ModuleID = '/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_main.c_insertkeys.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/sdb/src/extr_main.c_insertkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32, i32)* @insertkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insertkeys(i32* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i8**, i8*** %6, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %15, label %71

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %71

18:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %67, %18
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %66 [
    i32 45, label %25
    i32 61, label %35
  ]

25:                                               ; preds = %23
  %26 = load i32*, i32** %5, align 8
  %27 = load i8**, i8*** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @sdb_query(i32* %26, i8* %31)
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %66

35:                                               ; preds = %23
  %36 = load i8**, i8*** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 61)
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %35
  %44 = load i8**, i8*** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strdup(i8* %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 61)
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %43
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %11, align 8
  store i8 0, i8* %56, align 1
  %58 = load i32*, i32** %5, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @sdb_disk_insert(i32* %58, i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %55, %43
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @free(i8* %63)
  br label %65

65:                                               ; preds = %62, %35
  br label %66

66:                                               ; preds = %23, %65, %25
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %19

70:                                               ; preds = %19
  br label %71

71:                                               ; preds = %70, %15, %4
  %72 = load i32, i32* %9, align 4
  ret i32 %72
}

declare dso_local i32 @sdb_query(i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i32 @sdb_disk_insert(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
