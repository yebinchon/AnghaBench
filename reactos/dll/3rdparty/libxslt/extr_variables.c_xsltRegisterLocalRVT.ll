; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltRegisterLocalRVT.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_variables.c_xsltRegisterLocalRVT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32*, i8*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }

@XSLT_RVT_LOCAL = common dso_local global i32 0, align 4
@XSLT_VAR_IN_SELECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsltRegisterLocalRVT(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %7 = icmp eq %struct.TYPE_7__* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %65

12:                                               ; preds = %8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  %15 = load i32, i32* @XSLT_RVT_LOCAL, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %42

22:                                               ; preds = %12
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = call %struct.TYPE_9__* @XSLT_TCTXT_VARIABLE(%struct.TYPE_7__* %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @XSLT_VAR_IN_SELECT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %32 = call %struct.TYPE_9__* @XSLT_TCTXT_VARIABLE(%struct.TYPE_7__* %31)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = bitcast %struct.TYPE_8__* %34 to i8*
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = call %struct.TYPE_9__* @XSLT_TCTXT_VARIABLE(%struct.TYPE_7__* %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %41, align 8
  store i32 0, i32* %3, align 4
  br label %65

42:                                               ; preds = %22, %12
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = bitcast %struct.TYPE_8__* %45 to i8*
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = bitcast %struct.TYPE_8__* %54 to i8*
  %56 = bitcast i8* %55 to i32*
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32* %56, i32** %60, align 8
  br label %61

61:                                               ; preds = %53, %42
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %61, %30, %11
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_9__* @XSLT_TCTXT_VARIABLE(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
