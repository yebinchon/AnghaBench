; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_encrypt_init.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-encrypt.c_encrypt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EncStat = type { i32* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@ENCBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8**)* @encrypt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encrypt_init(i32* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.EncStat*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %9, align 8
  store i32 1, i32* %11, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @pushf_write(i32* %21, i32* %13, i32 1)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  br label %55

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %27, %3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @pgp_cfb_create(i32** %10, i32 %31, i32 %34, i32 %37, i32 %38, i32* null)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %55

44:                                               ; preds = %28
  %45 = call %struct.EncStat* @px_alloc(i32 8)
  store %struct.EncStat* %45, %struct.EncStat** %8, align 8
  %46 = load %struct.EncStat*, %struct.EncStat** %8, align 8
  %47 = call i32 @memset(%struct.EncStat* %46, i32 0, i32 8)
  %48 = load i32*, i32** %10, align 8
  %49 = load %struct.EncStat*, %struct.EncStat** %8, align 8
  %50 = getelementptr inbounds %struct.EncStat, %struct.EncStat* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.EncStat*, %struct.EncStat** %8, align 8
  %52 = bitcast %struct.EncStat* %51 to i8*
  %53 = load i8**, i8*** %7, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i32, i32* @ENCBUF, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %44, %42, %25
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @pushf_write(i32*, i32*, i32) #1

declare dso_local i32 @pgp_cfb_create(i32**, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.EncStat* @px_alloc(i32) #1

declare dso_local i32 @memset(%struct.EncStat*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
