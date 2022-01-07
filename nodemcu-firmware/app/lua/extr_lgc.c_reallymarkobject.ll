; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_reallymarkobject.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_reallymarkobject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_29__, i32* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i32*, i32* }
%struct.TYPE_32__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_36__* }
%struct.TYPE_31__ = type { %struct.TYPE_36__* }
%struct.TYPE_28__ = type { %struct.TYPE_36__* }
%struct.TYPE_30__ = type { %struct.TYPE_36__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_34__*, %struct.TYPE_36__*)* @reallymarkobject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reallymarkobject(%struct.TYPE_34__* %0, %struct.TYPE_36__* %1) #0 {
  %3 = alloca %struct.TYPE_34__*, align 8
  %4 = alloca %struct.TYPE_36__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %3, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %4, align 8
  %7 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %7, i32 0, i32 0
  %9 = call i32 @gettt(i32* %8)
  %10 = icmp eq i32 %9, 133
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %12, i32 0, i32 0
  %14 = call i64 @isLFSobject(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  br label %123

17:                                               ; preds = %11, %2
  %18 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %19 = call i64 @iswhite(%struct.TYPE_36__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %23 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %24 = call i32 @isdead(%struct.TYPE_34__* %22, %struct.TYPE_36__* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %17
  %28 = phi i1 [ false, %17 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @lua_assert(i32 %29)
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %32 = call i32 @white2gray(%struct.TYPE_36__* %31)
  %33 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %33, i32 0, i32 0
  %35 = call i32 @gettt(i32* %34)
  switch i32 %35, label %121 [
    i32 132, label %36
    i32 128, label %37
    i32 129, label %61
    i32 134, label %80
    i32 131, label %91
    i32 130, label %101
    i32 133, label %111
  ]

36:                                               ; preds = %27
  br label %123

37:                                               ; preds = %27
  %38 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %39 = call %struct.TYPE_27__* @gco2u(%struct.TYPE_36__* %38)
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %5, align 8
  %42 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %43 = call i32 @gray2black(%struct.TYPE_36__* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %37
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @luaR_isrotable(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @markobject(%struct.TYPE_34__* %51, i32* %52)
  br label %54

54:                                               ; preds = %50, %46, %37
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %57 = call %struct.TYPE_27__* @gco2u(%struct.TYPE_36__* %56)
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @markobject(%struct.TYPE_34__* %55, i32* %59)
  br label %123

61:                                               ; preds = %27
  %62 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %63 = call %struct.TYPE_35__* @gco2uv(%struct.TYPE_36__* %62)
  store %struct.TYPE_35__* %63, %struct.TYPE_35__** %6, align 8
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @markvalue(%struct.TYPE_34__* %64, i32* %67)
  %69 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_35__*, %struct.TYPE_35__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = icmp eq i32* %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %61
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %78 = call i32 @gray2black(%struct.TYPE_36__* %77)
  br label %79

79:                                               ; preds = %76, %61
  br label %123

80:                                               ; preds = %27
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_36__*, %struct.TYPE_36__** %82, align 8
  %84 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %85 = call %struct.TYPE_32__* @gco2cl(%struct.TYPE_36__* %84)
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 0, i32 0
  store %struct.TYPE_36__* %83, %struct.TYPE_36__** %87, align 8
  %88 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i32 0, i32 0
  store %struct.TYPE_36__* %88, %struct.TYPE_36__** %90, align 8
  br label %123

91:                                               ; preds = %27
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_36__*, %struct.TYPE_36__** %93, align 8
  %95 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %96 = call %struct.TYPE_31__* @gco2h(%struct.TYPE_36__* %95)
  %97 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %96, i32 0, i32 0
  store %struct.TYPE_36__* %94, %struct.TYPE_36__** %97, align 8
  %98 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %99 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %99, i32 0, i32 0
  store %struct.TYPE_36__* %98, %struct.TYPE_36__** %100, align 8
  br label %123

101:                                              ; preds = %27
  %102 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_36__*, %struct.TYPE_36__** %103, align 8
  %105 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %106 = call %struct.TYPE_28__* @gco2th(%struct.TYPE_36__* %105)
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  store %struct.TYPE_36__* %104, %struct.TYPE_36__** %107, align 8
  %108 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %109 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %109, i32 0, i32 0
  store %struct.TYPE_36__* %108, %struct.TYPE_36__** %110, align 8
  br label %123

111:                                              ; preds = %27
  %112 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_36__*, %struct.TYPE_36__** %113, align 8
  %115 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %116 = call %struct.TYPE_30__* @gco2p(%struct.TYPE_36__* %115)
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 0
  store %struct.TYPE_36__* %114, %struct.TYPE_36__** %117, align 8
  %118 = load %struct.TYPE_36__*, %struct.TYPE_36__** %4, align 8
  %119 = load %struct.TYPE_34__*, %struct.TYPE_34__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %119, i32 0, i32 0
  store %struct.TYPE_36__* %118, %struct.TYPE_36__** %120, align 8
  br label %123

121:                                              ; preds = %27
  %122 = call i32 @lua_assert(i32 0)
  br label %123

123:                                              ; preds = %16, %36, %54, %79, %121, %111, %101, %91, %80
  ret void
}

declare dso_local i32 @gettt(i32*) #1

declare dso_local i64 @isLFSobject(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @iswhite(%struct.TYPE_36__*) #1

declare dso_local i32 @isdead(%struct.TYPE_34__*, %struct.TYPE_36__*) #1

declare dso_local i32 @white2gray(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_27__* @gco2u(%struct.TYPE_36__*) #1

declare dso_local i32 @gray2black(%struct.TYPE_36__*) #1

declare dso_local i32 @luaR_isrotable(i32*) #1

declare dso_local i32 @markobject(%struct.TYPE_34__*, i32*) #1

declare dso_local %struct.TYPE_35__* @gco2uv(%struct.TYPE_36__*) #1

declare dso_local i32 @markvalue(%struct.TYPE_34__*, i32*) #1

declare dso_local %struct.TYPE_32__* @gco2cl(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_31__* @gco2h(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_28__* @gco2th(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_30__* @gco2p(%struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
