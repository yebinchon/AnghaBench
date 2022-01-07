; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-cfb.c_pgp_cfb_create.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_pgp-cfb.c_pgp_cfb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pgp_cfb_create(%struct.TYPE_5__** %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @pgp_load_cipher(i32 %17, i32** %15)
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %7, align 4
  br label %62

23:                                               ; preds = %6
  %24 = load i32*, i32** %15, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @px_cipher_init(i32* %24, i32* %25, i32 %26, i32* null)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32*, i32** %15, align 8
  %32 = call i32 @px_cipher_free(i32* %31)
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %7, align 4
  br label %62

34:                                               ; preds = %23
  %35 = call %struct.TYPE_5__* @px_alloc(i32 24)
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %16, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %37 = call i32 @memset(%struct.TYPE_5__* %36, i32 0, i32 24)
  %38 = load i32*, i32** %15, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i32* %38, i32** %40, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @px_cipher_block_size(i32* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load i32*, i32** %13, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %34
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @memcpy(i32 %53, i32* %54, i32 %57)
  br label %59

59:                                               ; preds = %50, %34
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  store %struct.TYPE_5__* %60, %struct.TYPE_5__** %61, align 8
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %30, %21
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @pgp_load_cipher(i32, i32**) #1

declare dso_local i32 @px_cipher_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @px_cipher_free(i32*) #1

declare dso_local %struct.TYPE_5__* @px_alloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @px_cipher_block_size(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
