; ModuleID = '/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_out.c_phpdbg_encode_xml.c'
source_filename = "/home/carl/AnghaBench/php-src/sapi/phpdbg/extr_phpdbg_out.c_phpdbg_encode_xml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32, i32, i8*)* @phpdbg_encode_xml to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phpdbg_encode_xml(i8** %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @strlen(i8* %18)
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ 5, %20 ]
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %12, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i8* @emalloc(i32 %25)
  %27 = load i8**, i8*** %6, align 8
  store i8* %26, i8** %27, align 8
  store i8* %26, i8** %13, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %82, %21
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %85

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 38
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 (i8*, i8*, ...) @memcpy(i8* %39, i8* %42)
  %44 = load i8*, i8** %13, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 5
  store i8* %45, i8** %13, align 8
  br label %81

46:                                               ; preds = %33
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 60
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @ZEND_STRL(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 (i8*, i8*, ...) @memcpy(i8* %52, i8* %55)
  %57 = load i8*, i8** %13, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %58, i8** %13, align 8
  br label %80

59:                                               ; preds = %46
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %59
  %66 = load i8*, i8** %13, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 (i8*, i8*, ...) @memcpy(i8* %66, i8* %67, i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = load i8*, i8** %13, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %13, align 8
  br label %79

74:                                               ; preds = %59
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %13, align 8
  store i8 %76, i8* %77, align 1
  br label %79

79:                                               ; preds = %74, %65
  br label %80

80:                                               ; preds = %79, %51
  br label %81

81:                                               ; preds = %80, %38
  br label %82

82:                                               ; preds = %81
  %83 = load i8*, i8** %7, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %7, align 8
  br label %28

85:                                               ; preds = %28
  %86 = load i8*, i8** %13, align 8
  %87 = load i8**, i8*** %6, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = ptrtoint i8* %86 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %14, align 4
  %93 = load i8**, i8*** %6, align 8
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  %97 = call i8* @erealloc(i8* %94, i32 %96)
  %98 = load i8**, i8*** %6, align 8
  store i8* %97, i8** %98, align 8
  %99 = load i32, i32* %14, align 4
  ret i32 %99
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @emalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, ...) #1

declare dso_local i32 @ZEND_STRL(i8*) #1

declare dso_local i8* @erealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
