; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_copy_crlf.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-decrypt.c_copy_crlf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i32*)* @copy_crlf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_crlf(i32* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  store i8* %18, i8** %10, align 8
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %20 = getelementptr inbounds i8, i8* %19, i64 1024
  store i8* %20, i8** %12, align 8
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  store i8* %21, i8** %13, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 10
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %13, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %13, align 8
  store i8 13, i8* %31, align 1
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32*, i32** %9, align 8
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %4
  br label %36

36:                                               ; preds = %88, %35
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %40, label %89

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 13
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8*, i8** %10, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 10
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  br label %59

59:                                               ; preds = %56, %50
  br label %62

60:                                               ; preds = %45
  %61 = load i32*, i32** %9, align 8
  store i32 1, i32* %61, align 4
  br label %89

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %40
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %7, align 8
  %66 = load i8, i8* %64, align 1
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %13, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = icmp uge i8* %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %63
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %75 = load i8*, i8** %13, align 8
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32 @mbuf_append(i32* %73, i8* %74, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %5, align 4
  br label %114

86:                                               ; preds = %72
  %87 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  store i8* %87, i8** %13, align 8
  br label %88

88:                                               ; preds = %86, %63
  br label %36

89:                                               ; preds = %60, %36
  %90 = load i8*, i8** %13, align 8
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = icmp sgt i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %89
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  %105 = call i32 @mbuf_append(i32* %97, i8* %98, i32 %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %5, align 4
  br label %114

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110, %89
  %112 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %113 = call i32 @px_memset(i8* %112, i32 0, i32 1024)
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %111, %108, %84
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @mbuf_append(i32*, i8*, i32) #1

declare dso_local i32 @px_memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
