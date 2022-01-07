; ModuleID = '/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_compute_format.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/pcre/pcre2lib/sljit/extr_sljitNativeTILEGX_64.c_compute_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.Format = type { i32 }

@inst_buf = common dso_local global %struct.TYPE_4__* null, align 8
@inst_buf_index = common dso_local global i32 0, align 4
@NO_PIPELINE = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.Format* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Format* @compute_format() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Format*, align 8
  %3 = alloca %struct.Format*, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @inst_buf, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @inst_buf, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @inst_buf_index, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %26

19:                                               ; preds = %0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @inst_buf, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  br label %29

26:                                               ; preds = %0
  %27 = load i32, i32* @NO_PIPELINE, align 4
  %28 = shl i32 1, %27
  br label %29

29:                                               ; preds = %26, %19
  %30 = phi i32 [ %25, %19 ], [ %28, %26 ]
  %31 = call i32 @BUNDLE_FORMAT_MASK(i32 %10, i32 %16, i32 %30)
  store i32 %31, i32* %1, align 4
  store %struct.Format* null, %struct.Format** %2, align 8
  store %struct.Format* null, %struct.Format** %3, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %53, %29
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %34, 2
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.Format*, %struct.Format** @formats, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.Format, %struct.Format* %37, i64 %39
  store %struct.Format* %40, %struct.Format** %3, align 8
  %41 = load %struct.Format*, %struct.Format** %3, align 8
  %42 = getelementptr inbounds %struct.Format, %struct.Format* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %1, align 4
  %45 = and i32 %43, %44
  %46 = load %struct.Format*, %struct.Format** %3, align 8
  %47 = getelementptr inbounds %struct.Format, %struct.Format* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %36
  %51 = load %struct.Format*, %struct.Format** %3, align 8
  store %struct.Format* %51, %struct.Format** %2, align 8
  br label %56

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %32

56:                                               ; preds = %50, %32
  %57 = load %struct.Format*, %struct.Format** %2, align 8
  ret %struct.Format* %57
}

declare dso_local i32 @BUNDLE_FORMAT_MASK(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
