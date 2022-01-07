; ModuleID = '/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_sha1.c_sha1_pad.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/pgcrypto/extr_sha1.c_sha1_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sha1_ctxt = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sha1_pad(%struct.sha1_ctxt* %0) #0 {
  %2 = alloca %struct.sha1_ctxt*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.sha1_ctxt* %0, %struct.sha1_ctxt** %2, align 8
  %5 = call i32 @PUTPAD(i32 128)
  %6 = load i32, i32* @COUNT, align 4
  %7 = srem i32 %6, 64
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = sub i64 64, %9
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp ult i64 %11, 8
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %2, align 8
  %15 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @memset(i32* %19, i32 0, i64 %20)
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* @COUNT, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* @COUNT, align 4
  %27 = load i32, i32* @COUNT, align 4
  %28 = srem i32 %27, 64
  store i32 %28, i32* @COUNT, align 4
  %29 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %2, align 8
  %30 = call i32 @sha1_step(%struct.sha1_ctxt* %29)
  %31 = load i32, i32* @COUNT, align 4
  %32 = srem i32 %31, 64
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = sub i64 64, %34
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %13, %1
  %37 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %2, align 8
  %38 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i64, i64* %3, align 8
  %44 = sub i64 %43, 8
  %45 = call i32 @memset(i32* %42, i32 0, i64 %44)
  %46 = load i64, i64* %3, align 8
  %47 = sub i64 %46, 8
  %48 = load i32, i32* @COUNT, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* @COUNT, align 4
  %52 = load i32, i32* @COUNT, align 4
  %53 = srem i32 %52, 64
  store i32 %53, i32* @COUNT, align 4
  %54 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %2, align 8
  %55 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 7
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PUTPAD(i32 %59)
  %61 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %2, align 8
  %62 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @PUTPAD(i32 %66)
  %68 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %2, align 8
  %69 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PUTPAD(i32 %73)
  %75 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %2, align 8
  %76 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @PUTPAD(i32 %80)
  %82 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %2, align 8
  %83 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @PUTPAD(i32 %87)
  %89 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %2, align 8
  %90 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @PUTPAD(i32 %94)
  %96 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %2, align 8
  %97 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PUTPAD(i32 %101)
  %103 = load %struct.sha1_ctxt*, %struct.sha1_ctxt** %2, align 8
  %104 = getelementptr inbounds %struct.sha1_ctxt, %struct.sha1_ctxt* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PUTPAD(i32 %108)
  ret void
}

declare dso_local i32 @PUTPAD(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @sha1_step(%struct.sha1_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
