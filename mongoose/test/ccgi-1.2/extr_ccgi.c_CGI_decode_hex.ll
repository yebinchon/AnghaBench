; ModuleID = '/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_ccgi.c_CGI_decode_hex.c'
source_filename = "/home/carl/AnghaBench/mongoose/test/ccgi-1.2/extr_ccgi.c_CGI_decode_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CGI_decode_hex(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @strlen(i8* %15)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %9, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %2
  store i8* null, i8** %3, align 8
  br label %81

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  %23 = sdiv i32 %22, 2
  %24 = add nsw i32 %23, 1
  %25 = call i32 (i32, ...) bitcast (i32 (...)* @mymalloc to i32 (i32, ...)*)(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %66, %21
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = call i32 (i32, ...) bitcast (i32 (...)* @hex to i32 (i32, ...)*)(i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %32
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = call i32 (i32, ...) bitcast (i32 (...)* @hex to i32 (i32, ...)*)(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 %52, 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %53, %54
  %56 = trunc i32 %55 to i8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 %56, i8* %61, align 1
  br label %65

62:                                               ; preds = %41, %32
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 (i8*, ...) bitcast (i32 (...)* @free to i32 (i8*, ...)*)(i8* %63)
  store i8* null, i8** %3, align 8
  br label %81

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 2
  store i32 %68, i32* %7, align 4
  br label %28

69:                                               ; preds = %28
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 0, i8* %73, align 1
  %74 = load i32*, i32** %5, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = load i32*, i32** %5, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %69
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** %3, align 8
  br label %81

81:                                               ; preds = %79, %62, %20
  %82 = load i8*, i8** %3, align 8
  ret i8* %82
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mymalloc(...) #1

declare dso_local i32 @hex(...) #1

declare dso_local i32 @free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
