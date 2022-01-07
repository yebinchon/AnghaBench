; ModuleID = '/home/carl/AnghaBench/memcached/extr_logger.c__logger_log_item_store.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_logger.c__logger_log_item_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }
%struct.logentry_item_store = type { i32, i32, i32, i32, i32, i64, i32 }

@current_time = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, i32, i8*, i32, i64, i32, i32)* @_logger_log_item_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_logger_log_item_store(%struct.TYPE_3__* %0, i32 %1, i32 %2, i8* %3, i32 %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.logentry_item_store*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.logentry_item_store*
  store %struct.logentry_item_store* %21, %struct.logentry_item_store** %17, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.logentry_item_store*, %struct.logentry_item_store** %17, align 8
  %24 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.logentry_item_store*, %struct.logentry_item_store** %17, align 8
  %27 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load %struct.logentry_item_store*, %struct.logentry_item_store** %17, align 8
  %30 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.logentry_item_store*, %struct.logentry_item_store** %17, align 8
  %33 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load i64, i64* %14, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* @current_time, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load %struct.logentry_item_store*, %struct.logentry_item_store** %17, align 8
  %41 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %40, i32 0, i32 5
  store i64 %39, i64* %41, align 8
  br label %45

42:                                               ; preds = %8
  %43 = load %struct.logentry_item_store*, %struct.logentry_item_store** %17, align 8
  %44 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.logentry_item_store*, %struct.logentry_item_store** %17, align 8
  %47 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @memcpy(i32 %48, i8* %49, i32 %50)
  %52 = load i32, i32* %16, align 4
  %53 = load %struct.logentry_item_store*, %struct.logentry_item_store** %17, align 8
  %54 = getelementptr inbounds %struct.logentry_item_store, %struct.logentry_item_store* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 40, %56
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
