; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_blf.c_blowfish_decrypt_ecb.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_blf.c_blowfish_decrypt_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blowfish_decrypt_ecb(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 7
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @Assert(i32 %13)
  br label %15

15:                                               ; preds = %18, %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @GET_32BIT_MSB_FIRST(i32* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = call i32 @GET_32BIT_MSB_FIRST(i32* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @blowfish_decrypt(i32 %24, i32 %25, i32* %26, i32* %27)
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PUT_32BIT_MSB_FIRST(i32* %29, i32 %31)
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @PUT_32BIT_MSB_FIRST(i32* %34, i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  store i32* %39, i32** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 8
  store i32 %41, i32* %5, align 4
  br label %15

42:                                               ; preds = %15
  ret void
}

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @GET_32BIT_MSB_FIRST(i32*) #1

declare dso_local i32 @blowfish_decrypt(i32, i32, i32*, i32*) #1

declare dso_local i32 @PUT_32BIT_MSB_FIRST(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
