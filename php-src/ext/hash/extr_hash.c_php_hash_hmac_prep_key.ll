; ModuleID = '/home/carl/AnghaBench/php-src/ext/hash/extr_hash.c_php_hash_hmac_prep_key.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/hash/extr_hash.c_php_hash_hmac_prep_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 (i8*, i8*)*, i32 (i8*, i8*, i64)*, i32 (i8*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i8*, i8*, i64)* @php_hash_hmac_prep_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @php_hash_hmac_prep_key(i8* %0, %struct.TYPE_3__* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @memset(i8* %11, i32 0, i64 %14)
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %5
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i32 (i8*)*, i32 (i8*)** %23, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 %24(i8* %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %28, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 %29(i8* %30, i8* %31, i64 %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 %36(i8* %37, i8* %38)
  br label %45

40:                                               ; preds = %5
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @memcpy(i8* %41, i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %40, %21
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @php_hash_string_xor_char(i8* %46, i8* %47, i32 54, i64 %50)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @php_hash_string_xor_char(i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
