; ModuleID = '/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_traversetable.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/opcache/jit/dynasm/extr_minilua.c_traversetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32*, i32, i64 }

@TM_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @traversetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traversetable(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @markobject(%struct.TYPE_11__* %16, i64 %19)
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @TM_MODE, align 4
  %27 = call i32* @gfasttm(%struct.TYPE_11__* %22, i64 %25, i32 %26)
  store i32* %27, i32** %9, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %79

30:                                               ; preds = %21
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @ttisstring(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %79

34:                                               ; preds = %30
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @svalue(i32* %35)
  %37 = call i32* @strchr(i32 %36, i8 signext 107)
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %7, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @svalue(i32* %40)
  %42 = call i32* @strchr(i32 %41, i8 signext 118)
  %43 = icmp ne i32* %42, null
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %47, %34
  %51 = call i32 @bitmask(i32 3)
  %52 = call i32 @bitmask(i32 4)
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* %7, align 4
  %60 = shl i32 %59, 3
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %61, 4
  %63 = or i32 %60, %62
  %64 = call i32 @cast_byte(i32 %63)
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = call i32 @obj2gco(%struct.TYPE_12__* %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %50, %47
  br label %79

79:                                               ; preds = %78, %30, %21
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %152

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %107, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %97, %89
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %6, align 4
  %96 = icmp ne i32 %94, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @markvalue(%struct.TYPE_11__* %98, i32* %104)
  br label %93

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %106, %86
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = call i32 @sizenode(%struct.TYPE_12__* %108)
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %142, %107
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %6, align 4
  %113 = icmp ne i32 %111, 0
  br i1 %113, label %114, label %143

114:                                              ; preds = %110
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32* @gnode(%struct.TYPE_12__* %115, i32 %116)
  store i32* %117, i32** %10, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = call i32* @gval(i32* %118)
  %120 = call i64 @ttisnil(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @removeentry(i32* %123)
  br label %142

125:                                              ; preds = %114
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = call i32* @gkey(i32* %130)
  %132 = call i32 @markvalue(%struct.TYPE_11__* %129, i32* %131)
  br label %133

133:                                              ; preds = %128, %125
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %141, label %136

136:                                              ; preds = %133
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = load i32*, i32** %10, align 8
  %139 = call i32* @gval(i32* %138)
  %140 = call i32 @markvalue(%struct.TYPE_11__* %137, i32* %139)
  br label %141

141:                                              ; preds = %136, %133
  br label %142

142:                                              ; preds = %141, %122
  br label %110

143:                                              ; preds = %110
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br label %149

149:                                              ; preds = %146, %143
  %150 = phi i1 [ true, %143 ], [ %148, %146 ]
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %149, %85
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @markobject(%struct.TYPE_11__*, i64) #1

declare dso_local i32* @gfasttm(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i64 @ttisstring(i32*) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @svalue(i32*) #1

declare dso_local i32 @bitmask(i32) #1

declare dso_local i32 @cast_byte(i32) #1

declare dso_local i32 @obj2gco(%struct.TYPE_12__*) #1

declare dso_local i32 @markvalue(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @sizenode(%struct.TYPE_12__*) #1

declare dso_local i32* @gnode(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32 @removeentry(i32*) #1

declare dso_local i32* @gkey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
