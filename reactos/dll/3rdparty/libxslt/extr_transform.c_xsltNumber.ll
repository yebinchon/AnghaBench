; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltNumber.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_19__, i32*, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_14__ = type { i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"xsl:number : compilation failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsltNumber(%struct.TYPE_15__* %0, %struct.TYPE_18__* %1, %struct.TYPE_18__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %9, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %17 = icmp eq %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %21 = call i32 @xsltTransformError(%struct.TYPE_15__* %19, i32* null, %struct.TYPE_18__* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %76

22:                                               ; preds = %4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = icmp eq %struct.TYPE_15__* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %27 = icmp eq %struct.TYPE_18__* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %30 = icmp eq %struct.TYPE_18__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %33 = icmp eq %struct.TYPE_16__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %28, %25, %22
  br label %76

35:                                               ; preds = %31
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %45, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %10, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %12, align 4
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %11, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = call i32 @xsltNumberFormat(%struct.TYPE_15__* %65, %struct.TYPE_19__* %67, %struct.TYPE_18__* %68)
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  br label %76

76:                                               ; preds = %35, %34, %18
  ret void
}

declare dso_local i32 @xsltTransformError(%struct.TYPE_15__*, i32*, %struct.TYPE_18__*, i8*) #1

declare dso_local i32 @xsltNumberFormat(%struct.TYPE_15__*, %struct.TYPE_19__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
