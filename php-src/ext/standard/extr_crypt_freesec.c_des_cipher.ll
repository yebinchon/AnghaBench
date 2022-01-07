; ModuleID = '/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_freesec.c_des_cipher.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/standard/extr_crypt_freesec.c_des_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.php_crypt_extended_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, %struct.php_crypt_extended_data*)* @des_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_cipher(i8* %0, i8* %1, i32 %2, i32 %3, %struct.php_crypt_extended_data* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.php_crypt_extended_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.php_crypt_extended_data* %4, %struct.php_crypt_extended_data** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %10, align 8
  %18 = call i32 @setup_salt(i32 %16, %struct.php_crypt_extended_data* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i64
  %23 = trunc i64 %22 to i32
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i64
  %28 = trunc i64 %27 to i32
  %29 = shl i32 %28, 8
  %30 = or i32 %23, %29
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i64
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 16
  %37 = or i32 %30, %36
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i64
  %42 = trunc i64 %41 to i32
  %43 = shl i32 %42, 24
  %44 = or i32 %37, %43
  store i32 %44, i32* %13, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 7
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i64
  %49 = trunc i64 %48 to i32
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 6
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i64
  %54 = trunc i64 %53 to i32
  %55 = shl i32 %54, 8
  %56 = or i32 %49, %55
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 5
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i64
  %61 = trunc i64 %60 to i32
  %62 = shl i32 %61, 16
  %63 = or i32 %56, %62
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i64
  %68 = trunc i64 %67 to i32
  %69 = shl i32 %68, 24
  %70 = or i32 %63, %69
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.php_crypt_extended_data*, %struct.php_crypt_extended_data** %10, align 8
  %75 = call i32 @do_des(i32 %71, i32 %72, i32* %11, i32* %12, i32 %73, %struct.php_crypt_extended_data* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %11, align 4
  %77 = ashr i32 %76, 24
  %78 = trunc i32 %77 to i8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 %78, i8* %80, align 1
  %81 = load i32, i32* %11, align 4
  %82 = ashr i32 %81, 16
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8 %83, i8* %85, align 1
  %86 = load i32, i32* %11, align 4
  %87 = ashr i32 %86, 8
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  store i8 %88, i8* %90, align 1
  %91 = load i32, i32* %11, align 4
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %7, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 3
  store i8 %92, i8* %94, align 1
  %95 = load i32, i32* %12, align 4
  %96 = ashr i32 %95, 24
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 4
  store i8 %97, i8* %99, align 1
  %100 = load i32, i32* %12, align 4
  %101 = ashr i32 %100, 16
  %102 = trunc i32 %101 to i8
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 5
  store i8 %102, i8* %104, align 1
  %105 = load i32, i32* %12, align 4
  %106 = ashr i32 %105, 8
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %7, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 6
  store i8 %107, i8* %109, align 1
  %110 = load i32, i32* %12, align 4
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 7
  store i8 %111, i8* %113, align 1
  %114 = load i32, i32* %15, align 4
  ret i32 %114
}

declare dso_local i32 @setup_salt(i32, %struct.php_crypt_extended_data*) #1

declare dso_local i32 @do_des(i32, i32, i32*, i32*, i32, %struct.php_crypt_extended_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
