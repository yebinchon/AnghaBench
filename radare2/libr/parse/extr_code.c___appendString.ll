; ModuleID = '/home/carl/AnghaBench/radare2/libr/parse/extr_code.c___appendString.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/parse/extr_code.c___appendString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**)* @__appendString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__appendString(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = icmp ne i8** %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %49

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = load i8**, i8*** %4, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %17, %20
  %22 = add nsw i32 %21, 1
  %23 = call i8* @malloc(i32 %22)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %15
  %27 = load i8*, i8** %5, align 8
  %28 = load i8**, i8*** %4, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcpy(i8* %27, i8* %29)
  %31 = load i8**, i8*** %4, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @free(i8* %32)
  %34 = load i8*, i8** %5, align 8
  %35 = load i8**, i8*** %4, align 8
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 @strcpy(i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %26, %15
  br label %48

44:                                               ; preds = %11
  %45 = load i8*, i8** %3, align 8
  %46 = call i8* @strdup(i8* %45)
  %47 = load i8**, i8*** %4, align 8
  store i8* %46, i8** %47, align 8
  br label %48

48:                                               ; preds = %44, %43
  br label %49

49:                                               ; preds = %48, %8
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
