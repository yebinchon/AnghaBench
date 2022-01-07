; ModuleID = '/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_next_protos_parse.c'
source_filename = "/home/carl/AnghaBench/openssl/test/extr_ssltest_old.c_next_protos_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64*, i8*)* @next_protos_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @next_protos_parse(i64* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp uge i64 %13, 65535
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %76

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 %18, 1
  %20 = call i8* @OPENSSL_malloc(i32 %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  store i8* null, i8** %3, align 8
  br label %76

24:                                               ; preds = %16
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %68, %24
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 44
  br i1 %39, label %40, label %58

40:                                               ; preds = %33, %29
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = sub i64 %41, %42
  %44 = icmp ugt i64 %43, 255
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @OPENSSL_free(i8* %46)
  store i8* null, i8** %3, align 8
  br label %76

48:                                               ; preds = %40
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i8
  %53 = load i8*, i8** %7, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 %52, i8* %55, align 1
  %56 = load i64, i64* %8, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %9, align 8
  br label %67

58:                                               ; preds = %33
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 %62, i8* %66, align 1
  br label %67

67:                                               ; preds = %58, %48
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %25

71:                                               ; preds = %25
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, 1
  %74 = load i64*, i64** %4, align 8
  store i64 %73, i64* %74, align 8
  %75 = load i8*, i8** %7, align 8
  store i8* %75, i8** %3, align 8
  br label %76

76:                                               ; preds = %71, %45, %23, %15
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
