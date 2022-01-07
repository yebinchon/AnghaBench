; ModuleID = '/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_setorientation.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/3rdparty/libtiff/extr_tif_getimage.c_setorientation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FLIP_HORIZONTALLY = common dso_local global i32 0, align 4
@FLIP_VERTICALLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @setorientation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setorientation(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %163 [
    i32 129, label %7
    i32 132, label %7
    i32 128, label %46
    i32 130, label %46
    i32 134, label %85
    i32 131, label %85
    i32 135, label %124
    i32 133, label %124
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 128
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 130
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %7
  %18 = load i32, i32* @FLIP_HORIZONTALLY, align 4
  store i32 %18, i32* %2, align 4
  br label %164

19:                                               ; preds = %12
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 134
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 131
  br i1 %28, label %29, label %33

29:                                               ; preds = %24, %19
  %30 = load i32, i32* @FLIP_HORIZONTALLY, align 4
  %31 = load i32, i32* @FLIP_VERTICALLY, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %2, align 4
  br label %164

33:                                               ; preds = %24
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 135
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 133
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %33
  %44 = load i32, i32* @FLIP_VERTICALLY, align 4
  store i32 %44, i32* %2, align 4
  br label %164

45:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %164

46:                                               ; preds = %1, %1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 129
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 132
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %46
  %57 = load i32, i32* @FLIP_HORIZONTALLY, align 4
  store i32 %57, i32* %2, align 4
  br label %164

58:                                               ; preds = %51
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 134
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 131
  br i1 %67, label %68, label %70

68:                                               ; preds = %63, %58
  %69 = load i32, i32* @FLIP_VERTICALLY, align 4
  store i32 %69, i32* %2, align 4
  br label %164

70:                                               ; preds = %63
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 135
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 133
  br i1 %79, label %80, label %84

80:                                               ; preds = %75, %70
  %81 = load i32, i32* @FLIP_HORIZONTALLY, align 4
  %82 = load i32, i32* @FLIP_VERTICALLY, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %2, align 4
  br label %164

84:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %164

85:                                               ; preds = %1, %1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 129
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 132
  br i1 %94, label %95, label %99

95:                                               ; preds = %90, %85
  %96 = load i32, i32* @FLIP_HORIZONTALLY, align 4
  %97 = load i32, i32* @FLIP_VERTICALLY, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %2, align 4
  br label %164

99:                                               ; preds = %90
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 128
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 130
  br i1 %108, label %109, label %111

109:                                              ; preds = %104, %99
  %110 = load i32, i32* @FLIP_VERTICALLY, align 4
  store i32 %110, i32* %2, align 4
  br label %164

111:                                              ; preds = %104
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 135
  br i1 %115, label %121, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 133
  br i1 %120, label %121, label %123

121:                                              ; preds = %116, %111
  %122 = load i32, i32* @FLIP_HORIZONTALLY, align 4
  store i32 %122, i32* %2, align 4
  br label %164

123:                                              ; preds = %116
  store i32 0, i32* %2, align 4
  br label %164

124:                                              ; preds = %1, %1
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 129
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 132
  br i1 %133, label %134, label %136

134:                                              ; preds = %129, %124
  %135 = load i32, i32* @FLIP_VERTICALLY, align 4
  store i32 %135, i32* %2, align 4
  br label %164

136:                                              ; preds = %129
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 128
  br i1 %140, label %146, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 130
  br i1 %145, label %146, label %150

146:                                              ; preds = %141, %136
  %147 = load i32, i32* @FLIP_HORIZONTALLY, align 4
  %148 = load i32, i32* @FLIP_VERTICALLY, align 4
  %149 = or i32 %147, %148
  store i32 %149, i32* %2, align 4
  br label %164

150:                                              ; preds = %141
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 134
  br i1 %154, label %160, label %155

155:                                              ; preds = %150
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 131
  br i1 %159, label %160, label %162

160:                                              ; preds = %155, %150
  %161 = load i32, i32* @FLIP_HORIZONTALLY, align 4
  store i32 %161, i32* %2, align 4
  br label %164

162:                                              ; preds = %155
  store i32 0, i32* %2, align 4
  br label %164

163:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %164

164:                                              ; preds = %163, %162, %160, %146, %134, %123, %121, %109, %95, %84, %80, %68, %56, %45, %43, %29, %17
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
