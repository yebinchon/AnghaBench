; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_crlf_process.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_crlf_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crlf_process.crlf = internal constant [2 x i8] c"\0D\0A", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i32)* @crlf_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crlf_process(i32* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %79, %4
  %20 = load i8*, i8** %11, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ult i8* %20, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %19
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i8* @memchr(i8* %24, i8 signext 10, i32 %30)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i8*, i8** %9, align 8
  store i8* %35, i8** %10, align 8
  br label %36

36:                                               ; preds = %34, %23
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %36
  %46 = load i32*, i32** %5, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @pushf_write(i32* %46, i8* %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %80

53:                                               ; preds = %45
  %54 = load i32, i32* %12, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8* %57, i8** %11, align 8
  br label %58

58:                                               ; preds = %53, %36
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ult i8* %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i8*, i8** %11, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 10
  br label %68

68:                                               ; preds = %63, %59
  %69 = phi i1 [ false, %59 ], [ %67, %63 ]
  br i1 %69, label %70, label %79

70:                                               ; preds = %68
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @pushf_write(i32* %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @crlf_process.crlf, i64 0, i64 0), i32 2)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %79

76:                                               ; preds = %70
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %11, align 8
  br label %59

79:                                               ; preds = %75, %68
  br label %19

80:                                               ; preds = %52, %19
  %81 = load i32, i32* %13, align 4
  ret i32 %81
}

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @pushf_write(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
