; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_encrypt_process.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_encrypt_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EncStat = type { i32, i32 }

@ENCBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32)* @encrypt_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypt_process(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.EncStat*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.EncStat*
  store %struct.EncStat* %15, %struct.EncStat** %11, align 8
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %12, align 4
  br label %17

17:                                               ; preds = %54, %4
  %18 = load i32, i32* %12, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @ENCBUF, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @ENCBUF, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %12, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %13, align 4
  %30 = load %struct.EncStat*, %struct.EncStat** %11, align 8
  %31 = getelementptr inbounds %struct.EncStat, %struct.EncStat* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.EncStat*, %struct.EncStat** %11, align 8
  %36 = getelementptr inbounds %struct.EncStat, %struct.EncStat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pgp_cfb_encrypt(i32 %32, i32* %33, i32 %34, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %63

43:                                               ; preds = %28
  %44 = load i32*, i32** %6, align 8
  %45 = load %struct.EncStat*, %struct.EncStat** %11, align 8
  %46 = getelementptr inbounds %struct.EncStat, %struct.EncStat* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @pushf_write(i32* %44, i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %63

54:                                               ; preds = %43
  %55 = load i32, i32* %13, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %8, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %17

62:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %52, %41
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @pgp_cfb_encrypt(i32, i32*, i32, i32) #1

declare dso_local i32 @pushf_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
