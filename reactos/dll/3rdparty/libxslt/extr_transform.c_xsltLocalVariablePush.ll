; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltLocalVariablePush.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libxslt/extr_transform.c_xsltLocalVariablePush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }

@xmlGenericErrorContext = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"malloc failed !\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"realloc failed !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xsltLocalVariablePush(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 10, i32* %14, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @xmlMalloc(i32 %20)
  %22 = inttoptr i64 %21 to %struct.TYPE_7__**
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  store %struct.TYPE_7__** %22, %struct.TYPE_7__*** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %26, align 8
  %28 = icmp eq %struct.TYPE_7__** %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %12
  %30 = load i32, i32* @xmlGenericErrorContext, align 4
  %31 = call i32 @xmlGenericError(i32 %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %84

32:                                               ; preds = %12
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %33
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %44, 2
  store i32 %45, i32* %43, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 8
  %54 = trunc i64 %53 to i32
  %55 = call i64 @xmlRealloc(%struct.TYPE_7__** %48, i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_7__**
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store %struct.TYPE_7__** %56, %struct.TYPE_7__*** %58, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %60, align 8
  %62 = icmp eq %struct.TYPE_7__** %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %41
  %64 = load i32, i32* @xmlGenericErrorContext, align 4
  %65 = call i32 @xmlGenericError(i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %84

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66, %33
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %70, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %71, i64 %76
  store %struct.TYPE_7__* %68, %struct.TYPE_7__** %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %80, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %67, %63, %29
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i64 @xmlMalloc(i32) #1

declare dso_local i32 @xmlGenericError(i32, i8*) #1

declare dso_local i64 @xmlRealloc(%struct.TYPE_7__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
