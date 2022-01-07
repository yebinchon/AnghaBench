; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageManagerDumpSpans.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageManagerDumpSpans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c" %zu(%zu)\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32, i32)* @FreePageManagerDumpSpans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FreePageManagerDumpSpans(i32* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i8* @fpm_segment_base(i32* %10)
  store i8* %11, i8** %9, align 8
  br label %12

12:                                               ; preds = %36, %4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = call i32 @fpm_pointer_to_page(i8* %23, %struct.TYPE_5__* %24)
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  br label %36

30:                                               ; preds = %15
  %31 = load i32, i32* %8, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = call i32 @fpm_pointer_to_page(i8* %32, %struct.TYPE_5__* %33)
  %35 = call i32 (i32, i8*, i32, ...) @appendStringInfo(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %21
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.TYPE_5__* @relptr_access(i8* %37, i32 %40)
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %6, align 8
  br label %12

42:                                               ; preds = %12
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @appendStringInfoChar(i32 %43, i8 signext 10)
  ret void
}

declare dso_local i8* @fpm_segment_base(i32*) #1

declare dso_local i32 @appendStringInfo(i32, i8*, i32, ...) #1

declare dso_local i32 @fpm_pointer_to_page(i8*, %struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @relptr_access(i8*, i32) #1

declare dso_local i32 @appendStringInfoChar(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
