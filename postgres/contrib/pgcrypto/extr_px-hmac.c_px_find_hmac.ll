; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_px-hmac.c_px_find_hmac.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_px-hmac.c_px_find_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@PXE_HASH_UNUSABLE_FOR_HMAC = common dso_local global i32 0, align 4
@hmac_result_size = common dso_local global i32 0, align 4
@hmac_block_size = common dso_local global i32 0, align 4
@hmac_reset = common dso_local global i32 0, align 4
@hmac_update = common dso_local global i32 0, align 4
@hmac_finish = common dso_local global i32 0, align 4
@hmac_free = common dso_local global i32 0, align 4
@hmac_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @px_find_hmac(i8* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @px_find_digest(i8* %10, i32** %7)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @px_md_block_size(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ult i32 %19, 2
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @px_md_free(i32* %22)
  %24 = load i32, i32* @PXE_HASH_UNUSABLE_FOR_HMAC, align 4
  store i32 %24, i32* %3, align 4
  br label %64

25:                                               ; preds = %16
  %26 = call i8* @px_alloc(i32 56)
  %27 = bitcast i8* %26 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i8* @px_alloc(i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @px_alloc(i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 7
  store i32* %38, i32** %40, align 8
  %41 = load i32, i32* @hmac_result_size, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 6
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @hmac_block_size, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @hmac_reset, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @hmac_update, align 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @hmac_finish, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @hmac_free, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @hmac_init, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %63, align 8
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %25, %21, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @px_find_digest(i8*, i32**) #1

declare dso_local i32 @px_md_block_size(i32*) #1

declare dso_local i32 @px_md_free(i32*) #1

declare dso_local i8* @px_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
