; ModuleID = '/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_buffalo-lib.c_bcrypt_process.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/firmware-utils/src/extr_buffalo-lib.c_bcrypt_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcrypt_ctx = type { i8*, i64, i8, i8 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcrypt_process(%struct.bcrypt_ctx* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.bcrypt_ctx*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  store %struct.bcrypt_ctx* %0, %struct.bcrypt_ctx** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %15 = load %struct.bcrypt_ctx*, %struct.bcrypt_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.bcrypt_ctx, %struct.bcrypt_ctx* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %9, align 8
  %18 = load %struct.bcrypt_ctx*, %struct.bcrypt_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.bcrypt_ctx, %struct.bcrypt_ctx* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load %struct.bcrypt_ctx*, %struct.bcrypt_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.bcrypt_ctx, %struct.bcrypt_ctx* %21, i32 0, i32 2
  %23 = load i8, i8* %22, align 8
  store i8 %23, i8* %11, align 1
  %24 = load %struct.bcrypt_ctx*, %struct.bcrypt_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.bcrypt_ctx, %struct.bcrypt_ctx* %24, i32 0, i32 3
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %12, align 1
  store i64 0, i64* %13, align 8
  br label %27

27:                                               ; preds = %101, %4
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %104

31:                                               ; preds = %27
  %32 = load i8, i8* %11, align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %10, align 8
  %37 = urem i64 %35, %36
  %38 = trunc i64 %37 to i8
  store i8 %38, i8* %11, align 1
  %39 = load i8, i8* %12, align 1
  %40 = zext i8 %39 to i32
  %41 = load i8*, i8** %9, align 8
  %42 = load i8, i8* %11, align 1
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %40, %46
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %10, align 8
  %50 = urem i64 %48, %49
  %51 = trunc i64 %50 to i8
  store i8 %51, i8* %12, align 1
  %52 = load i8*, i8** %9, align 8
  %53 = load i8, i8* %12, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  store i8 %56, i8* %14, align 1
  %57 = load i8*, i8** %9, align 8
  %58 = load i8, i8* %11, align 1
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %12, align 1
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 %61, i8* %65, align 1
  %66 = load i8, i8* %14, align 1
  %67 = load i8*, i8** %9, align 8
  %68 = load i8, i8* %11, align 1
  %69 = zext i8 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 %66, i8* %70, align 1
  %71 = load i8*, i8** %6, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = load i8*, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i8, i8* %11, align 1
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8*, i8** %9, align 8
  %84 = load i8, i8* %12, align 1
  %85 = zext i8 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %82, %88
  %90 = sext i32 %89 to i64
  %91 = load i64, i64* %10, align 8
  %92 = urem i64 %90, %91
  %93 = getelementptr inbounds i8, i8* %76, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = xor i32 %75, %95
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 %97, i8* %100, align 1
  br label %101

101:                                              ; preds = %31
  %102 = load i64, i64* %13, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %13, align 8
  br label %27

104:                                              ; preds = %27
  %105 = load i8, i8* %11, align 1
  %106 = load %struct.bcrypt_ctx*, %struct.bcrypt_ctx** %5, align 8
  %107 = getelementptr inbounds %struct.bcrypt_ctx, %struct.bcrypt_ctx* %106, i32 0, i32 2
  store i8 %105, i8* %107, align 8
  %108 = load i8, i8* %12, align 1
  %109 = load %struct.bcrypt_ctx*, %struct.bcrypt_ctx** %5, align 8
  %110 = getelementptr inbounds %struct.bcrypt_ctx, %struct.bcrypt_ctx* %109, i32 0, i32 3
  store i8 %108, i8* %110, align 1
  %111 = load i64, i64* %8, align 8
  %112 = trunc i64 %111 to i32
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
