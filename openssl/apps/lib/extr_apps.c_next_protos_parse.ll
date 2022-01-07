; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_next_protos_parse.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_apps.c_next_protos_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"NPN buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @next_protos_parse(i64* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strlen(i8* %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = icmp uge i64 %16, 65535
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  store i8* null, i8** %3, align 8
  br label %96

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, 1
  %22 = call i8* @app_malloc(i64 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i8* %22, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %79, %19
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %27, label %82

27:                                               ; preds = %23
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 44
  br i1 %37, label %38, label %67

38:                                               ; preds = %31, %27
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %79

47:                                               ; preds = %38
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub i64 %48, %49
  %51 = icmp ugt i64 %50, 255
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @OPENSSL_free(i8* %53)
  store i8* null, i8** %3, align 8
  br label %96

55:                                               ; preds = %47
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i8
  %60 = load i8*, i8** %7, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = sub i64 %61, %62
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 %59, i8* %64, align 1
  %65 = load i64, i64* %8, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  br label %78

67:                                               ; preds = %31
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  %75 = load i64, i64* %10, align 8
  %76 = sub i64 %74, %75
  %77 = getelementptr inbounds i8, i8* %72, i64 %76
  store i8 %71, i8* %77, align 1
  br label %78

78:                                               ; preds = %67, %55
  br label %79

79:                                               ; preds = %78, %42
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %23

82:                                               ; preds = %23
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp ule i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @OPENSSL_free(i8* %87)
  store i8* null, i8** %3, align 8
  br label %96

89:                                               ; preds = %82
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, 1
  %92 = load i64, i64* %10, align 8
  %93 = sub i64 %91, %92
  %94 = load i64*, i64** %4, align 8
  store i64 %93, i64* %94, align 8
  %95 = load i8*, i8** %7, align 8
  store i8* %95, i8** %3, align 8
  br label %96

96:                                               ; preds = %89, %86, %52, %18
  %97 = load i8*, i8** %3, align 8
  ret i8* %97
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @app_malloc(i64, i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
