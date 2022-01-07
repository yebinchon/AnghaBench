; ModuleID = '/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_queue.c_Q_Iter_Del.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/xmlrpc/libxmlrpc/extr_queue.c_Q_Iter_Del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, %struct.TYPE_8__*, i8* }

@False_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Q_Iter_Del(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = icmp ne %struct.TYPE_7__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %92

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %92

16:                                               ; preds = %12
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = icmp eq i32* %17, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %25 = call i8* @Q_PopHead(%struct.TYPE_7__* %24)
  store i8* %25, i8** %3, align 8
  br label %92

26:                                               ; preds = %16
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = icmp eq i32* %27, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = call i8* @Q_PopTail(%struct.TYPE_7__* %34)
  store i8* %35, i8** %3, align 8
  br label %92

36:                                               ; preds = %26
  %37 = load i32*, i32** %5, align 8
  %38 = bitcast i32* %37 to %struct.TYPE_8__*
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %7, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = bitcast i32* %41 to %struct.TYPE_8__*
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %8, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = bitcast i32* %45 to %struct.TYPE_8__*
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %6, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @efree(i32* %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = icmp ne %struct.TYPE_8__* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %36
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %56, align 8
  br label %57

57:                                               ; preds = %53, %36
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = bitcast i32* %61 to %struct.TYPE_8__*
  %63 = icmp eq %struct.TYPE_8__* %60, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %66 = icmp ne %struct.TYPE_8__* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %70, align 8
  br label %75

71:                                               ; preds = %64
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %74, align 8
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %57
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = icmp ne %struct.TYPE_8__* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %82, align 8
  br label %83

83:                                               ; preds = %79, %76
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* @False_, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i8*, i8** %6, align 8
  store i8* %91, i8** %3, align 8
  br label %92

92:                                               ; preds = %83, %33, %23, %15, %11
  %93 = load i8*, i8** %3, align 8
  ret i8* %93
}

declare dso_local i8* @Q_PopHead(%struct.TYPE_7__*) #1

declare dso_local i8* @Q_PopTail(%struct.TYPE_7__*) #1

declare dso_local i32 @efree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
