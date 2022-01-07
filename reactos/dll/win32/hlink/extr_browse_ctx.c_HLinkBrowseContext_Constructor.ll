; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/hlink/extr_browse_ctx.c_HLinkBrowseContext_Constructor.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/hlink/extr_browse_ctx.c_HLinkBrowseContext_Constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"unkOut=%p riid=%s\0A\00", align 1
@CLASS_E_NOAGGREGATION = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@hlvt = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @HLinkBrowseContext_Constructor(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @debugstr_guid(i32 %10)
  %12 = call i32 @TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %9, i32 %11)
  %13 = load i8**, i8*** %7, align 8
  store i8* null, i8** %13, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @CLASS_E_NOAGGREGATION, align 4
  store i32 %17, i32* %4, align 4
  br label %39

18:                                               ; preds = %3
  %19 = call %struct.TYPE_5__* @heap_alloc_zero(i32 32)
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %8, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %18
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32* @hlvt, i32** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = call i32 @list_init(i32* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %36 = bitcast %struct.TYPE_5__* %35 to i8*
  %37 = load i8**, i8*** %7, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @S_OK, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %24, %22, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @TRACE(i8*, i32*, i32) #1

declare dso_local i32 @debugstr_guid(i32) #1

declare dso_local %struct.TYPE_5__* @heap_alloc_zero(i32) #1

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
