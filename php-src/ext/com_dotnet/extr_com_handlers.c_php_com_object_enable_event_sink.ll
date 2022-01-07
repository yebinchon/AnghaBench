; ModuleID = '/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_handlers.c_php_com_object_enable_event_sink.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/com_dotnet/extr_com_handlers.c_php_com_object_enable_event_sink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32 }

@IID_IConnectionPointContainer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @php_com_object_enable_event_sink(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = call i32 @V_DISPATCH(i32* %13)
  %15 = bitcast i32** %5 to i8**
  %16 = call i32 @IDispatch_QueryInterface(i32 %14, i32* @IID_IConnectionPointContainer, i8** %15)
  %17 = call i64 @SUCCEEDED(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %11
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = call i32 @IConnectionPointContainer_FindConnectionPoint(i32* %20, i32* %22, i32** %6)
  %24 = call i64 @SUCCEEDED(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @IConnectionPoint_Advise(i32* %30, i32* %34, i32* %36)
  br label %44

38:                                               ; preds = %26
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @IConnectionPoint_Unadvise(i32* %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %29
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @IConnectionPoint_Release(i32* %45)
  br label %47

47:                                               ; preds = %44, %19
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @IConnectionPointContainer_Release(i32* %48)
  br label %50

50:                                               ; preds = %47, %11
  br label %51

51:                                               ; preds = %50, %2
  ret void
}

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IDispatch_QueryInterface(i32, i32*, i8**) #1

declare dso_local i32 @V_DISPATCH(i32*) #1

declare dso_local i32 @IConnectionPointContainer_FindConnectionPoint(i32*, i32*, i32**) #1

declare dso_local i32 @IConnectionPoint_Advise(i32*, i32*, i32*) #1

declare dso_local i32 @IConnectionPoint_Unadvise(i32*, i32) #1

declare dso_local i32 @IConnectionPoint_Release(i32*) #1

declare dso_local i32 @IConnectionPointContainer_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
