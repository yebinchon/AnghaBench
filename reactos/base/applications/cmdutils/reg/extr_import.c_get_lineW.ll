; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_get_lineW.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/cmdutils/reg/extr_import.c_get_lineW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_lineW.size = internal global i64 0, align 8
@get_lineW.buf = internal global i8* null, align 8
@get_lineW.next = internal global i8* null, align 8
@REG_VAL_BUF_SIZE = common dso_local global i64 0, align 8
@get_lineW.line_endings = internal constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*)* @get_lineW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_lineW(i32* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %92

11:                                               ; preds = %1
  %12 = load i64, i64* @get_lineW.size, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @REG_VAL_BUF_SIZE, align 8
  store i64 %15, i64* @get_lineW.size, align 8
  %16 = load i64, i64* @get_lineW.size, align 8
  %17 = mul i64 %16, 1
  %18 = call i8* @heap_xalloc(i64 %17)
  store i8* %18, i8** @get_lineW.buf, align 8
  %19 = load i8*, i8** @get_lineW.buf, align 8
  store i8 0, i8* %19, align 1
  %20 = load i8*, i8** @get_lineW.buf, align 8
  store i8* %20, i8** @get_lineW.next, align 8
  br label %21

21:                                               ; preds = %14, %11
  %22 = load i8*, i8** @get_lineW.next, align 8
  store i8* %22, i8** %4, align 8
  br label %23

23:                                               ; preds = %64, %21
  %24 = load i8*, i8** @get_lineW.next, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %91

26:                                               ; preds = %23
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @strpbrkW(i8* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @get_lineW.line_endings, i64 0, i64 0))
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %72, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** @get_lineW.next, align 8
  %33 = call i64 @strlenW(i8* %32)
  store i64 %33, i64* %6, align 8
  %34 = load i8*, i8** @get_lineW.buf, align 8
  %35 = load i8*, i8** @get_lineW.next, align 8
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, 1
  %38 = mul i64 %37, 1
  %39 = call i32 @memmove(i8* %34, i8* %35, i64 %38)
  %40 = load i64, i64* @get_lineW.size, align 8
  %41 = load i64, i64* %6, align 8
  %42 = sub i64 %40, %41
  %43 = icmp ult i64 %42, 3
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load i64, i64* @get_lineW.size, align 8
  %46 = mul i64 %45, 2
  store i64 %46, i64* @get_lineW.size, align 8
  %47 = load i8*, i8** @get_lineW.buf, align 8
  %48 = load i64, i64* @get_lineW.size, align 8
  %49 = mul i64 %48, 1
  %50 = call i8* @heap_xrealloc(i8* %47, i64 %49)
  store i8* %50, i8** @get_lineW.buf, align 8
  br label %51

51:                                               ; preds = %44, %31
  %52 = load i8*, i8** @get_lineW.buf, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  %55 = load i64, i64* @get_lineW.size, align 8
  %56 = load i64, i64* %6, align 8
  %57 = sub i64 %55, %56
  %58 = sub i64 %57, 1
  %59 = load i32*, i32** %3, align 8
  %60 = call i64 @fread(i8* %54, i32 1, i64 %58, i32* %59)
  store i64 %60, i64* %7, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %51
  store i8* null, i8** @get_lineW.next, align 8
  %63 = load i8*, i8** @get_lineW.buf, align 8
  store i8* %63, i8** %2, align 8
  br label %99

64:                                               ; preds = %51
  %65 = load i8*, i8** @get_lineW.buf, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %66, %67
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  store i8 0, i8* %69, align 1
  %70 = load i8*, i8** @get_lineW.buf, align 8
  store i8* %70, i8** @get_lineW.next, align 8
  %71 = load i8*, i8** @get_lineW.buf, align 8
  store i8* %71, i8** %4, align 8
  br label %23

72:                                               ; preds = %26
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8* %74, i8** @get_lineW.next, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 13
  br i1 %78, label %79, label %88

79:                                               ; preds = %72
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 10
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i8*, i8** @get_lineW.next, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** @get_lineW.next, align 8
  br label %88

88:                                               ; preds = %85, %79, %72
  %89 = load i8*, i8** %5, align 8
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %4, align 8
  store i8* %90, i8** %2, align 8
  br label %99

91:                                               ; preds = %23
  br label %92

92:                                               ; preds = %91, %10
  %93 = load i64, i64* @get_lineW.size, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i8*, i8** @get_lineW.buf, align 8
  %97 = call i32 @heap_free(i8* %96)
  br label %98

98:                                               ; preds = %95, %92
  store i64 0, i64* @get_lineW.size, align 8
  store i8* null, i8** %2, align 8
  br label %99

99:                                               ; preds = %98, %88, %62
  %100 = load i8*, i8** %2, align 8
  ret i8* %100
}

declare dso_local i8* @heap_xalloc(i64) #1

declare dso_local i8* @strpbrkW(i8*, i8*) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i8* @heap_xrealloc(i8*, i64) #1

declare dso_local i64 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @heap_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
