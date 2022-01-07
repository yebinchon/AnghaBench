; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_internal.c_rj_init.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_internal.c_rj_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.int_ctx = type { i32, i32*, i32 }

@PXE_KEY_TOO_BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32, i32*)* @rj_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rj_init(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.int_ctx*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.int_ctx*
  store %struct.int_ctx* %14, %struct.int_ctx** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ule i32 %15, 16
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %19 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %18, i32 0, i32 0
  store i32 16, i32* %19, align 8
  br label %36

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ule i32 %21, 24
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %25 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %24, i32 0, i32 0
  store i32 24, i32* %25, align 8
  br label %35

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = icmp ule i32 %27, 32
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %31 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %30, i32 0, i32 0
  store i32 32, i32* %31, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @PXE_KEY_TOO_BIG, align 4
  store i32 %33, i32* %5, align 4
  br label %51

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35, %17
  %37 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %38 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %37, i32 0, i32 2
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @memcpy(i32* %38, i32* %39, i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.int_ctx*, %struct.int_ctx** %10, align 8
  %46 = getelementptr inbounds %struct.int_ctx, %struct.int_ctx* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @memcpy(i32* %47, i32* %48, i32 16)
  br label %50

50:                                               ; preds = %44, %36
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
