; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_sha1.c_sha1_loop.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_sha1.c_sha1_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha1_ctxt = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64* }
%struct.TYPE_3__ = type { i32* }

@COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha1_loop(%struct.sha1_ctxt* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.sha1_ctxt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sha1_ctxt* %0, %struct.sha1_ctxt** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %7, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %69, %3
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %73

17:                                               ; preds = %13
  %18 = load i32, i32* @COUNT, align 4
  %19 = srem i32 %18, 64
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = sub i64 64, %21
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %10, align 8
  %26 = sub i64 %24, %25
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i64, i64* %8, align 8
  br label %34

30:                                               ; preds = %17
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 %31, %32
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i64 [ %29, %28 ], [ %33, %30 ]
  store i64 %35, i64* %11, align 8
  %36 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %4, align 8
  %37 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32*, i32** %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @memmove(i32* %41, i32* %44, i64 %45)
  %47 = load i64, i64* %11, align 8
  %48 = load i32, i32* @COUNT, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* @COUNT, align 4
  %52 = load i32, i32* @COUNT, align 4
  %53 = srem i32 %52, 64
  store i32 %53, i32* @COUNT, align 4
  %54 = load i64, i64* %11, align 8
  %55 = mul i64 %54, 8
  %56 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %4, align 8
  %57 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %55
  store i64 %62, i64* %60, align 8
  %63 = load i32, i32* @COUNT, align 4
  %64 = srem i32 %63, 64
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %34
  %67 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %4, align 8
  %68 = call i32 @sha1_step(%struct.sha1_ctxt* %67)
  br label %69

69:                                               ; preds = %66, %34
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %10, align 8
  br label %13

73:                                               ; preds = %13
  ret void
}

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @sha1_step(%struct.sha1_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
