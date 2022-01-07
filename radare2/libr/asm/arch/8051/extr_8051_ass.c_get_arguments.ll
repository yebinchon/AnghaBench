; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_get_arguments.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/arch/8051/extr_8051_ass.c_get_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @get_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_arguments(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i64 @strlen(i8* %8)
  %10 = add i64 %9, 1
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i8* @malloc(i64 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @get_arg(i8* %13, i32 1, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @free(i8* %18)
  store i8* null, i8** %7, align 8
  store i32 0, i32* %3, align 4
  br label %94

20:                                               ; preds = %2
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = add i64 %23, 1
  %25 = call i8* @realloc(i8* %21, i64 %24)
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  store i8* %25, i8** %27, align 8
  store i8* null, i8** %7, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i8* @malloc(i64 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @get_arg(i8* %30, i32 2, i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %20
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @free(i8* %35)
  store i8* null, i8** %7, align 8
  store i32 1, i32* %3, align 4
  br label %94

37:                                               ; preds = %20
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add i64 %40, 1
  %42 = call i8* @realloc(i8* %38, i64 %41)
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  store i8* %42, i8** %44, align 8
  store i8* null, i8** %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, 1
  %47 = call i8* @malloc(i64 %46)
  store i8* %47, i8** %7, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i64 @get_arg(i8* %48, i32 3, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %37
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @free(i8* %53)
  store i8* null, i8** %7, align 8
  store i32 2, i32* %3, align 4
  br label %94

55:                                               ; preds = %37
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i64 @strlen(i8* %57)
  %59 = add i64 %58, 1
  %60 = call i8* @realloc(i8* %56, i64 %59)
  %61 = load i8**, i8*** %4, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  store i8* %60, i8** %62, align 8
  store i8* null, i8** %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  %65 = call i8* @malloc(i64 %64)
  store i8* %65, i8** %7, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @get_arg(i8* %66, i32 4, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %55
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @free(i8* %71)
  store i8* null, i8** %7, align 8
  %73 = load i8**, i8*** %4, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i8**, i8*** %4, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  store i8* null, i8** %78, align 8
  %79 = load i8**, i8*** %4, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i8**, i8*** %4, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 1
  store i8* null, i8** %84, align 8
  %85 = load i8**, i8*** %4, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load i8**, i8*** %4, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 2
  store i8* null, i8** %90, align 8
  store i32 4, i32* %3, align 4
  br label %94

91:                                               ; preds = %55
  %92 = load i8*, i8** %7, align 8
  %93 = call i32 @free(i8* %92)
  store i8* null, i8** %7, align 8
  store i32 3, i32* %3, align 4
  br label %94

94:                                               ; preds = %91, %70, %52, %34, %17
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @get_arg(i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
