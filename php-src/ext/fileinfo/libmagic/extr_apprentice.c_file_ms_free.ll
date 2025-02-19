; ModuleID = '/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_apprentice.c_file_ms_free.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/fileinfo/libmagic/extr_apprentice.c_file_ms_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { %struct.TYPE_3__, %struct.TYPE_4__, i32* }
%struct.TYPE_3__ = type { %struct.magic_set* }
%struct.TYPE_4__ = type { %struct.magic_set*, %struct.magic_set* }

@MAGIC_SETS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @file_ms_free(%struct.magic_set* %0) #0 {
  %2 = alloca %struct.magic_set*, align 8
  %3 = alloca i64, align 8
  store %struct.magic_set* %0, %struct.magic_set** %2, align 8
  %4 = load %struct.magic_set*, %struct.magic_set** %2, align 8
  %5 = icmp eq %struct.magic_set* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %62

7:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %20, %7
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @MAGIC_SETS, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load %struct.magic_set*, %struct.magic_set** %2, align 8
  %14 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlist_free(i32 %18)
  br label %20

20:                                               ; preds = %12
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %3, align 8
  br label %8

23:                                               ; preds = %8
  %24 = load %struct.magic_set*, %struct.magic_set** %2, align 8
  %25 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.magic_set*, %struct.magic_set** %26, align 8
  %28 = icmp ne %struct.magic_set* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.magic_set*, %struct.magic_set** %2, align 8
  %31 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.magic_set*, %struct.magic_set** %32, align 8
  %34 = call i32 @efree(%struct.magic_set* %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = load %struct.magic_set*, %struct.magic_set** %2, align 8
  %37 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.magic_set*, %struct.magic_set** %38, align 8
  %40 = icmp ne %struct.magic_set* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.magic_set*, %struct.magic_set** %2, align 8
  %43 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.magic_set*, %struct.magic_set** %44, align 8
  %46 = call i32 @efree(%struct.magic_set* %45)
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.magic_set*, %struct.magic_set** %2, align 8
  %49 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.magic_set*, %struct.magic_set** %50, align 8
  %52 = icmp ne %struct.magic_set* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.magic_set*, %struct.magic_set** %2, align 8
  %55 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.magic_set*, %struct.magic_set** %56, align 8
  %58 = call i32 @efree(%struct.magic_set* %57)
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.magic_set*, %struct.magic_set** %2, align 8
  %61 = call i32 @efree(%struct.magic_set* %60)
  br label %62

62:                                               ; preds = %59, %6
  ret void
}

declare dso_local i32 @mlist_free(i32) #1

declare dso_local i32 @efree(%struct.magic_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
