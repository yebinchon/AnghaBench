; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-des.c_des_cipher.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_crypt-des.c_des_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@des_initialised = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i32)* @des_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des_cipher(i8* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @des_initialised, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = call i32 (...) @des_init()
  br label %20

20:                                               ; preds = %18, %4
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @setup_salt(i64 %21)
  %23 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @memcpy(i8* %23, i8* %24, i32 2)
  %26 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = call signext i8 @pg_ntoh32(i8 signext %27)
  store i8 %28, i8* %13, align 1
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = call signext i8 @pg_ntoh32(i8 signext %30)
  store i8 %31, i8* %14, align 1
  %32 = load i8, i8* %13, align 1
  %33 = load i8, i8* %14, align 1
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @do_des(i8 signext %32, i8 signext %33, i8* %11, i8* %12, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %5, align 4
  br label %51

40:                                               ; preds = %20
  %41 = load i8, i8* %11, align 1
  %42 = call signext i8 @pg_hton32(i8 signext %41)
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 %42, i8* %43, align 1
  %44 = load i8, i8* %12, align 1
  %45 = call signext i8 @pg_hton32(i8 signext %44)
  %46 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 %45, i8* %46, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %49 = call i32 @memcpy(i8* %47, i8* %48, i32 2)
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %40, %38
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @des_init(...) #1

declare dso_local i32 @setup_salt(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local signext i8 @pg_ntoh32(i8 signext) #1

declare dso_local i32 @do_des(i8 signext, i8 signext, i8*, i8*, i32) #1

declare dso_local signext i8 @pg_hton32(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
