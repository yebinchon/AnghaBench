; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_reallymarkobject.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_reallymarkobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_31__, i32* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_25__ = type { i32*, i32* }
%struct.TYPE_30__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { %struct.TYPE_35__* }
%struct.TYPE_29__ = type { %struct.TYPE_35__* }
%struct.TYPE_26__ = type { %struct.TYPE_35__* }
%struct.TYPE_27__ = type { %struct.TYPE_35__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_33__*, %struct.TYPE_35__*)* @reallymarkobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reallymarkobject(%struct.TYPE_33__* %0, %struct.TYPE_35__* %1) #0 {
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %4, align 8
  %7 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %8 = call i32 @white2gray(%struct.TYPE_35__* %7)
  %9 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %94 [
    i32 4, label %13
    i32 7, label %14
    i32 10, label %34
    i32 6, label %53
    i32 5, label %64
    i32 8, label %74
    i32 9, label %84
  ]

13:                                               ; preds = %2
  br label %95

14:                                               ; preds = %2
  %15 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %16 = call %struct.TYPE_25__* @gco2u(%struct.TYPE_35__* %15)
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %5, align 8
  %19 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %20 = call i32 @gray2black(%struct.TYPE_35__* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @markobject(%struct.TYPE_33__* %24, i32* %25)
  br label %27

27:                                               ; preds = %23, %14
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %29 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %30 = call %struct.TYPE_25__* @gco2u(%struct.TYPE_35__* %29)
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @markobject(%struct.TYPE_33__* %28, i32* %32)
  br label %95

34:                                               ; preds = %2
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %36 = call %struct.TYPE_34__* @gco2uv(%struct.TYPE_35__* %35)
  store %struct.TYPE_34__* %36, %struct.TYPE_34__** %6, align 8
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @markvalue(%struct.TYPE_33__* %37, i32* %40)
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %46, i32 0, i32 0
  %48 = icmp eq i32* %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %34
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %51 = call i32 @gray2black(%struct.TYPE_35__* %50)
  br label %52

52:                                               ; preds = %49, %34
  br label %95

53:                                               ; preds = %2
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %55, align 8
  %57 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %58 = call %struct.TYPE_30__* @gco2cl(%struct.TYPE_35__* %57)
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 0
  store %struct.TYPE_35__* %56, %struct.TYPE_35__** %60, align 8
  %61 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %62 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %62, i32 0, i32 0
  store %struct.TYPE_35__* %61, %struct.TYPE_35__** %63, align 8
  br label %95

64:                                               ; preds = %2
  %65 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %66, align 8
  %68 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %69 = call %struct.TYPE_29__* @gco2h(%struct.TYPE_35__* %68)
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 0
  store %struct.TYPE_35__* %67, %struct.TYPE_35__** %70, align 8
  %71 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 0
  store %struct.TYPE_35__* %71, %struct.TYPE_35__** %73, align 8
  br label %95

74:                                               ; preds = %2
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_35__*, %struct.TYPE_35__** %76, align 8
  %78 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %79 = call %struct.TYPE_26__* @gco2th(%struct.TYPE_35__* %78)
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 0
  store %struct.TYPE_35__* %77, %struct.TYPE_35__** %80, align 8
  %81 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %82 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 0
  store %struct.TYPE_35__* %81, %struct.TYPE_35__** %83, align 8
  br label %95

84:                                               ; preds = %2
  %85 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_35__*, %struct.TYPE_35__** %86, align 8
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %89 = call %struct.TYPE_27__* @gco2p(%struct.TYPE_35__* %88)
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  store %struct.TYPE_35__* %87, %struct.TYPE_35__** %90, align 8
  %91 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 0
  store %struct.TYPE_35__* %91, %struct.TYPE_35__** %93, align 8
  br label %95

94:                                               ; preds = %2
  br label %95

95:                                               ; preds = %13, %27, %52, %94, %84, %74, %64, %53
  ret void
}

declare dso_local i32 @white2gray(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_25__* @gco2u(%struct.TYPE_35__*) #1

declare dso_local i32 @gray2black(%struct.TYPE_35__*) #1

declare dso_local i32 @markobject(%struct.TYPE_33__*, i32*) #1

declare dso_local %struct.TYPE_34__* @gco2uv(%struct.TYPE_35__*) #1

declare dso_local i32 @markvalue(%struct.TYPE_33__*, i32*) #1

declare dso_local %struct.TYPE_30__* @gco2cl(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_29__* @gco2h(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_26__* @gco2th(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_27__* @gco2p(%struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
