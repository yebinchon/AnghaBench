; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_px-crypt.c_px_crypt.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_px-crypt.c_px_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.px_crypt_algo = type { i8* (i8*, i8*, i8*, i32)*, i32, i64 }

@px_crypt_list = common dso_local global %struct.px_crypt_algo* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @px_crypt(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.px_crypt_algo*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.px_crypt_algo*, %struct.px_crypt_algo** @px_crypt_list, align 8
  store %struct.px_crypt_algo* %11, %struct.px_crypt_algo** %10, align 8
  br label %12

12:                                               ; preds = %35, %4
  %13 = load %struct.px_crypt_algo*, %struct.px_crypt_algo** %10, align 8
  %14 = getelementptr inbounds %struct.px_crypt_algo, %struct.px_crypt_algo* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %12
  %18 = load %struct.px_crypt_algo*, %struct.px_crypt_algo** %10, align 8
  %19 = getelementptr inbounds %struct.px_crypt_algo, %struct.px_crypt_algo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %38

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.px_crypt_algo*, %struct.px_crypt_algo** %10, align 8
  %26 = getelementptr inbounds %struct.px_crypt_algo, %struct.px_crypt_algo* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.px_crypt_algo*, %struct.px_crypt_algo** %10, align 8
  %29 = getelementptr inbounds %struct.px_crypt_algo, %struct.px_crypt_algo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @strncmp(i8* %24, i64 %27, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.px_crypt_algo*, %struct.px_crypt_algo** %10, align 8
  %37 = getelementptr inbounds %struct.px_crypt_algo, %struct.px_crypt_algo* %36, i32 1
  store %struct.px_crypt_algo* %37, %struct.px_crypt_algo** %10, align 8
  br label %12

38:                                               ; preds = %33, %22, %12
  %39 = load %struct.px_crypt_algo*, %struct.px_crypt_algo** %10, align 8
  %40 = getelementptr inbounds %struct.px_crypt_algo, %struct.px_crypt_algo* %39, i32 0, i32 0
  %41 = load i8* (i8*, i8*, i8*, i32)*, i8* (i8*, i8*, i8*, i32)** %40, align 8
  %42 = icmp eq i8* (i8*, i8*, i8*, i32)* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i8* null, i8** %5, align 8
  br label %53

44:                                               ; preds = %38
  %45 = load %struct.px_crypt_algo*, %struct.px_crypt_algo** %10, align 8
  %46 = getelementptr inbounds %struct.px_crypt_algo, %struct.px_crypt_algo* %45, i32 0, i32 0
  %47 = load i8* (i8*, i8*, i8*, i32)*, i8* (i8*, i8*, i8*, i32)** %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i8* %47(i8* %48, i8* %49, i8* %50, i32 %51)
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %44, %43
  %54 = load i8*, i8** %5, align 8
  ret i8* %54
}

declare dso_local i64 @strncmp(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
