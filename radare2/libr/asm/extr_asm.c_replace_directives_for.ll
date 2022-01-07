; ModuleID = '/home/carl/AnghaBench/radare2/libr/asm/extr_asm.c_replace_directives_for.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/asm/extr_asm.c_replace_directives_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"<{%s}>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*)* @replace_directives_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @replace_directives_for(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = call i32* @r_strbuf_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32* %12, i32** %6, align 8
  store i8* null, i8** %7, align 8
  %13 = load i8*, i8** %4, align 8
  store i8* %13, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %54, %2
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strstr(i8* %18, i8* %19)
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %17, %14
  %22 = load i8*, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load i8*, i8** %7, align 8
  %26 = call i8* @strchr(i8* %25, i8 signext 10)
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %10, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %10, align 8
  store i8 0, i8* %30, align 1
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i8*, i8** %7, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %11, align 1
  %35 = load i8*, i8** %7, align 8
  store i8 0, i8* %35, align 1
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @r_strbuf_append(i32* %36, i8* %37)
  %39 = load i8, i8* %11, align 1
  %40 = load i8*, i8** %7, align 8
  store i8 %39, i8* %40, align 1
  %41 = load i32*, i32** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i32 @r_strbuf_appendf(i32* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i8*, i8** %10, align 8
  store i8* %45, i8** %8, align 8
  store i32 1, i32* %9, align 4
  br label %54

46:                                               ; preds = %21
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32*, i32** %6, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @r_strbuf_append(i32* %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %46
  br label %55

54:                                               ; preds = %32
  br label %14

55:                                               ; preds = %53
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 @free(i8* %59)
  %61 = load i32*, i32** %6, align 8
  %62 = call i8* @r_strbuf_drain(i32* %61)
  store i8* %62, i8** %3, align 8
  br label %67

63:                                               ; preds = %55
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @r_strbuf_free(i32* %64)
  %66 = load i8*, i8** %4, align 8
  store i8* %66, i8** %3, align 8
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare dso_local i32* @r_strbuf_new(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @r_strbuf_append(i32*, i8*) #1

declare dso_local i32 @r_strbuf_appendf(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_strbuf_drain(i32*) #1

declare dso_local i32 @r_strbuf_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
