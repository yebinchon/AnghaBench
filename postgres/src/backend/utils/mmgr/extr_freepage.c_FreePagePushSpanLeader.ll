; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePagePushSpanLeader.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePagePushSpanLeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64, i32, i32, i32 }

@FPM_NUM_FREELISTS = common dso_local global i32 0, align 4
@FREE_PAGE_SPAN_LEADER_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64, i64)* @FreePagePushSpanLeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FreePagePushSpanLeader(%struct.TYPE_8__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = call i8* @fpm_segment_base(%struct.TYPE_8__* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* @FPM_NUM_FREELISTS, align 4
  %15 = call i64 @Min(i64 %13, i32 %14)
  %16 = sub i64 %15, 1
  store i64 %16, i64* %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_7__* @relptr_access(i8* %17, i32 %23)
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @fpm_page_to_pointer(i8* %25, i64 %26)
  %28 = inttoptr i64 %27 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %10, align 8
  %29 = load i32, i32* @FREE_PAGE_SPAN_LEADER_MAGIC, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = call i32 @relptr_store(i8* %35, i32 %38, %struct.TYPE_7__* %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @relptr_store(i8* %41, i32 %44, %struct.TYPE_7__* null)
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = icmp ne %struct.TYPE_7__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %3
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %54 = call i32 @relptr_store(i8* %49, i32 %52, %struct.TYPE_7__* %53)
  br label %55

55:                                               ; preds = %48, %3
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = call i32 @relptr_store(i8* %56, i32 %62, %struct.TYPE_7__* %63)
  ret void
}

declare dso_local i8* @fpm_segment_base(%struct.TYPE_8__*) #1

declare dso_local i64 @Min(i64, i32) #1

declare dso_local %struct.TYPE_7__* @relptr_access(i8*, i32) #1

declare dso_local i64 @fpm_page_to_pointer(i8*, i64) #1

declare dso_local i32 @relptr_store(i8*, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
