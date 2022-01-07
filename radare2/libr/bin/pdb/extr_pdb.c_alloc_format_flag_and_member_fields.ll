; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_pdb.c_alloc_format_flag_and_member_fields.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/pdb/extr_pdb.c_alloc_format_flag_and_member_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloc_format_flag_and_member_fields(i32* %0, i8** %1, i32* %2, i8*** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8***, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8*** %3, i8**** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @r_list_iterator(i32* %13)
  store i32* %14, i32** %12, align 8
  br label %15

15:                                               ; preds = %19, %4
  %16 = load i32*, i32** %12, align 8
  %17 = call i64 @r_list_iter_next(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @r_list_iter_get(i32* %20)
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  br label %15

26:                                               ; preds = %15
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %68

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i64 @malloc(i32 %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = load i8**, i8*** %7, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i8**, i8*** %7, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = call i32 @memset(i8* %39, i32 0, i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 8, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i64 @malloc(i32 %49)
  %51 = inttoptr i64 %50 to i8**
  %52 = load i8***, i8**** %9, align 8
  store i8** %51, i8*** %52, align 8
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %64, %31
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load i8***, i8**** %9, align 8
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* null, i8** %63, align 8
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %53

67:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %30
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32* @r_list_iterator(i32*) #1

declare dso_local i64 @r_list_iter_next(i32*) #1

declare dso_local i32 @r_list_iter_get(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
