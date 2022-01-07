; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_parseOptionsAndPayload.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/coap/extr_coap.c_coap_parseOptionsAndPayload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i32 }
%struct.TYPE_5__ = type { i32 }

@COAP_ERR_OPTION_OVERRUNS_PACKET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coap_parseOptionsAndPayload(i32* %0, i64* %1, %struct.TYPE_6__* %2, %struct.TYPE_5__* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load i64*, i64** %12, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %20, i64 %24
  store i64* %25, i64** %16, align 8
  %26 = load i64*, i64** %12, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  store i64* %28, i64** %17, align 8
  %29 = load i64*, i64** %16, align 8
  %30 = load i64*, i64** %17, align 8
  %31 = icmp ugt i64* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @COAP_ERR_OPTION_OVERRUNS_PACKET, align 4
  store i32 %33, i32* %7, align 4
  br label %100

34:                                               ; preds = %6
  br label %35

35:                                               ; preds = %65, %34
  %36 = load i64, i64* %14, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load i64*, i64** %16, align 8
  %42 = load i64*, i64** %17, align 8
  %43 = icmp ult i64* %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i64*, i64** %16, align 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 255
  br label %48

48:                                               ; preds = %44, %40, %35
  %49 = phi i1 [ false, %40 ], [ false, %35 ], [ %47, %44 ]
  br i1 %49, label %50, label %68

50:                                               ; preds = %48
  %51 = load i32*, i32** %8, align 8
  %52 = load i64, i64* %14, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i64*, i64** %17, align 8
  %55 = load i64*, i64** %16, align 8
  %56 = ptrtoint i64* %54 to i64
  %57 = ptrtoint i64* %55 to i64
  %58 = sub i64 %56, %57
  %59 = sdiv exact i64 %58, 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @coap_parseOption(i32* %53, i32* %15, i64** %16, i32 %60)
  store i32 %61, i32* %18, align 4
  %62 = icmp ne i32 0, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* %18, align 4
  store i32 %64, i32* %7, align 4
  br label %100

65:                                               ; preds = %50
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %14, align 8
  br label %35

68:                                               ; preds = %48
  %69 = load i64, i64* %14, align 8
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i64*, i64** %16, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64*, i64** %17, align 8
  %74 = icmp ult i64* %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %68
  %76 = load i64*, i64** %16, align 8
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 255
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load i64*, i64** %16, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i64* %81, i64** %83, align 8
  %84 = load i64*, i64** %17, align 8
  %85 = load i64*, i64** %16, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = ptrtoint i64* %84 to i64
  %88 = ptrtoint i64* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 8
  %91 = trunc i64 %90 to i32
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  br label %99

94:                                               ; preds = %75, %68
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i64* null, i64** %96, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %94, %79
  store i32 0, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %63, %32
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local i32 @coap_parseOption(i32*, i32*, i64**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
