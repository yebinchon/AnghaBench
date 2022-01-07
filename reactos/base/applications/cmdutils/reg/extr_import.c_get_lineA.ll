; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_get_lineA.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_get_lineA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_lineA.lineW = internal global i8* null, align 8
@get_lineA.size = internal global i64 0, align 8
@get_lineA.buf = internal global i8* null, align 8
@get_lineA.next = internal global i8* null, align 8
@REG_VAL_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @get_lineA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_lineA(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i8*, i8** @get_lineA.lineW, align 8
  %9 = call i32 @heap_free(i8* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %95

13:                                               ; preds = %1
  %14 = load i64, i64* @get_lineA.size, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @REG_VAL_BUF_SIZE, align 8
  store i64 %17, i64* @get_lineA.size, align 8
  %18 = load i64, i64* @get_lineA.size, align 8
  %19 = call i8* @heap_xalloc(i64 %18)
  store i8* %19, i8** @get_lineA.buf, align 8
  %20 = load i8*, i8** @get_lineA.buf, align 8
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** @get_lineA.buf, align 8
  store i8* %21, i8** @get_lineA.next, align 8
  br label %22

22:                                               ; preds = %16, %13
  %23 = load i8*, i8** @get_lineA.next, align 8
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %65, %22
  %25 = load i8*, i8** @get_lineA.next, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %94

27:                                               ; preds = %24
  %28 = load i8*, i8** %4, align 8
  %29 = call i8* @strpbrk(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %73, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** @get_lineA.next, align 8
  %34 = call i64 @strlen(i8* %33)
  store i64 %34, i64* %6, align 8
  %35 = load i8*, i8** @get_lineA.buf, align 8
  %36 = load i8*, i8** @get_lineA.next, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 1
  %39 = call i32 @memmove(i8* %35, i8* %36, i64 %38)
  %40 = load i64, i64* @get_lineA.size, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %40, %41
  %43 = icmp ult i64 %42, 3
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load i64, i64* @get_lineA.size, align 8
  %46 = mul i64 %45, 2
  store i64 %46, i64* @get_lineA.size, align 8
  %47 = load i8*, i8** @get_lineA.buf, align 8
  %48 = load i64, i64* @get_lineA.size, align 8
  %49 = call i8* @heap_xrealloc(i8* %47, i64 %48)
  store i8* %49, i8** @get_lineA.buf, align 8
  br label %50

50:                                               ; preds = %44, %32
  %51 = load i8*, i8** @get_lineA.buf, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i64, i64* @get_lineA.size, align 8
  %55 = load i64, i64* %6, align 8
  %56 = sub i64 %54, %55
  %57 = sub i64 %56, 1
  %58 = load i32*, i32** %3, align 8
  %59 = call i64 @fread(i8* %53, i32 1, i64 %57, i32* %58)
  store i64 %59, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %50
  store i8* null, i8** @get_lineA.next, align 8
  %62 = load i8*, i8** @get_lineA.buf, align 8
  %63 = call i8* @GetWideString(i8* %62)
  store i8* %63, i8** @get_lineA.lineW, align 8
  %64 = load i8*, i8** @get_lineA.lineW, align 8
  store i8* %64, i8** %2, align 8
  br label %102

65:                                               ; preds = %50
  %66 = load i8*, i8** @get_lineA.buf, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %67, %68
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i8*, i8** @get_lineA.buf, align 8
  store i8* %71, i8** @get_lineA.next, align 8
  %72 = load i8*, i8** @get_lineA.buf, align 8
  store i8* %72, i8** %4, align 8
  br label %24

73:                                               ; preds = %27
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  store i8* %75, i8** @get_lineA.next, align 8
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 13
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i8*, i8** @get_lineA.next, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** @get_lineA.next, align 8
  br label %89

89:                                               ; preds = %86, %80, %73
  %90 = load i8*, i8** %5, align 8
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %4, align 8
  %92 = call i8* @GetWideString(i8* %91)
  store i8* %92, i8** @get_lineA.lineW, align 8
  %93 = load i8*, i8** @get_lineA.lineW, align 8
  store i8* %93, i8** %2, align 8
  br label %102

94:                                               ; preds = %24
  br label %95

95:                                               ; preds = %94, %12
  store i8* null, i8** @get_lineA.lineW, align 8
  %96 = load i64, i64* @get_lineA.size, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i8*, i8** @get_lineA.buf, align 8
  %100 = call i32 @heap_free(i8* %99)
  br label %101

101:                                              ; preds = %98, %95
  store i64 0, i64* @get_lineA.size, align 8
  store i8* null, i8** %2, align 8
  br label %102

102:                                              ; preds = %101, %89, %61
  %103 = load i8*, i8** %2, align 8
  ret i8* %103
}

declare dso_local i32 @heap_free(i8*) #1

declare dso_local i8* @heap_xalloc(i64) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i8* @heap_xrealloc(i8*, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i8* @GetWideString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
